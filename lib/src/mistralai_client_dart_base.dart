import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart' as retry;
import 'package:mistralai_client_dart/src/exceptions.dart';
import 'package:mistralai_client_dart/src/models/models.dart';
import 'package:mistralai_client_dart/src/network/url_tools.dart';

part 'network/request.dart';
part 'models/mappers.dart';

/// Mistral AI Client enables to connect with [Mistral AI API](https://docs.mistral.ai/api/)
class MistralAIClient {
  /// Creates a new instance of [MistralAIClient].
  ///
  /// [apiUrlFactory] allows to override default [MistralAIUrlFactory].
  /// It can be used to override default paths for requests to Mistral AI API.
  /// It could be useful when trying to use a non-stable version of the API.
  ///
  /// If [apiUrlFactory] is provided then [baseUrl] is ignored.
  ///
  /// [httpClient] allows to inject http client.
  /// If not provided then default http client is used.
  /// It is used for testing purposes or when you want to use
  /// custom http client.
  MistralAIClient({
    required this.apiKey,
    this.baseUrl = MistralAPIEndpoints.baseUrl,
    this.timeout = const Duration(seconds: 120),
    this.maxRetries = 5,
    MistralAIUrlFactory? apiUrlFactory,
    http.Client? httpClient,
  })  : _httpClient = httpClient is retry.RetryClient
            ? httpClient
            : retry.RetryClient(
                httpClient ?? http.Client(),
                retries: maxRetries,
              ),
        _apiUrlFactory = apiUrlFactory ?? MistralAIUrlFactory(baseUrl: baseUrl);

  /// required to authenticate requests.
  final String apiKey;

  /// base url for all requests.
  final String baseUrl;

  /// maximum wait time for response.
  final Duration timeout;

  /// maximum number of retries for a single request.
  ///
  /// Client uses [retry.RetryClient] to retry requests.
  final int maxRetries;
  final MistralAIUrlFactory _apiUrlFactory;
  final http.Client _httpClient;

  /// Returns a list of the available models.
  ///
  /// Sends a request to
  /// [Mistral AI API](https://docs.mistral.ai/api/#operation/listModels)
  /// to get a list of the available models.
  ///
  /// Throws [MistralAIClientException] if the request fails.
  Future<ListModelsResult> listModels() async => _requestJson(
        client: _httpClient,
        apiKey: apiKey,
        request: http.Request('GET', _apiUrlFactory.listModels()),
        fromJson: ListModelsResult.fromJson,
        timeout: timeout,
      );

  /// Returns a chat completion.
  ///
  /// Sends a request to
  /// [Mistral AI API](https://docs.mistral.ai/api/#operation/createChatCompletion)
  /// to create chat completions.
  ///
  /// Throws [MistralAIClientException] if the request fails.
  Future<ChatCompletionResult> chat(ChatParams params) async => _requestJson(
        client: _httpClient,
        apiKey: apiKey,
        request: http.Request(
          'POST',
          _apiUrlFactory.chatCompletions(),
        )..body = jsonEncode(
            _mapChatParamsToRequestParams(params, stream: false),
          ),
        fromJson: ChatCompletionResult.fromJson,
        timeout: timeout,
      );

  /// Returns a stream of chat completion chunks.
  ///
  /// Chunks are small parts of the whole chat completion.
  /// They are supposed to be used to display chat completion in real time.
  ///
  /// Sends a request to
  /// [Mistral AI API](https://docs.mistral.ai/api/#operation/createChatCompletion)
  /// to create chat completions.
  ///
  /// Throws [MistralAIClientException] if the request fails.
  Stream<ChatCompletionChunkResult> chatStream(ChatParams params) =>
      _streamRequest(
        client: _httpClient,
        apiKey: apiKey,
        request: http.Request(
          'POST',
          _apiUrlFactory.chatCompletions(),
        )..body = jsonEncode(
            _mapChatParamsToRequestParams(params, stream: true),
          ),
        fromJson: ChatCompletionChunkResult.fromJson,
        timeout: timeout,
      );

  /// Returns [EmbeddingsResult] for a single input or a batch of inputs.
  ///
  /// Sends a request to
  /// [Mistral AI API](https://docs.mistral.ai/api/#operation/createEmbedding)
  /// to create embeddings.
  ///
  /// Throws [MistralAIClientException] if request fails.
  Future<EmbeddingsResult> embeddings(EmbeddingParams params) async =>
      _requestJson(
        client: _httpClient,
        apiKey: apiKey,
        request: http.Request(
          'POST',
          _apiUrlFactory.embeddings(),
        )..body = jsonEncode(params.toJson()),
        fromJson: EmbeddingsResult.fromJson,
        timeout: timeout,
      );

  /// Returns a fill in the middle completion.
  Future<ChatCompletionResult> fimCompletion(
    FimParams params,
  ) async => _requestJson(
        client: _httpClient,
        apiKey: apiKey,
        request: http.Request(
          'POST',
          _apiUrlFactory.fimCompletions(),
        )..body = jsonEncode(
            _mapFimParamsToRequestParams(params, stream: false),
          ),
        fromJson: ChatCompletionResult.fromJson,
        timeout: timeout,
      );

  /// Returns a stream of fill in the middle completion chunks.
  Stream<ChatCompletionChunkResult> fimCompletionStream(
    FimParams params,
  ) =>
       _streamRequest(
        client: _httpClient,
        apiKey: apiKey,
        request: http.Request(
          'POST',
          _apiUrlFactory.fimCompletions(),
        )..body = jsonEncode(
            _mapFimParamsToRequestParams(params, stream: true),
          ),
        fromJson: ChatCompletionChunkResult.fromJson,
        timeout: timeout,
      );

}
