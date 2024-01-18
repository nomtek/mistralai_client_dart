import 'package:mistralai_client_dart/src/mistralai_client_dart_base.dart';
import 'package:test/test.dart';

void main() {
  group('throws assert exception when trying to create MistralAIUrlFactory',
      () {
    test('with empty baseUrl', () {
      expect(
        () => MistralAIUrlFactory(baseUrl: ''),
        throwsA(isA<AssertionError>()),
      );
    });

    test('baseUrl must not end with "/"', () {
      expect(
        () => MistralAIUrlFactory(baseUrl: 'https://api.mistral.ai/'),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with empty embedingsPath', () {
      expect(
        () => MistralAIUrlFactory(embeddingsPath: ''),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with embedingsPath not starting with "/"', () {
      expect(
        () => MistralAIUrlFactory(embeddingsPath: 'v1/embeddings'),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with empty chatCompletionsPath', () {
      expect(
        () => MistralAIUrlFactory(chatCompletionsPath: ''),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with chatCompletionsPath not starting with "/"', () {
      expect(
        () => MistralAIUrlFactory(embeddingsPath: 'v1/chat/completions'),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with empty listModelsPath', () {
      expect(
        () => MistralAIUrlFactory(listModelsPath: ''),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with listModelsPath not starting with "/"', () {
      expect(
        () => MistralAIUrlFactory(embeddingsPath: 'v1/listModels'),
        throwsA(isA<AssertionError>()),
      );
    });
  });

  test('create listModels default uri', () {
    final factory = MistralAIUrlFactory();
    expect(
      factory.listModels(),
      Uri.parse('https://api.mistral.ai/v1/models'),
    );
  });

  test('create embeddings default uri', () {
    final factory = MistralAIUrlFactory();
    expect(
      factory.embeddings(),
      Uri.parse('https://api.mistral.ai/v1/embeddings'),
    );
  });

  test('create chatCompletions default uri', () {
    final factory = MistralAIUrlFactory();
    expect(
      factory.chatCompletions(),
      Uri.parse('https://api.mistral.ai/v1/chat/completions'),
    );
  });

  test('create listModels custom uri', () {
    final factory = MistralAIUrlFactory(
      baseUrl: 'https://nomtek.api.mistral.ai',
      listModelsPath: '/custom-list-models',
    );
    expect(
      factory.listModels(),
      Uri.parse('https://nomtek.api.mistral.ai/custom-list-models'),
    );
  });

  test('create embeddings custom uri', () {
    final factory = MistralAIUrlFactory(
      baseUrl: 'https://nomtek.api.mistral.ai',
      embeddingsPath: '/custom-embeddings',
    );
    expect(
      factory.embeddings(),
      Uri.parse('https://nomtek.api.mistral.ai/custom-embeddings'),
    );
  });

  test('create chatCompletions custom uri', () {
    final factory = MistralAIUrlFactory(
      baseUrl: 'https://nomtek.api.mistral.ai',
      chatCompletionsPath: '/custom-chat-completions',
    );
    expect(
      factory.chatCompletions(),
      Uri.parse('https://nomtek.api.mistral.ai/custom-chat-completions'),
    );
  });
}
