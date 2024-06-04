// ignore_for_file: avoid_print

import 'dart:io';

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

void main() async {
  const apiKey = 'your api key here';
  final client = MistralAIClient(apiKey: apiKey);
  const model = 'codestral-latest';
  const prompt = 'void printHelloWorld() {';
  const suffix = '}';

  final stream = client.fimCompletionStream(
    FimParams(model: model, prompt: prompt, suffix: suffix),
  );

  stdout.write(prompt);
  await for (final completionChunk in stream) {
    final message = completionChunk.choices[0].delta?.content;
    if (message != null) {
      stdout.write(message);
    }
  }
  stdout.writeln(suffix);
}
