import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart' as retry;
import 'package:mistralai_client_dart/src/models/models.dart';

class _MistralAPIEndpoints {
  static const String listModels = '/v1/models';
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

  /// Returns a chat completion for given [params].
  ///
  /// Sends a request to
  /// [Mistral AI API](https://docs.mistral.ai/api/#operation/createChatCompletion)
  /// to create chat completions.
  ///
  /// Throws [MistralAIClientException] if the request fails.
  Future<ChatCompletion> chat(ChatParams params) async {
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

    // TODO(lgawron): endpoint building should be moved to separate class
    // cleanup in https://github.com/nomtek/mistralai_client_dart/issues/13
    final url = Uri.parse('$baseUrl/v1/chat/completions');

    // TODO(lgawron): to add tests for this method we need to mock http client
    // cleanup in https://github.com/nomtek/mistralai_client_dart/issues/13
    final response = await _client
        .post(
          url,
          body: _mapChatParamsToRequestParams(params, stream: false),
          headers: headers,
        )
        .timeout(timeout);

    // at the moment API docs are only telling about 200 status code
    // no other status codes are mentioned or any specific errors
    if (response.statusCode == 200) {
      return ChatCompletion.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      // TODO(lgawron): Handle Json parsing errors
      // TODO(lgwaron): Create custom client expcetions
      // cleanup in https://github.com/nomtek/mistralai_client_dart/issues/13
      throw MistralAIClientException(
        'HTTP error! status: ${response.statusCode} '
        'Response: \n${response.body}',
      );
    }
  }

  ChatCompletionParams _mapChatParamsToRequestParams(
    ChatParams params, {
    required bool stream,
  }) =>
      ChatCompletionParams(
        model: params.model,
        messages: params.messages,
        temperature: params.temperature,
        topP: params.topP,
        maxTokens: params.maxTokens,
        stream: stream,
        safeMode: params.safeMode,
        randomSeed: params.randomSeed,
      );

  Stream<ChatCompletion> streamChat(ChatParams params) {
    throw UnimplementedError('to be implemented');
  }

  Future<Embeddings> embednings(EmbeddingParams params) {
    throw UnimplementedError('to be implemented');
  }
}

/// Simple exception class for Mistral AI Client exceptions.
class MistralAIClientException implements Exception {
  MistralAIClientException([this.message = '']);

  final String message;

  @override
  String toString() => 'MistralAIClientException: $message';
}
