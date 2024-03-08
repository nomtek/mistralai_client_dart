import 'package:mistralai_client_dart_flutter_flow/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'common_tests.dart';
import 'fakes.dart';

void main() {
  group('MistralAIClient listModels tests', () {
    test(
        'calling list models '
        'should result in returning list models result', () {
      testResponseType(
        apiJsonResponseBody: listModelsResponse,
        clientRequest: (client) => client.listModels(),
      );
    });

    test(
        'calling list models when api returns invalid JSON '
        'should result in receving exception', () {
      testIfExceptionIsThrown(
        apiJsonResponseBody: listModelsInvalidResponse,
        clientRequest: (client) => client.listModels(),
      );
    });

    test(
      'calling list models when api returns malformed JSON '
      'should result in receving exception with format exception',
      () {
        testIfFormatExceptionIsThrown(
          apiJsonResponseBody: listModelsMalformedResponse,
          clientRequest: (client) => client.listModels(),
        );
      },
    );

    test(
      'calling list models when api times out '
      'should result in receving exception with Timeout in message',
      () {
        testIfTimeoutExceptionIsThrown(
          clientRequest: (client) => client.listModels(),
        );
      },
    );

    test(
      'calling list models with certain api key '
      'should result in sending authentification header with that key',
      () {
        testIfAuthenticationHeaderIsSet(
          apiJsonResponseBody: listModelsResponse,
          clientRequest: (client) => client.listModels(),
        );
      },
    );

    test(
      'calling list models when api returns 500 status code '
      'should result in receving exception',
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
      'calling list models with default url factory '
      'should result in sending request to default url',
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
