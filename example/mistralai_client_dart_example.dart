// ignore_for_file: avoid_print

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

import 'api_key.dart';

void main() async {
  final client = MistralAIClient(apiKey: mistralApiKey);

  // list models
  final modelsResult = await client.listMistralModels();
  final models = modelsResult?.map((e) {
    if (e.baseModel != null) {
      return e.baseModel?.id;
    } else {
      return e.fineTunedModel?.id;
    }
  }).toList();
  print(models?.join(', '));

  // chat without streaming
  const request = ChatCompletionRequest(
    model: 'mistral-small-latest',
    messages: [
      UserMessage(content: 'Hello chat!'),
    ],
  );
  final chatCompletion = await client.chatComplete(request: request);
  final chatMessage = chatCompletion.choices?[0].message;
  print(chatMessage?.content);

  // chat with streaming
  final stream = client.chatStream(request: request);
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
      input: EmbeddingRequestInput.arrayString(['Hello chat!']),
    ),
  );
  for (final data in embeddings.data) {
    print('Embeddings: ${data.embedding}');
  }
}
