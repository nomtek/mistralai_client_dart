import 'package:meta/meta.dart';
import 'package:mistralai_client_dart/src/models/chat_completion.dart';

/// Params are referring to params from official
/// [Mistral AI API docs](https://docs.mistral.ai/api/#operation/createChatCompletion)
@immutable
class ChatParams {
  /// Creates a new instance of [ChatParams].
  ///
  /// [model] model the name of the model to chat with, e.g. mistral-tiny
  ///
  /// [messages] messages an array of messages to chat with, e.g.
  /// [{role: 'user', content: 'What is the best French cheese?'}]
  ///
  /// [temperature] temperature the temperature to use for sampling, e.g. 0.5.
  ///
  /// [topP] the cumulative probability of tokens to generate, e.g. 0.9.
  /// Defaults to None.
  ///
  /// [maxTokens]  the maximum number of tokens to generate, e.g. 100. Defaults
  /// to None.
  ///
  /// [safePrompt]  whether to use safe prompt, e.g. true. Defaults to False.
  ///
  /// [randomSeed]  the random seed to use for sampling, e.g.
  /// 42. Defaults to None.
  const ChatParams({
    required this.model,
    required this.messages,
    this.temperature,
    this.topP,
    this.maxTokens,
    this.safePrompt,
    this.randomSeed,
  })  : assert(messages.length > 0, 'messages cannot be empty'),
        assert(
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

  final String model;
  final List<ChatMessage> messages;
  final double? temperature;
  final double? topP;
  final int? maxTokens;
  final bool? safePrompt;
  final int? randomSeed;

  @override
  String toString() => 'ChatParams{model: $model, messages: $messages, '
      'temperature: $temperature, topP: $topP, maxTokens: $maxTokens, '
      'safePrompt: $safePrompt, randomSeed: $randomSeed}';
}
