import 'dart:convert';

import 'package:mistralai_client_dart_flutter_flow/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'common_tests.dart';
import 'fakes.dart';
import 'fixtures.dart';

void main() {
  group('MistralAIClient embeddings test', () {
    test(
        'calling embeddings '
        'should result in returning embeddings result', () {
      testResponseType<EmbeddingsResult>(
        apiJsonResponseBody: embeddingsResponse,
        clientRequest: (client) => client.embeddings(embeddingParamsOf()),
      );
    });

    test(
      'calling embeddings with params '
      'should result in sending params in request body',
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
        'calling embeddings when api returns invalid JSON '
        'should result in receving exception', () {
      testIfExceptionIsThrown(
        apiJsonResponseBody: embeddingsInvalidResponse,
        clientRequest: (client) => client.embeddings(embeddingParamsOf()),
      );
    });

    test(
      'calling embeddings when api returns malformed JSON '
      'should result in receving exception with format exception',
      () {
        testIfFormatExceptionIsThrown(
          apiJsonResponseBody: embeddingsMalformeddResponse,
          clientRequest: (client) => client.embeddings(embeddingParamsOf()),
        );
      },
    );

    test(
        'calling embeddings when api times out '
        'should result in receving exception with Timeout in message', () {
      testIfTimeoutExceptionIsThrown(
        clientRequest: (client) => client.embeddings(embeddingParamsOf()),
      );
    });

    test(
      'calling embeddings with certain api key '
      'should result in sending authentification header with that key',
      () {
        testIfAuthenticationHeaderIsSet(
          apiJsonResponseBody: embeddingsResponse,
          clientRequest: (client) => client.embeddings(embeddingParamsOf()),
        );
      },
    );

    test(
      'calling embeddings when api returns 500 status code '
      'should result in receving exception',
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
      'calling embeddings with default url factory '
      'should result in sending request to default url',
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
