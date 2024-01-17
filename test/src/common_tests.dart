import 'package:http/http.dart' as http;
import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'fakes.dart';

MistralAIClient _prepareMistralClient({
  required String? apiJsonResponseBody,
  http.Client? httpClient,
}) {
  if (apiJsonResponseBody == null && httpClient == null) {
    throw Exception('apiJsonResponseBody or httpClient not provided');
  }
  if (apiJsonResponseBody != null && httpClient != null) {
    throw Exception(
        'only apiJsonResponseBody or only httpClient must not be null');
  }
  return MistralAIClient(
    apiKey: 'apiKey',
    baseUrl: 'baseUrl',
    client: httpClient ??
        FakeHttpJsonResponseClient(responseBody: apiJsonResponseBody!),
    timeout: const Duration(milliseconds: 500),
  );
}

// version of test where we expect result to be returned
// resultMatcher should check for result, most likely using isA
dynamic _baseMistalAIClientRequestResultTest<T>({
  required Future<T> Function(MistralAIClient client) clientRequest,
  required Matcher resultMatcher,
  required String? apiJsonResponseBody,
  http.Client? httpClient,
}) async {
  // given
  final mistralClient = _prepareMistralClient(
    apiJsonResponseBody: apiJsonResponseBody,
    httpClient: httpClient,
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
}) async {
  // given
  final mistralClient = _prepareMistralClient(
    apiJsonResponseBody: apiJsonResponseBody,
    httpClient: httpClient,
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
  required String apiJsonResponseBody,
  required Future<T> Function(MistralAIClient client) clientRequest,
}) async =>
    await _baseMistalAIClientRequestExceptionTest(
      apiJsonResponseBody: apiJsonResponseBody,
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
