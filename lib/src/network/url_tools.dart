part of '../mistralai_client_dart_base.dart';

class MistralAPIEndpoints {
  static const String listModels = '/v1/models';
  static const String embeddings = '/v1/embeddings';
  static const String chatCompletions = '/v1/chat/completions';
  static const String baseUrl = 'https://api.mistral.ai';
}

class MistralAIUrlFactory {
  MistralAIUrlFactory({
    String baseUrl = MistralAPIEndpoints.baseUrl,
    String listModelsPath = MistralAPIEndpoints.listModels,
    String embeddingsPath = MistralAPIEndpoints.embeddings,
    String chatCompletionsPath = MistralAPIEndpoints.chatCompletions,
  })  : _chatCompletionsPath = chatCompletionsPath,
        _embeddingsPath = embeddingsPath,
        _listModelsPath = listModelsPath,
        _baseUrl = baseUrl,
        assert(baseUrl.isNotEmpty, 'baseUrl cannot be empty'),
        assert(!baseUrl.endsWith('/'), 'baseUrl must not end with "/"'),
        assert(listModelsPath.isNotEmpty, 'listModelsPath cannot be empty'),
        assert(
          listModelsPath.startsWith('/'),
          'listModelsPath must start with "/"',
        ),
        assert(embeddingsPath.isNotEmpty, 'embeddingsPath cannot be empty'),
        assert(
          embeddingsPath.startsWith('/'),
          'embeddingsPath must start with "/"',
        ),
        assert(
          chatCompletionsPath.isNotEmpty,
          'chatCompletionsPath cannot be empty',
        ),
        assert(
          chatCompletionsPath.startsWith('/'),
          'chatCompletionsPath must start with "/"',
        );

  final String _baseUrl;
  final String _listModelsPath;
  final String _embeddingsPath;
  final String _chatCompletionsPath;

  Uri listModels() => _parseEndpint(_listModelsPath);

  Uri embeddings() => _parseEndpint(_embeddingsPath);

  Uri chatCompletions() => _parseEndpint(_chatCompletionsPath);

  Uri _parseEndpint(String endpoint) => Uri.parse('$_baseUrl$endpoint');
}
