import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'common_tests.dart';
import 'fakes.dart';
import 'fixtures.dart';

void main() {
  group('MistralAIClient fim completion test', () {
    test(
        'calling chat '
        'should result in returning fim completion result', () {
      testResponseType<ChatCompletionResult>(
        apiJsonResponseBody: chatCompletionResponse,
        clientRequest: (client) => client.fimCompletion(fimParamsOf()),
      );
    });

    group(
        'calling fim completion with certain param '
        'should result in request body containing that param', () {
      final testInputs = [
        (
          expectedParamName: 'stream',
          expectedParamValue: false,
          fimParams: fimParamsOf(),
        ),
        (
          expectedParamName: 'model',
          expectedParamValue: 'random model',
          fimParams: fimParamsOf(model: 'random model'),
        ),
        (
          expectedParamName: 'top_p',
          expectedParamValue: 0.5,
          fimParams: fimParamsOf(topP: 0.5),
        ),
        (
          expectedParamName: 'max_tokens',
          expectedParamValue: 10,
          fimParams: fimParamsOf(maxTokens: 10),
        ),
        (
          expectedParamName: 'random_seed',
          expectedParamValue: 12435,
          fimParams: fimParamsOf(randomSeed: 12435),
        ),
        (
          expectedParamName: 'temperature',
          expectedParamValue: 0.7,
          fimParams: fimParamsOf(temperature: 0.7),
        ),
        (
          expectedParamName: 'suffix',
          expectedParamValue: 'suffix-value',
          fimParams: fimParamsOf(suffix: 'suffix-value'),
        ),
      ];

      for (final testInput in testInputs) {
        final paramName = testInput.expectedParamName;
        final paramValue = testInput.expectedParamValue;
        test('param: $paramName with value: $paramValue', () async {
          // given
          final fimParams = testInput.fimParams;
          final mockHttpClient = FakeHttpJsonResponseClient(
            responseBody: chatCompletionResponse,
          );

          // when
          await mistralAIClientOf(httpClient: mockHttpClient)
              .fimCompletion(fimParams);

          // then
          expect(
            mockHttpClient.requestBody,
            containsPair(paramName, paramValue),
          );
        });
      }
    });
  });
}

const chatCompletionResponse = '''
{
  "id": "cmpl-e5cc70bb28c444948073e77776eb30ef",
  "object": "chat.completion",
  "created": 1702256327,
  "model": "code-model",
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
