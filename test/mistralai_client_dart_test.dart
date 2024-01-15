import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('Example test', () {
      // given

      // when
      const result = 2 + 2;

      // then
      expect(result, equals(4));
    });
  });
}
