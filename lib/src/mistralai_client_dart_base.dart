import 'package:http/http.dart' as http;
import 'package:mistralai_client_dart/src/models/models.dart';

class MistralAIClient {
  MistralAIClient({
    required this.apiKey,
    this.baseUrl = 'https://api.mistral.ai',
    this.timeout = const Duration(seconds: 120),
    this.maxRetries = 5,
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final String apiKey;
  final String baseUrl;
  final Duration timeout;
  final int maxRetries;
  final http.Client _httpClient;

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
