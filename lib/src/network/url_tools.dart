
class MistralAPIEndpoints {
  static const String listModels = '/v1/models';
  static const String embeddings = '/v1/embeddings';
  static const String chatCompletions = '/v1/chat/completions';
  static const String baseUrl = 'https://api.mistral.ai';
}

class MistraAIUrlFactory {
  MistraAIUrlFactory({
    this.baseUrl = MistralAPIEndpoints.baseUrl,
    this.listModelsPath = MistralAPIEndpoints.listModels,
    this.embeddingsPath = MistralAPIEndpoints.embeddings,
    this.chatCompletionsPath = MistralAPIEndpoints.chatCompletions,
  })  : assert(baseUrl.isNotEmpty, 'baseUrl cannot be empty'),
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

  final String baseUrl;
  final String listModelsPath;
  final String embeddingsPath;
  final String chatCompletionsPath;

  Uri listModels() => _parseEndpint(MistralAPIEndpoints.listModels);

  Uri embeddings() => _parseEndpint(MistralAPIEndpoints.embeddings);

  Uri chatCompletions() => _parseEndpint(MistralAPIEndpoints.chatCompletions);

  Uri _parseEndpint(String endpoint) => Uri.parse('$baseUrl$endpoint}');
}
