import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  group('MistralAIClient listModels tests', () {
    test('given client when listModels is called then return ListModelsResult',
        () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: _SampleListModelsResponseData.listModels,
      );
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
        responseBody: _SampleListModelsResponseData.listModelsInvalidResponse,
      );
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
        responseBody: _SampleListModelsResponseData.listModelsMalformed,
      );
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
        responseBody: _SampleListModelsResponseData.listModels,
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
        reason: 'should contain $authHeaderName header '
            'but was ${mockHttpClient.request.headers}',
      );
      expect(headers[authHeaderName], contains('Bearer $apiKey'));
    });

    test(
      'given API request has 500 status code  when listModels is called '
      'then return MistralAIClientException',
      () {
        // given
        final mockHttpClient = FakeHttpJsonResponseClient(
          responseBody: _SampleListModelsResponseData.listModels,
          httpStatusCode: 500,
        );
        final mistralClient = MistralAIClient(
          apiKey: 'apiKey',
          baseUrl: 'baseUrl',
          client: mockHttpClient,
        );

        // when/then
        expect(
          mistralClient.listModels,
          throwsA(isA<MistralAIClientException>()),
        );
      },
    );

    test(
      'given default url factory when list models is called '
      'then request url should be from url factory',
      () async {
        // given
        final mockHttpClient = FakeHttpJsonResponseClient(
          responseBody: _SampleListModelsResponseData.listModels,
        );
        const baseUrl = 'baseUrl';
        final mistralClient = MistralAIClient(
          apiKey: 'apiKey',
          baseUrl: baseUrl,
          client: mockHttpClient,
        );

        // when
        await mistralClient.listModels();

        // then
        final requestUrl = mockHttpClient.request.url;
        expect(
          requestUrl,
          equals(Uri.parse('$baseUrl${MistralAPIEndpoints.listModels}')),
        );
      },
    );
  });
}

class _SampleListModelsResponseData {
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
