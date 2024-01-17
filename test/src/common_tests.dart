import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'fakes.dart';

/// Tests that given API response is properly parsed to [T] type
///
/// [apiJsonResponseBody] - json string representing API response
///
/// [clientRequest] - function that calls API method
dynamic testResponseType<T>({
  required String apiJsonResponseBody,
  required Future<T> Function(MistralAIClient client) clientRequest,
}) async {
  // given
  final mockHttpClient = FakeHttpJsonResponseClient(
    responseBody: apiJsonResponseBody,
  );
  final mistralClient = MistralAIClient(
    apiKey: 'apiKey',
    baseUrl: 'baseUrl',
    timeout: const Duration(milliseconds: 500),
    client: mockHttpClient,
  );

  // when
  final result = await clientRequest(mistralClient);

  // then
  expect(result, isA<T>());
}
