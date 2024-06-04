/// Parameters for the fill-in-the-middle completion endpoint.
///
/// For additional details, see the [Mistral API documentation](https://docs.mistral.ai/api/#operation/createFimCompletion).
class FimParams {
  FimParams({
    required this.model,
    required this.prompt,
    this.suffix,
    this.temperature,
    this.maxTokens,
    this.topP,
    this.randomSeed,
    this.stop,
  })  : assert(
          temperature == null || (temperature >= 0 && temperature <= 1),
          'temperature must be between 0 and 1',
        ),
        assert(
          topP == null || (topP >= 0 && topP <= 1),
          'topP must be between 0 and 1',
        ),
        assert(
          maxTokens == null || maxTokens >= 0,
          'maxTokens must be greater or equal to 0',
        );

  /// the name of the model to get completion with, e.g. codestral-latest
  final String model;

  /// the prompt to complete
  final String prompt;

  /// the suffix to append to the prompt for fill-in-the-middle completion
  final String? suffix;

  /// the temperature to use for sampling, e.g. 0.5.
  final double? temperature;

  /// the maximum number of tokens to generate, e.g. 100. Defaults to null.
  final int? maxTokens;

  /// the cumulative probability of tokens to generate, e.g. 0.9.
  final double? topP;

  /// the random seed to use for sampling, e.g. 42. Defaults to null.
  final int? randomSeed;

  /// a list of tokens to stop generation at, e.g. ['/n/n']
  final List<String>? stop;

  @override
  String toString() {
    return 'FimParams(model: $model, prompt: $prompt, suffix: $suffix, '
        'temperature: $temperature, maxTokens: $maxTokens, topP: $topP, '
        'randomSeed: $randomSeed, stop: $stop)';
  }
}
