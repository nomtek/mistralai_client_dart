import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'fakes.dart';
import 'fixtures.dart';

void main() {
  group('MistralAIClient chat stream test', () {
    test(
        'given response chunks '
        'when calling chat stream '
        'then should result in chat completion chunk results emissions', () {
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
      final mistralClient = mistralAIClientOf(client: mockHttpClient);

      // when
      final result = mistralClient.chatStream(chatParamsOf());

      // then
      expect(
        result,
        emits(isA<ChatCompletionChunkResult>()),
      );
    });

    group(
        'given chat params '
        'when calling chat stream '
        'then should send request param', () {
      final testInputs = [
        (
          expectedParamName: 'stream',
          expectedParamValue: true,
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
            },
          ],
          chatParams: chatParamsOf(
            messages: [
              chatMessageOf(role: 'role1', content: 'content1'),
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
          final mockHttpClient = FakeStreamedResponseHttpClient(
            responseChunks: [chatCompletionChunkResponse],
          );

          // when
          // wait for first result to be emitted
          await mistralAIClientOf(client: mockHttpClient)
              .chatStream(chatParams)
              .first;

          // then
          expect(
            mockHttpClient.requestBody,
            containsPair(paramName, paramValue),
          );
        });
      }
    });

    test(
        'given malformed response chunk '
        'when calling chat stream '
        'then should emit format error', () {
      // given
      final mockHttpClient = FakeStreamedResponseHttpClient(
        responseChunks: [
          chatCompletionChunkMalformedResponse,
        ],
      );
      final mistralClient = mistralAIClientOf(client: mockHttpClient);

      // when
      final result = mistralClient.chatStream(chatParamsOf());

      // then
      expect(
        result,
        emitsError(
          isA<MistralAIClientException>().having(
            (e) => e.message,
            'exception message should contain FormatException',
            contains('FormatException'),
          ),
        ),
      );
    });

    test(
        'given invalid response chunk '
        'when calling chat stream '
        'then should emit error', () {
      // given
      final mockHttpClient = FakeStreamedResponseHttpClient(
        responseChunks: [
          chatCompletionChunkInvalidResponse,
        ],
      );
      final mistralClient = mistralAIClientOf(client: mockHttpClient);

      // when
      final result = mistralClient.chatStream(chatParamsOf());

      // then
      expect(
        result,
        emitsError(isA<MistralAIClientException>()),
      );
    });

    group(
        'given errorneous response chunks '
        'when calling chat stream '
        'then emits MistralAIClientException', () {
      final testInputs = {
        'invalid json': [
          chatCompletionChunkInvalidResponse,
        ],
        'malformed json': [
          chatCompletionChunkMalformedResponse,
        ],
      };

      for (final textInput in testInputs.entries) {
        final key = textInput.key;
        final value = textInput.value;
        test(key, () {
          // given
          final mockHttpClient = FakeStreamedResponseHttpClient(
            responseChunks: value,
          );
          final mistralClient = mistralAIClientOf(client: mockHttpClient);

          // when
          final result = mistralClient.chatStream(chatParamsOf());

          // then
          expect(
            result,
            emitsError(isA<MistralAIClientException>()),
          );
        });
      }
    });

    group(
        'given response with response code other than 200 '
        'when calling chat stream '
        'then should emit MistralAIClientException', () {
      final errorResponseCodes = [400, 401, 403, 404, 500, 503];

      for (final errorResponseCode in errorResponseCodes) {
        test('status code $errorResponseCode', () {
          // given
          final mockHttpClient = FakeStreamedResponseHttpClient(
            responseChunks: [],
            httpStatusCode: errorResponseCode,
          );
          final mistralClient = mistralAIClientOf(
            client: mockHttpClient,
            // disable retries
            maxRetries: 0,
          );

          // when
          final result = mistralClient.chatStream(chatParamsOf());

          // then
          expect(
            result,
            emitsError(
              isA<MistralAIClientException>().having(
                (e) => e.message,
                'exception message should contain $errorResponseCode',
                contains(errorResponseCode.toString()),
              ),
            ),
          );
        });
      }
    });
  });
}

// test data

const chatCompletionChunkResponse =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-tiny","choices":[{"index":0,"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';

// missing '[' after 'choices: ' in the response
const chatCompletionChunkMalformedResponse =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-tiny","choices":{"index":0,"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';

// missing 'index' field in the response
const chatCompletionChunkInvalidResponse =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-tiny","choices":[{"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';
