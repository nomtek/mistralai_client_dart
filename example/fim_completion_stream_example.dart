// ignore_for_file: avoid_print

import 'dart:io';

import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:mistralai_client_dart/src/generated/schema/schema.dart';

import 'api_key.dart';

void main() async {
  final client = MistralAIClient(apiKey: mistralApiKey);
  const model = 'codestral-latest';
  const prompt = 'void printHelloWorld() {';
  const suffix = '}';

  final stream = client.fimStream(
    const FIMCompletionRequest(model: model, prompt: prompt, suffix: suffix),
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
