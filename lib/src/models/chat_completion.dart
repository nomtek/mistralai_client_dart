import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'chat_completion.g.dart';

@JsonSerializable()
@immutable
class ChatCompletionParams {
  const ChatCompletionParams({
    required this.model,
    required this.messages,
    required this.temperature,
    required this.topP,
    required this.maxTokens,
    required this.stream,
    required this.safeMode,
    required this.randomSeed,
  });

  factory ChatCompletionParams.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionParamsFromJson(json);

  final String model;
  final List<Message> messages;
  final double temperature;
  @JsonKey(name: 'top_p')
  final int topP;
  @JsonKey(name: 'max_tokens')
  final int maxTokens;
  final bool stream;
  @JsonKey(name: 'safe_mode')
  final bool safeMode;
  @JsonKey(name: 'random_seed')
  final dynamic randomSeed;

  Map<String, dynamic> toJson() => _$ChatCompletionParamsToJson(this);
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
}
