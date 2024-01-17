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
