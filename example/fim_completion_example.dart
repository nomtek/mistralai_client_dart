// ignore_for_file: avoid_print

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

void main() async {
  const apiKey = 'your api key here';
  final client = MistralAIClient(apiKey: apiKey);
  const model = 'codestral-latest';
  const prompt = 'void printHelloWorld() {';
  const suffix = '}';

  final result = await client.fimCompletion(
    FimParams(model: model, prompt: prompt, suffix: suffix),
  );
  final message = result.choices[0].message;
  print('''
$prompt
${message.content}
$suffix
''');
}
