import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'fakes.dart';
import 'fixtures.dart';

void main() {
  group('MistralAIClient fim completion stream test', () {
    test(
        'calling fim completion stream '
        'should result in chat completion results emission '
        'if chunks contain completion chunk responses', () {
      // given
      final mockHttpClient = FakeStreamedResponseHttpClient(
        responseChunks: [
          chatCompletionChunkResponse,
          'some random chunk which should be ignored',
          chatCompletionChunkResponse,
          'another random chunk which should be ignored',
          chatCompletionChunkResponse,
        ],
      );
      final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);

      // when
      final result = mistralClient.fimCompletionStream(fimParamsOf());

      // then
      expect(
        result,
        emitsInOrder([
          isA<ChatCompletionChunkResult>(),
          isA<ChatCompletionChunkResult>(),
          isA<ChatCompletionChunkResult>(),
        ]),
      );
    });

    group(
        'calling chat stream with certain param '
        'should result in request body containing that param', () {
      final testInputs = [
        (
          expectedParamName: 'stream',
          expectedParamValue: true,
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
          final mockHttpClient = FakeStreamedResponseHttpClient(
            responseChunks: [chatCompletionChunkResponse],
          );

          // when
          // wait for first result to be emitted
          await mistralAIClientOf(httpClient: mockHttpClient)
              .fimCompletionStream(fimParams)
              .first;

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

// test data

const chatCompletionChunkResponse =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-small-latest","choices":[{"index":0,"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';

// missing '[' after 'choices: ' in the response
const chatCompletionChunkMalformedResponse =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-small-latest","choices":{"index":0,"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';

// missing 'index' field in the response
const chatCompletionChunkInvalidResponse =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-small-latest","choices":[{"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';
