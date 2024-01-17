import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  // TODO(lgawron): fix asserts in test
  test('check body params', () async {
    // given
    final mockHttpClient = FakeHttpJsonResponseClient(
      responseBody: chatCompletionResultJsonString,
    );
    final mistralClient = MistralAIClient(
      apiKey: 'apiKey',
      baseUrl: 'baseUrl',
      timeout: const Duration(milliseconds: 500),
      client: mockHttpClient,
    );

    // when
    final params = ChatParams(
      model: 'tiny',
      messages: const [
        ChatMessage(role: 'role', content: 'content'),
      ],
    );
    final result = await mistralClient.chat(params);

    // then
    expect(result, isA<ChatCompletionResult>());

    final originalRequestBody = mockHttpClient.requestBody;
    final modelInBody = originalRequestBody['model'];
    expect('tiny', modelInBody);
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
