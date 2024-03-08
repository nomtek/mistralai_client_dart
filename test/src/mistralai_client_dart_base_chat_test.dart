import 'dart:convert';

import 'package:mistralai_client_dart_flutter_flow/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'common_tests.dart';
import 'fakes.dart';
import 'fixtures.dart';

void main() {
  group('MistralAIClient chat test', () {
    test(
        'calling chat '
        'should result in returning chat completition result', () {
      testResponseType<ChatCompletionResult>(
        apiJsonResponseBody: chatCompletionResponse,
        clientRequest: (client) => client.chat(chatParamsOf()),
      );
    });

    test(
      'calling chat with all params '
      'should result in sending all params in request body',
      () async {
        final chatJsonParams = jsonDecode(chatCompletionParamsWithAllFieldsBody)
            as Map<String, dynamic>;

        testIfProperBodyParamsAreSent(
          apiJsonResponseBody: chatCompletionResponse,
          clientRequest: (client, bodyParams) =>
              client.chat(chatParamsWithAllFields),
          bodyParams: chatJsonParams,
        );
      },
    );

    test(
      'calling chat with required params '
      'should result in sending required params in request body',
      () {
        final chatJsonParams =
            jsonDecode(chatCompletionParamsWithRequiredFieldsBody)
                as Map<String, dynamic>;

        testIfProperBodyParamsAreSent(
          apiJsonResponseBody: chatCompletionResponse,
          clientRequest: (client, bodyParams) =>
              client.chat(chatParamsWithRequiredFields),
          bodyParams: chatJsonParams,
        );
      },
    );

    group(
        'calling chat with certain param '
        'should result in request body containing that param', () {
      final testInputs = [
        (
          expectedParamName: 'stream',
          expectedParamValue: false,
          chatParams: chatParamsOf(),
        ),
        (
          expectedParamName: 'model',
          expectedParamValue: 'random model',
          chatParams: chatParamsOf(model: 'random model'),
        ),
        (
          expectedParamName: 'top_p',
          expectedParamValue: 0.5,
          chatParams: chatParamsOf(topP: 0.5),
        ),
        (
          expectedParamName: 'max_tokens',
          expectedParamValue: 10,
          chatParams: chatParamsOf(maxTokens: 10),
        ),
        (
          expectedParamName: 'safe_prompt',
          expectedParamValue: true,
          chatParams: chatParamsOf(safePrompt: true),
        ),
        (
          expectedParamName: 'safe_prompt',
          expectedParamValue: false,
          chatParams: chatParamsOf(safePrompt: false),
        ),
        (
          expectedParamName: 'random_seed',
          expectedParamValue: 12435,
          chatParams: chatParamsOf(randomSeed: 12435),
        ),
        (
          expectedParamName: 'messages',
          expectedParamValue: [
            {
              'role': 'role1',
              'content': 'content1',
              'name': 'name1',
              'tool_calls': null,
            },
          ],
          chatParams: chatParamsOf(
            messages: [
              chatMessageOf(role: 'role1', content: 'content1', name: 'name1'),
            ],
          ),
        ),
      ];

      for (final testInput in testInputs) {
        final paramName = testInput.expectedParamName;
        final paramValue = testInput.expectedParamValue;
        test('param: $paramName with value: $paramValue', () async {
          // given
          final chatParams = testInput.chatParams;
          final mockHttpClient = FakeHttpJsonResponseClient(
            responseBody: chatCompletionResponse,
          );

          // when
          await mistralAIClientOf(httpClient: mockHttpClient).chat(chatParams);

          // then
          expect(
            mockHttpClient.requestBody,
            containsPair(paramName, paramValue),
          );
        });
      }
    });

    test(
      'calling chat when api returns invalid JSON '
      'should result in receving exception',
      () {
        testIfExceptionIsThrown(
          apiJsonResponseBody: chatCompletionInvalidResponse,
          clientRequest: (client) => client.chat(chatParamsOf()),
        );
      },
    );

    test(
      'calling chat when api returns malformed JSON '
      'should result in receving exception with format exception',
      () {
        testIfFormatExceptionIsThrown(
          apiJsonResponseBody: chatCompletionMalformedResponse,
          clientRequest: (client) => client.chat(chatParamsOf()),
        );
      },
    );

    test(
      'calling chat when api times out '
      'should result in receving exception with Timeout in message',
      () {
        testIfTimeoutExceptionIsThrown(
          clientRequest: (client) => client.chat(chatParamsOf()),
        );
      },
    );

    test(
      'calling chat with certain api key '
      'should result in sending authentification header with that key',
      () {
        testIfAuthenticationHeaderIsSet(
          apiJsonResponseBody: chatCompletionResponse,
          clientRequest: (client) => client.chat(chatParamsOf()),
        );
      },
    );

    test(
      'calling chat when api returns 500 status code '
      'should result in receving exception',
      () {
        testIfExceptionIsThrown(
          apiJsonResponseBody: null,
          httpClient: FakeHttpJsonResponseClient(
            responseBody: chatCompletionResponse,
            httpStatusCode: 500,
          ),
          clientRequest: (client) => client.chat(chatParamsOf()),
        );
      },
    );

    test(
      'calling chat with default url factory '
      'should result in sending request to default url',
      () async {
        testIfRequestUrlIsCorrect(
          apiJsonResponseBody: chatCompletionResponse,
          clientRequest: (client) async => client.chat(chatParamsOf()),
          requestEndpoint: MistralAPIEndpoints.chatCompletions,
        );
      },
    );
  });
}

const chatCompletionResponse = '''
{
  "id": "cmpl-e5cc70bb28c444948073e77776eb30ef",
  "object": "chat.completion",
  "created": 1702256327,
  "model": "mistral-small-latest",
  "choices": [
    {
      "index": 0,
      "message": {
        "role": "assistant",
        "content": "I don't have a favorite condiment as I don't consume food or condiments. However, I can tell you that many people enjoy using ketchup, mayonnaise, hot sauce, soy sauce, or mustard as condiments to enhance the flavor of their meals. Some people also enjoy using herbs, spices, or vinegars as condiments. Ultimately, the best condiment is a matter of personal preference."
      },
      "finish_reason": "stop"
    }
  ],
  "usage": {
    "prompt_tokens": 14,
    "completion_tokens": 93,
    "total_tokens": 107
  }
}
''';

ChatParams chatParamsWithAllFields = ChatParams(
  model: 'mistral-small-latest',
  messages: const [
    ChatMessage(
      role: 'user',
      content: 'What is the best French cheese?',
    ),
  ],
  temperature: 0.7,
  topP: 1,
  maxTokens: 16,
  safePrompt: false,
  randomSeed: 1,
);

const chatCompletionParamsWithAllFieldsBody = '''
{
  "model": "mistral-small-latest",
  "messages": [
    {
      "role": "user",
      "content": "What is the best French cheese?",
      "name": null,
      "tool_calls": null
    }
  ],
  "temperature": 0.7,
  "top_p": 1,
  "max_tokens": 16,
  "stream": false,
  "safe_prompt": false,
  "random_seed": 1
}
''';

ChatParams chatParamsWithRequiredFields = ChatParams(
  model: 'mistral-small-latest',
  messages: const [
    ChatMessage(
      role: 'user',
      content: 'What is the best French cheese?',
    ),
  ],
);

const chatCompletionParamsWithRequiredFieldsBody = '''
{
  "model": "mistral-small-latest",
  "messages": [
    {
      "role": "user",
      "content": "What is the best French cheese?",
      "name": null,
      "tool_calls": null
    }
  ],
  "stream": false
}
''';

const chatCompletionInvalidResponse = '''
{
  "object": "chat.completion",
  "created": 1702256327,
  "model": "mistral-small-latest",
  "choices": [
    {
      "index": 0,
      "message": {
        "role": "assistant",
        "content": "I don't have a favorite condiment as I don't consume food or condiments. However, I can tell you that many people enjoy using ketchup, mayonnaise, hot sauce, soy sauce, or mustard as condiments to enhance the flavor of their meals. Some people also enjoy using herbs, spices, or vinegars as condiments. Ultimately, the best condiment is a matter of personal preference."
      },
      "finish_reason": "stop"
    }
  ],
  "usage": {
    "prompt_tokens": 14,
    "completion_tokens": 93,
    "total_tokens": 107
  }
}
''';

const chatCompletionMalformedResponse = '''
{
  "id": "cmpl-e5cc70bb28c444948073e77776eb30ef",
  "object": "chat.completion",
  "created": 1702256327,
  "model": "mistral-small-latest",
  "choices": 
    {
      "index": 0,
      "message": {
        "role": "assistant",
        "content": "I don't have a favorite condiment as I don't consume food or condiments. However, I can tell you that many people enjoy using ketchup, mayonnaise, hot sauce, soy sauce, or mustard as condiments to enhance the flavor of their meals. Some people also enjoy using herbs, spices, or vinegars as condiments. Ultimately, the best condiment is a matter of personal preference."
      },
      "finish_reason": "stop"
    }
  ],
  "usage": {
    "prompt_tokens": 14,
    "completion_tokens": 93,
    "total_tokens": 107
  }
}
''';
