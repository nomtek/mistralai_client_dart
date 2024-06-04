import 'package:test/test.dart';

import '../fixtures.dart';

void main() {
  group('throws assert exception when trying to create FimParams', () {
    final temparatureInvalidValues = <double>[-1, -0.1, 1.1, 2];
    for (final value in temparatureInvalidValues) {
      test('with temperature outside 0-1 range (value: $value)', () {
        expect(
          () => fimParamsOf(temperature: value),
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
          () => fimParamsOf(topP: value),
          throwsA(isA<AssertionError>()),
          reason: 'Should throw AssertionError when topP is not in range 0-1 '
              'for value: $value',
        );
      });
    }

    test('with maxTokens less than 0', () {
      expect(
        () => fimParamsOf(maxTokens: -1),
        throwsA(isA<AssertionError>()),
        reason: 'Should throw AssertionError when maxTokens is less than 0',
      );
    });
  });
}
