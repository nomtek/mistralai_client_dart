import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'fakes.dart';
import 'fixtures.dart';

void main() {
  group('MistralAIClient chat stream test', () {
    test(
        'calling chat stream '
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
      final result = mistralClient.chatStream(chatParamsOf());

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
          await mistralAIClientOf(httpClient: mockHttpClient)
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
        'calling chat stream with malformed response chunk '
        'should emit format exception ', () {
      // given
      final mockHttpClient = FakeStreamedResponseHttpClient(
        responseChunks: [
          chatCompletionChunkMalformedResponse,
        ],
      );
      final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);

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
        'calling chat stream with invalid response chunk '
        'should emit exception ', () {
      // given
      final mockHttpClient = FakeStreamedResponseHttpClient(
        responseChunks: [
          chatCompletionChunkInvalidResponse,
        ],
      );
      final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);

      // when
      final result = mistralClient.chatStream(chatParamsOf());

      // then
      expect(
        result,
        emitsError(isA<MistralAIClientException>()),
      );
    });

    group(
        'calling chat stream '
        'with errorneous response chunks '
        'should emit exception', () {
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
          final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);

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
        'calling chat stream '
        'when response code is other than 200 '
        'should emit exception', () {
      final errorResponseCodes = [400, 401, 403, 404, 500, 503];

      for (final errorResponseCode in errorResponseCodes) {
        test('status code $errorResponseCode', () {
          // given
          final mockHttpClient = FakeStreamedResponseHttpClient(
            responseChunks: [],
            httpStatusCode: errorResponseCode,
          );
          final mistralClient = mistralAIClientOf(
            httpClient: mockHttpClient,
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
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-small-latest","choices":[{"index":0,"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';

// missing '[' after 'choices: ' in the response
const chatCompletionChunkMalformedResponse =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-small-latest","choices":{"index":0,"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';

// missing 'index' field in the response
const chatCompletionChunkInvalidResponse =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-small-latest","choices":[{"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';
