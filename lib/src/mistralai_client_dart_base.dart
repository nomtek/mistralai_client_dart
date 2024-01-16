import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart' as retry;
import 'package:mistralai_client_dart/src/exceptions.dart';
import 'package:mistralai_client_dart/src/models/models.dart';
import 'package:mistralai_client_dart/src/network/url_tools.dart';

part 'network/request.dart';

// FIXME(lgawron): create a common request function for all requests
// FIXME(lgawron): add tests for all requests
// TODO(lgawron): check all names for consistency and better readability
// TODO(lgawron): discuss and implement better error handling
// TODO(lgawron): add more documentation
// TODO(lgawron): move headers to separate class

// TODO(lgawron): Handle Json parsing errors
// TODO(lgwaron): Create custom client expcetions

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
        _client,
        _createHeaders(apiKey: apiKey),
        http.Request('GET', _apiUrlFactory.listModels()),
        ListModelsResult.fromJson,
      );

  /// Returns a chat completion for given [params].
  ///
  /// Sends a request to
  /// [Mistral AI API](https://docs.mistral.ai/api/#operation/createChatCompletion)
  /// to create chat completions.
  ///
  /// Throws [MistralAIClientException] if the request fails.
  Future<ChatCompletion> chat(ChatParams params) async => _requestJson(
        _client,
        _createHeaders(apiKey: apiKey),
        http.Request(
          'POST',
          _apiUrlFactory.chatCompletions(),
        )..body = jsonEncode(
            _mapChatParamsToRequestParams(params, stream: false),
          ),
        ChatCompletion.fromJson,
      ).timeout(timeout);

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
  Stream<ChatCompletionChunk> streamChat(ChatParams params) async* {
    try {
      final headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      };

      // TODO(lgawron): to add tests for this method we need to mock http client
      // cleanup in https://github.com/nomtek/mistralai_client_dart/issues/13
      final request = http.Request('POST', _apiUrlFactory.chatCompletions())
        ..headers.addAll(headers)
        ..body = jsonEncode(
          _mapChatParamsToRequestParams(params, stream: true),
        );
      // use send instead of post to be able to read stream response
      final response = await _client.send(request).timeout(timeout);

      final responseStream = response.stream.transform(utf8.decoder);
      const dataPrefix = 'data: ';
      await for (final chunk in responseStream) {
        for (final chunkLine in chunk.split('\n')) {
          // we are only interested with lines starting with dataPrefix
          if (chunkLine.startsWith(dataPrefix)) {
            // skip dataPrefix and check data
            final dataContent = chunkLine.substring(dataPrefix.length).trim();
            // check if data stream is not done
            if (dataContent != '[DONE]') {
              // assume that data is json
              yield ChatCompletionChunk.fromJson(
                jsonDecode(dataContent) as Map<String, dynamic>,
              );
            }
          }
        }
      }
    } catch (e) {
      throw MistralAIClientException('Error while streaming chat: $e');
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

  /// Returns [Embeddings] for a single input
  /// or a batch of inputs given as [EmbeddingParams]
  ///
  /// It uses [embeddings endpoint](https://docs.mistral.ai/api/#operation/createEmbedding) from the Mistral AI API.
  ///
  /// Throws [MistralAIClientException] if request fails.
  Future<Embeddings> embeddings(EmbeddingParams params) async => _requestJson(
        _client,
        _createHeaders(apiKey: apiKey),
        http.Request(
          'POST',
          _apiUrlFactory.embeddings(),
        )..body = jsonEncode(params.toJson()),
        Embeddings.fromJson,
      ).timeout(timeout);
}
