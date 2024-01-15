import 'package:meta/meta.dart';
import 'package:mistralai_client_dart/src/models/chat_completion.dart';

/// Params are referring to params from official
/// [Mistral AI API docs](https://docs.mistral.ai/api/#operation/createChatCompletion)
@immutable
class ChatParams {
  const ChatParams({
    required this.model,
    required this.messages,
    this.temperature,
    this.topP,
    this.maxTokens,
    this.safeMode,
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
  final bool? safeMode;
  final int? randomSeed;

  @override
  String toString() => 'ChatParams{model: $model, messages: $messages, '
      'temperature: $temperature, topP: $topP, maxTokens: $maxTokens, '
      'safeMode: $safeMode, randomSeed: $randomSeed}';
}
