// ignore_for_file: avoid_print

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

void main() async {
  const apiKey = 'your api key here';
  final client = MistralAIClient(apiKey: apiKey);

  // list models
  final modelsResult = await client.listModels();
  final models = modelsResult.data.map((e) => e.id).toList();
  print(models.join(', '));

  // chat without streaming
  final params = ChatParams(
    model: 'mistral-tiny',
    messages: const [
      ChatMessage(role: 'user', content: 'Hello chat!'),
    ],
  );
  final chatCompletion = await client.chat(params);
  final chatMessage = chatCompletion.choices[0].message;
  print(chatMessage.content);

  // chat with streaming
  final stream = client.streamChat(params);
  await for (final completionChunk in stream) {
    final chatMessage = completionChunk.choices[0].delta?.content;
    if (chatMessage != null) {
      print(chatMessage);
    }
  }

  // embeddings
  final embeddings = await client.embeddings(
    const EmbeddingParams(
      model: 'mistral-embed',
      input: ['Hello chat!'],
      // TODO(lgawron): this should be a default in the model
      encodingFormat: 'float',
    ),
  );
  for (final data in embeddings.data) {
    print('Embeddings: ${data.embedding}');
  }
}
