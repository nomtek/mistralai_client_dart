import 'dart:convert';

import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'common_tests.dart';
import 'fakes.dart';

void main() {
  group('MistralAIClient embeddings test', () {
    test(
        'given valid response '
        'when embeddings is called then return EmbeddingsResult', () {
      testResponseType<EmbeddingsResult>(
        apiJsonResponseBody: _SampleEmbeddingsData.embeddingsResponse,
        clientRequest: (client) => client.embeddings(embeddingParamsOf()),
      );
    });

    test(
      'given embeddings params as JSON when embeddings is called '
      'then proper request body is sent',
      () async {
        // given
        final mockHttpClient = FakeHttpJsonResponseClient(
          responseBody: _SampleEmbeddingsData.embeddingsResponse,
        );
        final mistralClient = MistralAIClient(
          apiKey: 'apiKey',
          baseUrl: 'baseUrl',
          timeout: const Duration(milliseconds: 500),
          client: mockHttpClient,
        );
        final embeddingJsonParams =
            jsonDecode(_SampleEmbeddingsData.embeddingsParams)
                as Map<String, dynamic>;
        final embeddingParams = EmbeddingParams.fromJson(embeddingJsonParams);

        // when
        await mistralClient.embeddings(embeddingParams);

        //then
        expect(mockHttpClient.requestBody, embeddingJsonParams);
      },
    );

    test(
        'given API returns wrong JSON when embeddings is called '
        'then return MistralAIClientException', () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: _SampleEmbeddingsData.embeddingsInvalidResponse,
      );
      final mistralClient = MistralAIClient(
        apiKey: 'apiKey',
        baseUrl: 'baseUrl',
        timeout: const Duration(milliseconds: 500),
        client: mockHttpClient,
      );

      // when/then
      expect(
        mistralClient.embeddings(
          EmbeddingParams.fromJson(
            jsonDecode(_SampleEmbeddingsData.embeddingsParams)
                as Map<String, dynamic>,
          ),
        ),
        throwsA(isA<MistralAIClientException>()),
      );
    });

    test(
        'given API returns malformed JSON when embeddings is called '
        'then return MistralAIClientException with FormatException inside',
        () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: _SampleEmbeddingsData.embeddingsMalformeddResponse,
      );
      final mistralClient = MistralAIClient(
        apiKey: 'apiKey',
        baseUrl: 'baseUrl',
        timeout: const Duration(milliseconds: 500),
        client: mockHttpClient,
      );

      // when/then
      expect(
        mistralClient.embeddings(
          EmbeddingParams.fromJson(
            jsonDecode(_SampleEmbeddingsData.embeddingsParams)
                as Map<String, dynamic>,
          ),
        ),
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
        'given API times out when embeddings is called '
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
        mistralClient.embeddings(
          EmbeddingParams.fromJson(
            jsonDecode(_SampleEmbeddingsData.embeddingsParams)
                as Map<String, dynamic>,
          ),
        ),
        throwsA(
          isA<MistralAIClientException>().having(
            (p0) => p0.message,
            'should contain timeout in message',
            contains('Timeout'),
          ),
        ),
      );
    });
  });
}

class _SampleEmbeddingsData {
  static const String embeddingsParams = '''
{
  "model": "mistral-embed",
  "input": [
    "Hello",
    "world"
  ],
  "encoding_format": "float"
}
''';

  static const String embeddingsResponse = '''
{
  "id": "embd-aad6fc62b17349b192ef09225058bc45",
  "object": "list",
  "data": [
    {
      "object": "embedding",
      "embedding": [
        0.1,
        0.2,
        0.3
      ],
      "index": 0
    },
    {
      "object": "embedding",
      "embedding": [
        0.4,
        0.5,
        0.6
      ],
      "index": 1
    }
  ],
  "model": "string",
  "usage": {
    "prompt_tokens": 9,
    "total_tokens": 9
  }
}
''';

  static const String embeddingsInvalidResponse = '''
{
  "object": "list",
  "data": [
    {
      "object": "embedding",
      "embedding": [
        0.1,
        0.2,
        0.3
      ],
      "index": 0
    },
    {
      "object": "embedding",
      "embedding": [
        0.4,
        0.5,
        0.6
      ],
      "index": 1
    }
  ],
  "model": "string",
  "usage": {
    "prompt_tokens": 9,
    "total_tokens": 9
  }
}
''';

  static const String embeddingsMalformeddResponse = '''
{
  "object": "list",
  "data": 
    {
      "object": "embedding",
      "embedding": [
        0.1,
        0.2,
        0.3
      ],
      "index": 0
    },
    {
      "object": "embedding",
      "embedding": [
        0.4,
        0.5,
        0.6
      ],
      "index": 1
    }
  ],
  "model": "string",
  "usage": {
    "prompt_tokens": 9,
    "total_tokens": 9
  }
}
''';
}

EmbeddingParams embeddingParamsOf({
  String model = 'mistral-embed',
  List<String> input = const ['Hello', 'world'],
  String encodingFormat = 'float',
}) =>
    EmbeddingParams(
      model: model,
      input: input,
      encodingFormat: encodingFormat,
    );
