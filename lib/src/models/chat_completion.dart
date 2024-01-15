import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'chat_completion.g.dart';

@JsonSerializable(includeIfNull: false)
@immutable
class ChatCompletionParams {
  const ChatCompletionParams({
    required this.model,
    required this.messages,
    this.temperature,
    this.topP,
    this.maxTokens,
    this.stream,
    this.safeMode,
    this.randomSeed,
  });

  factory ChatCompletionParams.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionParamsFromJson(json);

  final String model;
  final List<Message> messages;
  final double? temperature;
  @JsonKey(name: 'top_p')
  final double? topP;
  @JsonKey(name: 'max_tokens')
  final int? maxTokens;
  final bool? stream;
  @JsonKey(name: 'safe_mode')
  final bool? safeMode;
  @JsonKey(name: 'random_seed')
  final int? randomSeed;

  Map<String, dynamic> toJson() => _$ChatCompletionParamsToJson(this);

  @override
  String toString() =>
      'ChatCompletionParams{model: $model, messages: $messages, '
      'temperature: $temperature, topP: $topP, maxTokens: $maxTokens, '
      'stream: $stream, safeMode: $safeMode, randomSeed: $randomSeed}';
}

@JsonSerializable()
@immutable
class Message {
  const Message({
    required this.role,
    required this.content,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  final String role;
  final String content;

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  String toString() => 'Message{role: $role, content: $content}';
}

@JsonSerializable()
@immutable
class ChatCompletion {
  const ChatCompletion({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
  });

  factory ChatCompletion.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionFromJson(json);

  final String id;
  final String object;
  final int created;
  final String model;
  final List<Choice> choices;
  final CompletionUsage usage;

  Map<String, dynamic> toJson() => _$ChatCompletionToJson(this);

  @override
  String toString() =>
      'ChatCompletion{id: $id, object: $object, created: $created, '
      'model: $model, choices: $choices, usage: $usage}';
}

@JsonSerializable()
@immutable
class Choice {
  const Choice({
    required this.index,
    required this.message,
    required this.finishReason,
  });

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);

  final int index;
  final Message message;
  @JsonKey(name: 'finish_reason')
  final String finishReason;

  Map<String, dynamic> toJson() => _$ChoiceToJson(this);

  @override
  String toString() =>
      'Choice{index: $index, message: $message, finishReason: $finishReason}';
}

@JsonSerializable()
@immutable
class CompletionUsage {
  const CompletionUsage({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
  });

  factory CompletionUsage.fromJson(Map<String, dynamic> json) =>
      _$CompletionUsageFromJson(json);

  @JsonKey(name: 'prompt_tokens')
  final int promptTokens;
  @JsonKey(name: 'completion_tokens')
  final int completionTokens;
  @JsonKey(name: 'total_tokens')
  final int totalTokens;

  Map<String, dynamic> toJson() => _$CompletionUsageToJson(this);

  @override
  String toString() =>
      'CompletionUsage{promptTokens: $promptTokens, '
      'completionTokens: $completionTokens, totalTokens: $totalTokens}';
}
