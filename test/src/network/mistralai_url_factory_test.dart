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
}
