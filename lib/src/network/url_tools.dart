class MistralAPIEndpoints {
  static const String baseUrl = 'https://api.mistral.ai';
  static const String listModels = '/v1/models';
  static const String embeddings = '/v1/embeddings';
  static const String chatCompletions = '/v1/chat/completions';
  static const String fimCompletions = '/v1/fim/completions';
  static const String files = '/v1/files';
  static const String jobs = '/v1/fine_tuning/jobs';
}

class MistralAIUrlFactory {
  MistralAIUrlFactory({
    String baseUrl = MistralAPIEndpoints.baseUrl,
    String listModelsPath = MistralAPIEndpoints.listModels,
    String embeddingsPath = MistralAPIEndpoints.embeddings,
    String chatCompletionsPath = MistralAPIEndpoints.chatCompletions,
    String fimCompletionsPath = MistralAPIEndpoints.fimCompletions,
    String filesPath = MistralAPIEndpoints.files,
    String jobsPath = MistralAPIEndpoints.jobs,
  })  : _chatCompletionsPath = chatCompletionsPath,
        _embeddingsPath = embeddingsPath,
        _listModelsPath = listModelsPath,
        _fimCompletionsPath = fimCompletionsPath,
        _filesPath = filesPath,
        _jobsPath = jobsPath,
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
        ),
        assert(
          fimCompletionsPath.isNotEmpty,
          'fimCompletionsPath cannot be empty',
        ),
        assert(
          fimCompletionsPath.startsWith('/'),
          'fimCompletionsPath must start with "/"',
        ),
        assert(
          filesPath.isNotEmpty,
          'filesPath cannot be empty',
        ),
        assert(
          filesPath.startsWith('/'),
          'filesPath must start with "/"',
        ),
        assert(
          jobsPath.isNotEmpty,
          'jobsPath cannot be empty',
        ),
        assert(
          jobsPath.startsWith('/'),
          'jobsPath must start with "/"',
        );

  final String _baseUrl;
  final String _listModelsPath;
  final String _embeddingsPath;
  final String _chatCompletionsPath;
  final String _fimCompletionsPath;
  final String _filesPath;
  final String _jobsPath;

  Uri listModels() => _parseEndpoint(_listModelsPath);

  Uri embeddings() => _parseEndpoint(_embeddingsPath);

  Uri chatCompletions() => _parseEndpoint(_chatCompletionsPath);

  Uri fimCompletions() => _parseEndpoint(_fimCompletionsPath);

  Uri files() => _parseEndpoint(_filesPath);

  Uri file(String id) => _parseEndpoint('$_filesPath/$id');

  Uri jobs() => _parseEndpoint(_jobsPath);

  Uri job(String id) => _parseEndpoint('$_jobsPath/$id');

  Uri jobCancel(String id) => _parseEndpoint('$_jobsPath/$id/cancel');

  Uri _parseEndpoint(String endpoint) => Uri.parse('$_baseUrl$endpoint');
}
