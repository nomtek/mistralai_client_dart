// ignore_for_file: avoid_print

import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:mistralai_client_dart/src/generated/schema/schema.dart';

import 'api_key.dart';

void main() async {
  final client = MistralAIClient(apiKey: mistralApiKey);

  // list models
  final modelsResult = await client.listModels();
  final models = modelsResult.data?.map((e) => e.id).toList();
  print(models?.join(', '));

  // chat without streaming
  const params = ChatCompletionRequest(
    model: 'mistral-small-latest',
    messages: [
      UserMessage(content: UserMessageContent.string('Hello chat!')),
    ],
  );
  final chatCompletion = await client.chatComplete(request: params);
  final chatMessage = chatCompletion.choices?[0].message;
  print(chatMessage?.content);

  // chat with streaming
  final stream = client.chatStream(params);
  await for (final completionChunk in stream) {
    final chatMessage = completionChunk.choices[0].delta.content;
    if (chatMessage != null) {
      print(chatMessage);
    }
  }

  // embeddings
  final embeddings = await client.createEmbeddings(
    request: const EmbeddingRequest(
      model: 'mistral-embed',
      // TODO: try to update oas so generated class name for input is better
      input: Input.arrayString(['Hello chat!']),
    ),
  );
  for (final data in embeddings.data) {
    print('Embeddings: ${data.embedding}');
  }
}
