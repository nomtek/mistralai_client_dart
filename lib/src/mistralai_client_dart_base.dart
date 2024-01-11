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

  Future<List<String>> listModels() {
    return Future.value([]);
  }

  Future<String> chat() {
    return Future.value('');
  }

  Future<String> streamChat() {
    return Future.value('');
  }

  Future<String> embednings() {
    return Future.value('');
  }
}
