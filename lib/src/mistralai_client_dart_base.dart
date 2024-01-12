import 'package:mistralai_client_dart/src/models/models.dart';

class MistralAIClient {
  MistralAIClient({
    required this.apiKey,
    this.baseUrl = 'https://api.mistral.ai',
    this.timeout = const Duration(seconds: 120),
    this.maxRetries = 5,
  });

  final String apiKey;
  final String baseUrl;
  final Duration timeout;
  final int maxRetries;

  Future<ModelsList> listModels() {
    throw UnimplementedError('to be implemented');
  }

  Future<ChatCompletion> chat(ChatParams params) {
    throw UnimplementedError('to be implemented');
  }

  Stream<ChatCompletion> streamChat(ChatParams params) {
    throw UnimplementedError('to be implemented');
  }

  Future<Embeddings> embednings(EmbeddingParams params) {
    throw UnimplementedError('to be implemented');
  }
}
