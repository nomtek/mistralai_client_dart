// ignore_for_file: avoid_print

import 'dart:io';

void main() async {
  final exampleDir = Directory('example');
  final exampleFiles = exampleDir.listSync();
  for (final file in exampleFiles) {
    if (file.path.endsWith('_example.dart')) {
      print('running file: ${file.path}');
      final result = await Process.run('dart', ['run', file.path]);
      if (result.exitCode != 0) {
        stderr.writeln(
          'error: file: ${file.path}, exitCode: ${result.exitCode}',
        );
        exit(result.exitCode);
      } else {
        stdout.writeln(
          'result: file: ${file.path}, exitCode: ${result.exitCode}',
        );
      }
    }
  }
}
