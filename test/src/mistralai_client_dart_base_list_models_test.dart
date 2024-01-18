import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'common_tests.dart';
import 'fakes.dart';

void main() {
  group('MistralAIClient listModels tests', () {
    test(
        'given valid response '
        'when listModels is called then return ListModelsResult', () {
      testResponseType(
        apiJsonResponseBody: listModelsResponse,
        clientRequest: (client) => client.listModels(),
      );
    });

    test(
        'given API returns wrong JSON when listModels is called '
        'then return MistralAIClientException', () {
      testIfExceptionIsThrown(
        apiJsonResponseBody: listModelsInvalidResponse,
        clientRequest: (client) => client.listModels(),
      );
    });

    test(
      'given API returns malformed JSON when listModels is called '
      'then return MistralAIClientException with FormatException inside',
      () {
        testIfFormatExceptionIsThrown(
          apiJsonResponseBody: listModelsMalformedResponse,
          clientRequest: (client) => client.listModels(),
        );
      },
    );

    test(
      'given API times out when listModels is called '
      'then return MistralAIClientException with Timeout in message',
      () {
        testIfTimeoutExceptionIsThrown(
          clientRequest: (client) => client.listModels(),
        );
      },
    );

    test(
      'given API key when listModels is called '
      'then authentification header should be set',
      () {
        testIfAuthenticationHeaderIsSet(
          apiJsonResponseBody: listModelsResponse,
          clientRequest: (client) => client.listModels(),
        );
      },
    );

    test(
      'given API request has 500 status code  when listModels is called '
      'then return MistralAIClientException',
      () {
        testIfExceptionIsThrown(
          apiJsonResponseBody: null,
          httpClient: FakeHttpJsonResponseClient(
            responseBody: listModelsResponse,
            httpStatusCode: 500,
          ),
          clientRequest: (client) => client.listModels(),
        );
      },
    );

    test(
      'given default url factory when list models is called '
      'then request url should be from url factory',
      () async {
        testIfRequestUrlIsCorrect(
          apiJsonResponseBody: listModelsResponse,
          clientRequest: (client) async => client.listModels(),
          requestEndpoint: MistralAPIEndpoints.listModels,
        );
      },
    );
  });
}

const String listModelsResponse = '''
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
const String listModelsInvalidResponse = '''
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
const String listModelsMalformedResponse = '''
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
