import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'chat_completion.g.dart';

/// Represents a chat completion request params.
//
// `includeIfNull` is used to omit null values from the JSON output
// when sending a request to the API.
@JsonSerializable(includeIfNull: false)
@immutable
class ChatCompletionParams {
  ChatCompletionParams({
    required this.model,
    required this.messages,
    this.temperature,
    this.topP,
    this.maxTokens,
    this.stream,
    this.safePrompt,
    this.randomSeed,
    this.tools,
    this.toolChoice,
    String? responseFormat,
  }) : responseFormat =
            responseFormat != null ? {'type': responseFormat} : null;

  factory ChatCompletionParams.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionParamsFromJson(json);

  final String model;
  final List<ChatMessage> messages;
  final double? temperature;
  @JsonKey(name: 'top_p')
  final double? topP;
  @JsonKey(name: 'max_tokens')
  final int? maxTokens;
  final bool? stream;
  @JsonKey(name: 'safe_prompt')
  final bool? safePrompt;
  @JsonKey(name: 'random_seed')
  final int? randomSeed;
  final List<Map<String, Object>>? tools;
  @JsonKey(name: 'tool_choice')
  final String? toolChoice;
  @JsonKey(name: 'response_format')
  final Map<String, String>? responseFormat;

  Map<String, dynamic> toJson() => _$ChatCompletionParamsToJson(this);

  @override
  String toString() =>
      'ChatCompletionParams{model: $model, messages: $messages, '
      'temperature: $temperature, topP: $topP, maxTokens: $maxTokens, '
      'stream: $stream, safePrompt: $safePrompt, randomSeed: $randomSeed}, '
      'tools: $tools, toolChoice: $toolChoice, responseFormat: $responseFormat';
}

@JsonSerializable()
@immutable
class ChatMessage {
  const ChatMessage({
    required this.role,
    required this.content,
    this.name,
    this.toolCalls,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  final String role;
  final String content;
  final String? name;
  @JsonKey(name: 'tool_calls')
  final List<ToolCall>? toolCalls;

  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);

  @override
  String toString() => 'ChatMessage{role: $role, content: $content, '
      'name: $name, toolCalls: $toolCalls}';
}

/// Represents a chat completion result.
///
/// To read the message for a user, use `choices[i].message.content`.
@JsonSerializable()
@immutable
class ChatCompletionResult {
  const ChatCompletionResult({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
  });

  factory ChatCompletionResult.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResultFromJson(json);

  final String id;
  final String object;
  final int created;
  final String model;
  final List<Choice> choices;
  final CompletionUsage usage;

  Map<String, dynamic> toJson() => _$ChatCompletionResultToJson(this);

  @override
  String toString() =>
      'ChatCompletionResult{id: $id, object: $object, created: $created, '
      'model: $model, choices: $choices, usage: $usage}';
}

@JsonSerializable()
@immutable
class Choice {
  const Choice({
    required this.index,
    required this.finishReason,
    required this.message,
  });

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);

  final int index;
  final ChatMessage message;
  @JsonKey(name: 'finish_reason')
  final String finishReason;

  Map<String, dynamic> toJson() => _$ChoiceToJson(this);

  @override
  String toString() =>
      'Choice{index: $index, finishReason: $finishReason, message: $message}';
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
  String toString() => 'CompletionUsage{promptTokens: $promptTokens, '
      'completionTokens: $completionTokens, totalTokens: $totalTokens}';
}

/// Represents a chat completion chunk.
///
/// This is a response from the API when using stream mode.
@JsonSerializable()
@immutable
class ChatCompletionChunkResult {
  const ChatCompletionChunkResult({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
  });

  factory ChatCompletionChunkResult.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionChunkResultFromJson(json);

  final String id;
  final String object;
  final int created;
  final String model;
  final List<ChoiceChunk> choices;

  Map<String, dynamic> toJson() => _$ChatCompletionChunkResultToJson(this);

  @override
  String toString() =>
      'ChatCompletionChunkResult{id: $id, object: $object, created: $created, '
      'model: $model, choices: $choices}';
}

@JsonSerializable()
@immutable
class ChoiceChunk {
  const ChoiceChunk({
    required this.index,
    this.delta,
    this.finishReason,
    this.usage,
  });

  factory ChoiceChunk.fromJson(Map<String, dynamic> json) =>
      _$ChoiceChunkFromJson(json);

  final int index;
  final DeltaMessage? delta;
  final CompletionUsage? usage;
  @JsonKey(name: 'finish_reason')
  final String? finishReason;

  Map<String, dynamic> toJson() => _$ChoiceChunkToJson(this);

  @override
  String toString() =>
      'ChoiceChunk{index: $index, delta: $delta, usage: $usage, '
      'finishReason: $finishReason}';
}

@JsonSerializable()
@immutable
class DeltaMessage {
  const DeltaMessage({
    this.role,
    this.content,
    this.name,
    this.toolCalls,
  });

  factory DeltaMessage.fromJson(Map<String, dynamic> json) =>
      _$DeltaMessageFromJson(json);

  final String? role;
  final String? content;
  final String? name;
  @JsonKey(name: 'tool_calls')
  final List<ToolCall>? toolCalls;

  Map<String, dynamic> toJson() => _$DeltaMessageToJson(this);

  @override
  String toString() => 'DeltaMessage{role: $role, content: $content, '
      'name: $name, toolCalls: $toolCalls}';
}

@JsonSerializable()
@immutable
class ToolCall {
  const ToolCall({
    String? id,
    String? type,
    this.function,
  })  : _id = id,
        _type = type;

  factory ToolCall.fromJson(Map<String, dynamic> json) =>
      _$ToolCallFromJson(json);

  String get id => _id ?? 'null';
  final String? _id;

  String get type => _type ?? 'function';
  final String? _type;

  final FunctionCall? function;

  Map<String, dynamic> toJson() => _$ToolCallToJson(this);

  @override
  String toString() => 'ToolCall{id: $id, type: $type, function: $function}';
}

@JsonSerializable()
@immutable
class FunctionCall {
  const FunctionCall({
    required this.name,
    required this.arguments,
  });

  factory FunctionCall.fromJson(Map<String, dynamic> json) =>
      _$FunctionCallFromJson(json);

  final String name;
  final String arguments;

  Map<String, dynamic> toJson() => _$FunctionCallToJson(this);

  Map<String, dynamic> get argumentsMap =>
      jsonDecode(arguments) as Map<String, dynamic>;

  @override
  String toString() => 'FunctionCall{name: $name, arguments: $arguments}';
}
