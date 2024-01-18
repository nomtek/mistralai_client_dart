// ignore: lines_longer_than_80_chars
// ignore: lines_longer_than_80_chars
import 'package:http/http.dart' as http;
import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'fakes.dart';

MistralAIClient _prepareMistralClient({
  required String? apiJsonResponseBody,
  http.Client? httpClient,
  String apiKey = 'apiKey',
  String baseUrl = 'baseUrl',
  Duration timeout = const Duration(milliseconds: 500),
}) {
  if (apiJsonResponseBody == null && httpClient == null) {
    throw Exception('apiJsonResponseBody or httpClient not provided');
  }
  if (apiJsonResponseBody != null && httpClient != null) {
    throw Exception(
      'only apiJsonResponseBody or only httpClient must not be null',
    );
  }
  return MistralAIClient(
    apiKey: apiKey,
    baseUrl: baseUrl,
    client: httpClient ??
        FakeHttpJsonResponseClient(responseBody: apiJsonResponseBody!),
    timeout: timeout,
  );
}

// ignore: lines_longer_than_80_chars
// TODO(mgruchala): we use this function in one test only, maybe we can remove it?
// version of test where we expect result to be returned
// resultMatcher should check for result, most likely using isA
dynamic _baseMistalAIClientRequestResultTest<T>({
  required Future<T> Function(MistralAIClient client) clientRequest,
  required Matcher resultMatcher,
  required String? apiJsonResponseBody,
  http.Client? httpClient,
  String apiKey = 'apiKey',
  String baseUrl = 'baseUrl',
  Duration timeout = const Duration(milliseconds: 500),
}) async {
  // given
  final mistralClient = _prepareMistralClient(
    apiJsonResponseBody: apiJsonResponseBody,
    httpClient: httpClient,
    apiKey: apiKey,
    baseUrl: baseUrl,
    timeout: timeout,
  );

  // when
  final result = await clientRequest(mistralClient);

  // then
  expect(result, resultMatcher);
}

// version of test where we expect exception to be thrown
// resultMatcher should check for exception, most likely using throwsA
dynamic _baseMistalAIClientRequestExceptionTest<T>({
  required Future<T> Function(MistralAIClient client) clientRequest,
  required Matcher resultMatcher,
  required String? apiJsonResponseBody,
  http.Client? httpClient,
  String apiKey = 'apiKey',
  String baseUrl = 'baseUrl',
  Duration timeout = const Duration(milliseconds: 500),
}) async {
  // given
  final mistralClient = _prepareMistralClient(
    apiJsonResponseBody: apiJsonResponseBody,
    httpClient: httpClient,
    apiKey: apiKey,
    baseUrl: baseUrl,
    timeout: timeout,
  );

  // when/then
  expect(() => clientRequest(mistralClient), resultMatcher);
}

/// Tests that given API response is properly parsed to [T] type
///
/// [apiJsonResponseBody] - json string representing API response
///
/// [clientRequest] - function that calls API method
dynamic testResponseType<T>({
  required String apiJsonResponseBody,
  required Future<T> Function(MistralAIClient client) clientRequest,
}) async =>
    await _baseMistalAIClientRequestResultTest(
      apiJsonResponseBody: apiJsonResponseBody,
      clientRequest: clientRequest,
      resultMatcher: isA<T>(),
    );

/// Tests that Exception is thrown when API response is invalid
///
/// [apiJsonResponseBody] - json string representing API response
///
/// [clientRequest] - function that calls API method
dynamic testIfExceptionIsThrown<T>({
  required String? apiJsonResponseBody,
  required Future<T> Function(MistralAIClient client) clientRequest,
  http.Client? httpClient,
}) async =>
    await _baseMistalAIClientRequestExceptionTest(
      apiJsonResponseBody: apiJsonResponseBody,
      httpClient: httpClient,
      clientRequest: clientRequest,
      resultMatcher: throwsA(
        isA<MistralAIClientException>(),
      ),
    );

/// Tests that FormatException is thrown when API response is malformed
///
/// [apiJsonResponseBody] - json string representing API response
///
/// [clientRequest] - function that calls API method
dynamic testIfFormatExceptionIsThrown<T>({
  required String apiJsonResponseBody,
  required Future<T> Function(MistralAIClient client) clientRequest,
}) async =>
    await _baseMistalAIClientRequestExceptionTest(
      apiJsonResponseBody: apiJsonResponseBody,
      clientRequest: clientRequest,
      resultMatcher: throwsA(
        isA<MistralAIClientException>().having(
          (exception) => exception.message,
          'should contain FormatException',
          contains('FormatException'),
        ),
      ),
    );

/// Tests that TimeoutException is thrown when API request times out
///
/// [clientRequest] - function that calls API method
dynamic testIfTimeoutExceptionIsThrown<T>({
  required Future<T> Function(MistralAIClient client) clientRequest,
}) async =>
    await _baseMistalAIClientRequestExceptionTest(
      apiJsonResponseBody: null,
      httpClient: const FakeDelayedHttpClient(),
      clientRequest: clientRequest,
      timeout: const Duration(milliseconds: 1),
      resultMatcher: throwsA(
        isA<MistralAIClientException>().having(
          (p0) => p0.message,
          'should contain timeout in message',
          contains('Timeout'),
        ),
      ),
    );

/// Tests that API key is set in request header
///
/// [apiJsonResponseBody] - json string representing API response
///
/// [clientRequest] - function that calls API method
dynamic testIfAuthenricationHeaderIsSet<T>({
  required String apiJsonResponseBody,
  required Future<T> Function(MistralAIClient client) clientRequest,
}) async {
  // given
  final fakeClient = FakeHttpJsonResponseClient(
    responseBody: apiJsonResponseBody,
  );

  final mistralClinet = _prepareMistralClient(
    apiJsonResponseBody: null,
    httpClient: fakeClient,
  );

  // when
  await clientRequest(mistralClinet);

  // then
  final headers = fakeClient.request.headers;
  const authHeaderName = 'Authorization';
  expect(
    headers,
    contains(authHeaderName),
    reason: 'should contain $authHeaderName header '
        'with Mistral API key',
  );
  expect(headers[authHeaderName], contains('Bearer ${mistralClinet.apiKey}'));
}

/// Tests that request url is correct
///
/// [apiJsonResponseBody] - json string representing API response
///
/// [clientRequest] - function that calls API method
///
/// [requestEndpoint] - endpoint that should be called
dynamic testIfRequestUrlIsCorrect<T>({
  required String apiJsonResponseBody,
  required Future<T> Function(MistralAIClient client) clientRequest,
  required String requestEndpoint,
}) async {
  // given
  final fakeClient = FakeHttpJsonResponseClient(
    responseBody: apiJsonResponseBody,
  );

  final mistralClinet = _prepareMistralClient(
    apiJsonResponseBody: null,
    httpClient: fakeClient,
  );

  // when
  await clientRequest(mistralClinet);

  // then
  final requestUrl = fakeClient.request.url;
  expect(
    requestUrl,
    equals(
      Uri.parse('${mistralClinet.baseUrl}$requestEndpoint'),
    ),
  );
}

/// Tests that request body params are correct
///
/// [apiJsonResponseBody] - json string representing API response
///
/// [clientRequest] - function that calls API method
///
/// [bodyParams] - body params that should be sent
dynamic testIfProperBodyParamsAreSent<T>({
  required String apiJsonResponseBody,
  required Future<T> Function(
    MistralAIClient client,
    Map<String, dynamic> bodyParams,
  ) clientRequest,
  required Map<String, dynamic> bodyParams,
}) async {
  // given
  final fakeClient = FakeHttpJsonResponseClient(
    responseBody: apiJsonResponseBody,
  );

  final mistralClinet = _prepareMistralClient(
    apiJsonResponseBody: null,
    httpClient: fakeClient,
  );

  // when
  await clientRequest(mistralClinet, bodyParams);

  // then
  expect(fakeClient.requestBody, equals(bodyParams));
}
