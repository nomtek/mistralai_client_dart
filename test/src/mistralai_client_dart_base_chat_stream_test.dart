import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

import 'fakes.dart';
import 'fixtures.dart';
import 'models/chat_params_test.dart';

void main() {
  test(
      'given response chunks '
      'when calling chat stream '
      'then should result in chat completion chunk results emissions', () {
    const mockHttpClient = FakeStreamedResponseHttpClient(
      responseChunks: [
        chatCompletionChunkResultJsonString,
        'some random chunk which should be ignored',
        chatCompletionChunkResultJsonString,
        'another random chunk which should be ignored',
        chatCompletionChunkResultJsonString,
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

  test(
      'given malformed response chunk '
      'when calling chat stream '
      'then should emit format error', () {
    const mockHttpClient = FakeStreamedResponseHttpClient(
      responseChunks: [
        chatCompletionChunkResultMalformedJsonString,
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
    const mockHttpClient = FakeStreamedResponseHttpClient(
      responseChunks: [
        chatCompletionChunkResultInvalidJsonString,
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
        chatCompletionChunkResultInvalidJsonString,
      ],
      'malformed json': [
        chatCompletionChunkResultMalformedJsonString,
      ],
    };

    for (final textInput in testInputs.entries) {
      final key = textInput.key;
      final value = textInput.value;
      test(key, () {
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
}

// test data

const chatCompletionChunkResultJsonString =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-tiny","choices":[{"index":0,"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';

// missing '[' after 'choices: ' in the response
const chatCompletionChunkResultMalformedJsonString =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-tiny","choices":{"index":0,"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';

// missing 'index' field in the response
const chatCompletionChunkResultInvalidJsonString =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-tiny","choices":[{"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';
