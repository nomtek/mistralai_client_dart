import 'package:mistralai_client_dart/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('throws assert exception when trying to create ChatParams', () {
    test('with empty messages', () {
      expect(
        () => chatParamsOf(messages: const []),
        throwsA(isA<AssertionError>()),
        reason: 'Should throw AssertionError when messages is empty',
      );
    });

    final temparatureInvalidValues = <double>[-1, -0.1, 1.1, 2];
    for (final value in temparatureInvalidValues) {
      test('with temperature outside 0-1 range (value: $value)', () {
        expect(
          () => chatParamsOf(temperature: value),
          throwsA(isA<AssertionError>()),
          reason:
              'Should throw AssertionError when temperature is not in range 0-1'
              ' for value: $value',
        );
      });
    }

    final topPInvalidValues = <double>[-1, -0.1, 1.1, 2];
    for (final value in topPInvalidValues) {
      test('with topP outside 0-1 range (value: $value)', () {
        expect(
          () => chatParamsOf(topP: value),
          throwsA(isA<AssertionError>()),
          reason: 'Should throw AssertionError when topP is not in range 0-1 '
              'for value: $value',
        );
      });
    }

    test('with maxTokens less than 0', () {
      expect(
        () => chatParamsOf(maxTokens: -1),
        throwsA(isA<AssertionError>()),
        reason: 'Should throw AssertionError when maxTokens is less than 0',
      );
    });
  });
}

ChatMessage chatMessageOf({
  String? role,
  String? content,
}) =>
    ChatMessage(
      role: role ?? 'role',
      content: content ?? 'content',
    );

// creates ChatParams with default values for tests
ChatParams chatParamsOf({
  String? model,
  List<ChatMessage>? messages,
  double? temperature,
  double? topP,
  int? maxTokens,
  bool? safeMode,
  int? randomSeed,
}) =>
    ChatParams(
      model: model ?? 'model',
      messages: messages ?? [chatMessageOf()],
      temperature: temperature,
      topP: topP,
      maxTokens: maxTokens,
      safeMode: safeMode,
      randomSeed: randomSeed,
    );
