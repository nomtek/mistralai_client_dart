// ignore_for_file: avoid_print

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

import 'api_key.dart';

void main() async {
  final client = MistralAIClient(apiKey: mistralApiKey);
  const model = 'codestral-latest';
  const prompt = 'void printHelloWorld() {';
  const suffix = '}';

  final result = await client.fimComplete(
    request: const FIMCompletionRequest(
      model: model,
      prompt: prompt,
      suffix: suffix,
    ),
  );
  final message = result.choices?[0].message;
  print('''
$prompt
${message?.content}
$suffix
''');
}
