/// Simple exception class for Mistral AI Client exceptions.
class MistralAIClientException implements Exception {
  MistralAIClientException([this.message = '']);

  final String message;

  @override
  String toString() => 'MistralAIClientException: $message';
}
