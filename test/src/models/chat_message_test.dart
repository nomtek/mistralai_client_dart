import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:test/test.dart';

void main() {
  group('ChatMessage', () {
    test('toolCallId is mandatory when role is tool', () {
      expect(
        () => ChatMessage(
          role: 'tool',
          name: 'function-name',
          content: 'tool call result',
        ),
        throwsA(isA<AssertionError>()),
      );
    });
  });
}
