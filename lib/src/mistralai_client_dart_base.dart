import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart' as retry;
import 'package:mistralai_client_dart/src/exceptions.dart';
import 'package:mistralai_client_dart/src/models/models.dart';
import 'package:mistralai_client_dart/src/network/url_tools.dart';

part 'network/request.dart';
part 'models/mappers.dart';

// FIXME(lgawron): add tests for all requests
// TODO(lgawron): check all names for consistency and better readability
// TODO(lgawron): add more documentation

class MistralAIClient {
  MistralAIClient({
    required this.apiKey,
    this.baseUrl = MistralAPIEndpoints.baseUrl,
    this.timeout = const Duration(seconds: 120),
    this.maxRetries = 5,

    /// if overriten then baseUrl is ignored
    MistraAIUrlFactory? apiUrlFactory,
    http.Client? client,
  })  : _client = client is retry.RetryClient
            ? client
            : retry.RetryClient(
                client ?? http.Client(),
                retries: maxRetries,
              ),
        _apiUrlFactory = apiUrlFactory ?? MistraAIUrlFactory(baseUrl: baseUrl);

  final String apiKey;
  final String baseUrl;
  final Duration timeout;
  final int maxRetries;
  final MistraAIUrlFactory _apiUrlFactory;
  final http.Client _client;

  /// Returns a list of the available models [ListModelsResult]
  ///
  /// It uses [list models endpoint](https://api.mistral.ai/v1/models) from the mistral AI API.
  Future<ListModelsResult> listModels() async => _requestJson(
        client: _client,
        apiKey: apiKey,
        request: http.Request('GET', _apiUrlFactory.listModels()),
        fromJson: ListModelsResult.fromJson,
        timeout: timeout,
      );

  /// Returns a chat completion for given [params].
  ///
  /// Sends a request to
  /// [Mistral AI API](https://docs.mistral.ai/api/#operation/createChatCompletion)
  /// to create chat completions.
  ///
  /// Throws [MistralAIClientException] if the request fails.
  Future<ChatCompletion> chat(ChatParams params) async => _requestJson(
        client: _client,
        apiKey: apiKey,
        request: http.Request(
          'POST',
          _apiUrlFactory.chatCompletions(),
        )..body = jsonEncode(
            _mapChatParamsToRequestParams(params, stream: false),
          ),
        fromJson: ChatCompletion.fromJson,
        timeout: timeout,
      );

  /// Returns a stream of chat completion chunks for given [params].
  ///
  /// Chunks are small parts of the whole chat completion.
  /// They are supposed to be used to display chat completion in real time.
  ///
  /// Sends a request to
  /// [Mistral AI API](https://docs.mistral.ai/api/#operation/createChatCompletion)
  /// to create chat completions.
  ///
  /// Throws [MistralAIClientException] if the request fails.
  Stream<ChatCompletionChunk> streamChat(ChatParams params) => _streamRequest(
        client: _client,
        apiKey: apiKey,
        request: http.Request(
          'POST',
          _apiUrlFactory.chatCompletions(),
        )..body = jsonEncode(
            _mapChatParamsToRequestParams(params, stream: true),
          ),
        fromJson: ChatCompletionChunk.fromJson,
        timeout: timeout,
      );

  /// Returns [Embeddings] for a single input
  /// or a batch of inputs given as [EmbeddingParams]
  ///
  /// It uses [embeddings endpoint](https://docs.mistral.ai/api/#operation/createEmbedding) from the Mistral AI API.
  ///
  /// Throws [MistralAIClientException] if request fails.
  Future<Embeddings> embeddings(EmbeddingParams params) async => _requestJson(
        client: _client,
        apiKey: apiKey,
        request: http.Request(
          'POST',
          _apiUrlFactory.embeddings(),
        )..body = jsonEncode(params.toJson()),
        fromJson: Embeddings.fromJson,
        timeout: timeout,
      );
}
