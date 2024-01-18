import 'dart:convert';

import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'common_tests.dart';
import 'fakes.dart';
import 'fixtures.dart';

void main() {
  group('MistralAIClient embeddings test', () {
    test(
        'given valid response '
        'when embeddings is called then return EmbeddingsResult', () {
      testResponseType<EmbeddingsResult>(
        apiJsonResponseBody: embeddingsResponse,
        clientRequest: (client) => client.embeddings(embeddingParamsOf()),
      );
    });

    test(
      'given embeddings params as JSON when embeddings is called '
      'then proper request body is sent',
      () async {
        final embeddingJsonParams =
            jsonDecode(embeddingsParamsBody) as Map<String, dynamic>;

        testIfProperBodyParamsAreSent(
          apiJsonResponseBody: embeddingsResponse,
          clientRequest: (client, bodyParams) =>
              client.embeddings(embedingsParams),
          bodyParams: embeddingJsonParams,
        );
      },
    );

    test(
        'given API returns invalid JSON when embeddings is called '
        'then return MistralAIClientException', () {
      testIfExceptionIsThrown(
        apiJsonResponseBody: embeddingsInvalidResponse,
        clientRequest: (client) => client.embeddings(embeddingParamsOf()),
      );
    });

    test(
      'given API returns malformed JSON when embeddings is called '
      'then return MistralAIClientException with FormatException inside',
      () {
        testIfFormatExceptionIsThrown(
          apiJsonResponseBody: embeddingsMalformeddResponse,
          clientRequest: (client) => client.embeddings(embeddingParamsOf()),
        );
      },
    );

    test(
        'given API times out when embeddings is called '
        'then return MistralAIClientException with Timeout in message', () {
      testIfTimeoutExceptionIsThrown(
        clientRequest: (client) => client.embeddings(embeddingParamsOf()),
      );
    });

    test(
      'given API key when embeddings is called '
      'then authentification header should be set',
      () {
        testIfAuthenticationHeaderIsSet(
          apiJsonResponseBody: embeddingsResponse,
          clientRequest: (client) => client.embeddings(embeddingParamsOf()),
        );
      },
    );

    test(
      'given API request has 500 status code  when embeddings is called '
      'then return MistralAIClientException',
      () {
        testIfExceptionIsThrown(
          apiJsonResponseBody: null,
          httpClient: FakeHttpJsonResponseClient(
            responseBody: embeddingsResponse,
            httpStatusCode: 500,
          ),
          clientRequest: (client) => client.embeddings(embeddingParamsOf()),
        );
      },
    );

    test(
      'given default url factory when embedings is called '
      'then request url should be from url factory',
      () async {
        testIfRequestUrlIsCorrect(
          apiJsonResponseBody: embeddingsResponse,
          clientRequest: (client) async =>
              client.embeddings(embeddingParamsOf()),
          requestEndpoint: MistralAPIEndpoints.embeddings,
        );
      },
    );
  });
}

const embedingsParams = EmbeddingParams(
  model: 'mistral-embed',
  input: ['Hello', 'world'],
  encodingFormat: 'float',
);

const String embeddingsParamsBody = '''
{
  "model": "mistral-embed",
  "input": [
    "Hello",
    "world"
  ],
  "encoding_format": "float"
}
''';

const String embeddingsResponse = '''
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

const String embeddingsInvalidResponse = '''
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

const String embeddingsMalformeddResponse = '''
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
