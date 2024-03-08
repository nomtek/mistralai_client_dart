// ignore_for_file: avoid_print

import 'package:mistralai_client_dart_flutter_flow/mistralai_client_dart_flutter_flow.dart';

void main() async {
  const apiKey = 'your api key here';
  final client = MistralAIClient(apiKey: apiKey);

  // list models
  final modelsResult = await client.listModels();
  final models = modelsResult.data.map((e) => e.id).toList();
  print(models.join(', '));

  // chat without streaming
  final params = ChatParams(
    model: 'mistral-small-latest',
    messages: const [
      ChatMessage(role: 'user', content: 'Hello chat!'),
    ],
  );
  final chatCompletion = await client.chat(params);
  final chatMessage = chatCompletion.choices[0].message;
  print(chatMessage.content);

  // chat with streaming
  final stream = client.chatStream(params);
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
    ),
  );
  for (final data in embeddings.data) {
    print('Embeddings: ${data.embedding}');
  }
}
