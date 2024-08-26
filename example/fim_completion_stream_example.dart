// ignore_for_file: avoid_print

import 'dart:io';

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

import 'api_key.dart';

void main() async {
  final client = MistralAIClient(apiKey: mistralApiKey);
  const prompt = 'void printHelloWorld() {';
  const suffix = '}';

  final stream = client.fimStream(
    request: const FIMCompletionRequest(
      model: 'codestral-latest',
      prompt: prompt,
      suffix: suffix,
    ),
  );

  stdout.write(prompt);
  await for (final completionChunk in stream) {
    final message = completionChunk.choices[0].delta.content;
    if (message != null) {
      stdout.write(message);
    }
  }
  stdout.writeln(suffix);
}
