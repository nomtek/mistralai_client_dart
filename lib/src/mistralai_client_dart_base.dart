import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart' as retry;
import 'package:mistralai_client_dart/src/models/models.dart';

class _MistralAPIEndpoints {
  static const String listModels = '/v1/models';
  static const String embeddings = '/v1/embeddings';
}

class MistralAIClient {
  MistralAIClient({
    required this.apiKey,
    this.baseUrl = 'https://api.mistral.ai',
    this.timeout = const Duration(seconds: 120),
    this.maxRetries = 5,
  }) : _client = retry.RetryClient(
          http.Client(),
          retries: maxRetries,
        );

  final String apiKey;
  final String baseUrl;
  final Duration timeout;
  final int maxRetries;
  final http.Client _client;

  /// Returns a list of the available models [ListModelsResult]
  ///
  /// It uses [list models endpoint](https://api.mistral.ai/v1/models) from the mistral AI API.
  Future<ListModelsResult> listModels() async {
    final headers = <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

    try {
      final response = await _client
          .get(
            Uri.parse('$baseUrl${_MistralAPIEndpoints.listModels}'),
            headers: headers,
          )
          .timeout(timeout);

      if (response.statusCode != 200) {
        throw Exception('Get request failed: ${response.statusCode}');
      }

      return ListModelsResult.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } catch (e) {
      throw Exception('Get request failed: $e');
    }
  }

  Future<ChatCompletion> chat(ChatParams params) {
    throw UnimplementedError('to be implemented');
  }

  Stream<ChatCompletion> streamChat(ChatParams params) {
    throw UnimplementedError('to be implemented');
  }

  /// Returns embeddings [Embeddings] for a single,
  /// or batch of inputs given as params [EmbeddingParams]
  ///
  /// It uses [embeddings endpoint](https://docs.mistral.ai/api/#operation/createEmbedding) from the Mistral AI API.
  /// 
  /// Throws [Exception] if request fails.
  Future<Embeddings> embeddings(EmbeddingParams params) async {
    final headers = <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

    try {
      final response = await _client
          .post(
            Uri.parse('$baseUrl${_MistralAPIEndpoints.embeddings}'),
            body: jsonEncode(params.toJson()),
            headers: headers,
          )
          .timeout(timeout);

      if (response.statusCode != 200) {
        throw Exception('Embeddings request failed: ${response.statusCode}');
      }

      return Embeddings.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } catch (e) {
      throw Exception('Embeddings request failed: $e');
    }
  }
}
