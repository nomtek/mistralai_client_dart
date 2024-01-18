import 'dart:convert';

import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'common_tests.dart';
import 'fakes.dart';
import 'fixtures.dart';

void main() {
  group('MistralAIClient chat test', () {
    test(
        'given valid response '
        'when chat is called then return ChatCompletionResult', () {
      testResponseType<ChatCompletionResult>(
        apiJsonResponseBody: chatCompletionResultJsonString,
        clientRequest: (client) => client.chat(chatParamsOf()),
      );
    });

    test(
      'given chat params with all fields as JSON when chat is called '
      'then proper request body is sent',
      () async {
        final chatJsonParams = jsonDecode(chatCompletionParamsWithAllFieldsBody)
            as Map<String, dynamic>;

        testIfProperBodyParamsAreSent(
          apiJsonResponseBody: chatCompletionResultJsonString,
          clientRequest: (client, bodyParams) =>
              client.chat(chatParamsWithAllFields),
          bodyParams: chatJsonParams,
        );
      },
    );

    test(
      'given chat params with required fields as JSON when chat is called '
      'then proper request body is sent',
      () {
        final chatJsonParams =
            jsonDecode(chatCompletionParamsWithRequiredFieldsBody)
                as Map<String, dynamic>;

        testIfProperBodyParamsAreSent(
          apiJsonResponseBody: chatCompletionResultJsonString,
          clientRequest: (client, bodyParams) =>
              client.chat(chatParamsWithRequiredFields),
          bodyParams: chatJsonParams,
        );
      },
    );

    test(
      'given API returns wrong JSON when chat is called '
      'then return MistralAIClientException',
      () {
        testIfExceptionIsThrown(
          apiJsonResponseBody: chatCompletionInvalidResultJsonString,
          clientRequest: (client) => client.chat(chatParamsOf()),
        );
      },
    );

    test(
      'given API returns malformed JSON when chat is called '
      'then return MistralAIClientException with FormatException inside',
      () {
        testIfFormatExceptionIsThrown(
          apiJsonResponseBody: chatCompletionMalformedResultJsonString,
          clientRequest: (client) => client.chat(chatParamsOf()),
        );
      },
    );

    test(
      'given API times out when chat is called '
      'then return MistralAIClientException with Timeout in message',
      () {
        testIfTimeoutExceptionIsThrown(
          clientRequest: (client) => client.chat(chatParamsOf()),
        );
      },
    );

    test(
      'given API key when chat is called '
      'then authentification header should be set',
      () {
        testIfAuthenticationHeaderIsSet(
          apiJsonResponseBody: chatCompletionResultJsonString,
          clientRequest: (client) => client.chat(chatParamsOf()),
        );
      },
    );

    test(
      'given API request has 500 status code  when chat is called '
      'then return MistralAIClientException',
      () {
        testIfExceptionIsThrown(
          apiJsonResponseBody: null,
          httpClient: FakeHttpJsonResponseClient(
            responseBody: chatCompletionResultJsonString,
            httpStatusCode: 500,
          ),
          clientRequest: (client) => client.chat(chatParamsOf()),
        );
      },
    );

    test(
      'given default url factory when chat is called '
      'then request url should be from url factory',
      () async {
        testIfRequestUrlIsCorrect(
          apiJsonResponseBody: chatCompletionResultJsonString,
          clientRequest: (client) async => client.chat(chatParamsOf()),
          requestEndpoint: MistralAPIEndpoints.chatCompletions,
        );
      },
    );
  });
}

const chatCompletionResultJsonString = '''
{
  "id": "cmpl-e5cc70bb28c444948073e77776eb30ef",
  "object": "chat.completion",
  "created": 1702256327,
  "model": "mistral-tiny",
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
  model: 'mistral-tiny',
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
  "model": "mistral-tiny",
  "messages": [
    {
      "role": "user",
      "content": "What is the best French cheese?"
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
  model: 'mistral-tiny',
  messages: const [
    ChatMessage(
      role: 'user',
      content: 'What is the best French cheese?',
    ),
  ],
);

const chatCompletionParamsWithRequiredFieldsBody = '''
{
  "model": "mistral-tiny",
  "messages": [
    {
      "role": "user",
      "content": "What is the best French cheese?"
    }
  ],
  "stream": false
}
''';

const chatCompletionInvalidResultJsonString = '''
{
  "object": "chat.completion",
  "created": 1702256327,
  "model": "mistral-tiny",
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

const chatCompletionMalformedResultJsonString = '''
{
  "id": "cmpl-e5cc70bb28c444948073e77776eb30ef",
  "object": "chat.completion",
  "created": 1702256327,
  "model": "mistral-tiny",
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
