import 'package:mistralai_client_dart/src/network/url_tools.dart';
import 'package:test/test.dart';

void main() {
  group('throws assert exception when trying to create MistralAIUrlFactory',
      () {
    test('with empty baseUrl', () {
      expect(
        () => MistraAIUrlFactory(baseUrl: ''),
        throwsA(isA<AssertionError>()),
      );
    });

    test('baseUrl must not end with "/"', () {
      expect(
        () => MistraAIUrlFactory(baseUrl: 'https://api.mistral.ai/'),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with empty embedingsPath', () {
      expect(
        () => MistraAIUrlFactory(embeddingsPath: ''),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with embedingsPath not starting with "/"', () {
      expect(
        () => MistraAIUrlFactory(embeddingsPath: 'v1/embeddings'),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with empty chatCompletionsPath', () {
      expect(
        () => MistraAIUrlFactory(chatCompletionsPath: ''),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with chatCompletionsPath not starting with "/"', () {
      expect(
        () => MistraAIUrlFactory(embeddingsPath: 'v1/chat/completions'),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with empty listModelsPath', () {
      expect(
        () => MistraAIUrlFactory(listModelsPath: ''),
        throwsA(isA<AssertionError>()),
      );
    });

    test('with listModelsPath not starting with "/"', () {
      expect(
        () => MistraAIUrlFactory(embeddingsPath: 'v1/listModels'),
        throwsA(isA<AssertionError>()),
      );
    });
  });

  test('create listModels default uri', () {
    final factory = MistraAIUrlFactory();
    expect(
      factory.listModels(),
      Uri.parse('https://api.mistral.ai/v1/models'),
    );
  });

  test('create embeddings default uri', () {
    final factory = MistraAIUrlFactory();
    expect(
      factory.embeddings(),
      Uri.parse('https://api.mistral.ai/v1/embeddings'),
    );
  });

  test('create chatCompletions default uri', () {
    final factory = MistraAIUrlFactory();
    expect(
      factory.chatCompletions(),
      Uri.parse('https://api.mistral.ai/v1/chat/completions'),
    );
  });

  test('create listModels custom uri', () {
    final factory = MistraAIUrlFactory(
      baseUrl: 'https://nomtek.api.mistral.ai',
      listModelsPath: '/custom-list-models',
    );
    expect(
      factory.listModels(),
      Uri.parse('https://nomtek.api.mistral.ai/custom-list-models'),
    );
  });

  test('create embeddings custom uri', () {
    final factory = MistraAIUrlFactory(
      baseUrl: 'https://nomtek.api.mistral.ai',
      embeddingsPath: '/custom-embeddings',
    );
    expect(
      factory.embeddings(),
      Uri.parse('https://nomtek.api.mistral.ai/custom-embeddings'),
    );
  });

  test('create chatCompletions custom uri', () {
    final factory = MistraAIUrlFactory(
      baseUrl: 'https://nomtek.api.mistral.ai',
      chatCompletionsPath: '/custom-chat-completions',
    );
    expect(
      factory.chatCompletions(),
      Uri.parse('https://nomtek.api.mistral.ai/custom-chat-completions'),
    );
  });
}
