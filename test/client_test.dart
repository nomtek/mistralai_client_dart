import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

void main() {
  group('Client', () {
    test('should create a new instance of MistralAIClient', () {
      // just check if doesn't throw
      MistralAIClient(apiKey: 'apiKey');
    });

    test('should throw when base URL is not a http or https', () {
      expect(
        () => MistralAIClient(apiKey: 'apiKey', baseUrl: 'ws://api.mistral.ai'),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should throw when base URL ends with /', () {
      expect(
        () => MistralAIClient(
          apiKey: 'apiKey',
          baseUrl: 'https://api.mistral.ai/',
        ),
        throwsA(isA<AssertionError>()),
      );
    });
  });
}
