import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

void main() {
  group('MistralAIClient listModels tests', () {
    test('given client when listModels is called then return ListModelsResult',
        () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
          responseBody: SampleResponseData.listModels);
      final mistralClient = MistralAIClient(
        apiKey: 'apiKey',
        baseUrl: 'baseUrl',
        timeout: const Duration(milliseconds: 500),
        client: mockHttpClient,
      );

      // when
      final result = await mistralClient.listModels();

      // then
      expect(result, isA<ListModelsResult>());
    });

    test(
        'given API returns wrong JSON when listModels is called '
        'then return MistralAIClientException', () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
          responseBody: SampleResponseData.listModelsInvalidResponse);
      final mistralClient = MistralAIClient(
        apiKey: 'apiKey',
        baseUrl: 'baseUrl',
        timeout: const Duration(milliseconds: 500),
        client: mockHttpClient,
      );

      // when/then
      expect(
        mistralClient.listModels,
        throwsA(isA<MistralAIClientException>()),
      );
    });

    test(
        'given API returns malformed JSON when listModels is called '
        'then return MistralAIClientException with FormatException inside',
        () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
          responseBody: SampleResponseData.listModelsMalformed);
      final mistralClient = MistralAIClient(
        apiKey: 'apiKey',
        baseUrl: 'baseUrl',
        timeout: const Duration(milliseconds: 500),
        client: mockHttpClient,
      );

      // when/then
      expect(
        mistralClient.listModels,
        throwsA(
          isA<MistralAIClientException>().having(
            (p0) => p0.message,
            'should contain FormatException',
            contains('FormatException'),
          ),
        ),
      );
    });

    test(
        'given API times out when listModels is called '
        'then return MistralAIClientException with Timeout in message',
        () async {
      // given
      const mockHttpClient = FakeDelayedHttpClient(
        delay: Duration(milliseconds: 10),
      );
      final mistralClient = MistralAIClient(
        apiKey: 'apiKey',
        baseUrl: 'baseUrl',
        timeout: const Duration(milliseconds: 1),
        client: mockHttpClient,
      );

      // when/then
      expect(
        mistralClient.listModels,
        throwsA(
          isA<MistralAIClientException>().having(
            (p0) => p0.message,
            'should contain timeout in message',
            contains('Timeout'),
          ),
        ),
      );
    });

    test(
        'given API key when listModels is called '
        'then authentification header should be set', () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: SampleResponseData.listModels,
      );
      const apiKey = 'apiKey';
      final mistralClient = MistralAIClient(
        apiKey: apiKey,
        baseUrl: 'baseUrl',
        client: mockHttpClient,
      );

      // when
      await mistralClient.listModels();

      // then
      final headers = mockHttpClient.request.headers;
      const authHeaderName = 'Authorization';
      expect(
        headers,
        contains(authHeaderName),
        reason:
            'should contain $authHeaderName header '
            'but was ${mockHttpClient.request.headers}',
      );
      expect(headers[authHeaderName], contains('Bearer $apiKey'));
    });

    // test for MistralAIClientException if response status code is 500
    // test if urls are from url factory


  });
}

class FakeHttpJsonResponseClient with http.BaseClient {
  FakeHttpJsonResponseClient({
    this.responseBody = '{}',
    this.httpStatusCode = 200,
  });

  final String responseBody;
  final int httpStatusCode;

  http.BaseRequest get request => _request;

  late http.BaseRequest _request;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    _request = request;
    return Future.value(
      http.StreamedResponse(
        http.ByteStream.fromBytes(
          utf8.encode(responseBody),
        ),
        httpStatusCode,
        headers: {
          'content-type': 'application/json',
        },
        request: request,
      ),
    );
  }
}

class FakeDelayedHttpClient with http.BaseClient {
  const FakeDelayedHttpClient({
    this.delay = const Duration(milliseconds: 3),
  });

  final Duration delay;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) =>
      Future.delayed(
        delay,
        () => http.StreamedResponse(
          http.ByteStream.fromBytes(
            utf8.encode('{}'),
          ),
          200,
          headers: {
            'content-type': 'application/json',
          },
          request: request,
        ),
      );
}

class SampleResponseData {
  static const String listModels = '''
 {
  "object": "string",
  "data": [
    {
      "id": "string",
      "object": "string",
      "created": 0,
      "owned_by": "string"
    }
  ]
}
  ''';

  // no 'id' field in the response
  static const String listModelsInvalidResponse = '''
 {
  "object": "string",
  "data": [
    {
      "object": "string",
      "created": 0,
      "owned_by": "string"
    }
  ]
}
  ''';

  // missing '[' in the response
  static const String listModelsMalformed = '''
 {
  "object": "string",
  "data":
    {
      "id": "string",
      "object": "string",
      "created": 0,
      "owned_by": "string"
    }
  ]
}
  ''';
}
