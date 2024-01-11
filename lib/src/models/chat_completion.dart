import 'package:json_annotation/json_annotation.dart';

part 'chat_completion.g.dart';

@JsonSerializable()
class ChatCompletionParams {
  ChatCompletionParams({
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
  String model;
  List<Message> messages;
  double temperature;
  @JsonKey(name: 'top_p')
  int topP;
  @JsonKey(name: 'max_tokens')
  int maxTokens;
  bool stream;
  @JsonKey(name: 'safe_mode')
  bool safeMode;
  @JsonKey(name: 'random_seed')
  dynamic randomSeed;

  Map<String, dynamic> toJson() => _$ChatCompletionParamsToJson(this);
}

@JsonSerializable()
class Message {
  Message({
    required this.role,
    required this.content,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  String role;
  String content;

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}

@JsonSerializable()
class ChatCompletion {
  ChatCompletion({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
  });

  factory ChatCompletion.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionFromJson(json);
  String id;
  String object;
  int created;
  String model;
  List<Choice> choices;
  CompletionUsage usage;

  Map<String, dynamic> toJson() => _$ChatCompletionToJson(this);
}

@JsonSerializable()
class Choice {
  Choice({
    required this.index,
    required this.message,
    required this.finishReason,
  });

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
  int index;
  Message message;
  @JsonKey(name: 'finish_reason')
  String finishReason;

  Map<String, dynamic> toJson() => _$ChoiceToJson(this);
}

@JsonSerializable()
class CompletionUsage {
  CompletionUsage({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
  });

  factory CompletionUsage.fromJson(Map<String, dynamic> json) =>
      _$CompletionUsageFromJson(json);

  @JsonKey(name: 'prompt_tokens')
  int promptTokens;
  @JsonKey(name: 'completion_tokens')
  int completionTokens;
  @JsonKey(name: 'total_tokens')
  int totalTokens;

  Map<String, dynamic> toJson() => _$CompletionUsageToJson(this);
}
