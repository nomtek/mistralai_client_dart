// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatCompletionParams _$ChatCompletionParamsFromJson(
        Map<String, dynamic> json) =>
    ChatCompletionParams(
      model: json['model'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: (json['top_p'] as num?)?.toDouble(),
      maxTokens: json['max_tokens'] as int?,
      stream: json['stream'] as bool?,
      safeMode: json['safe_mode'] as bool?,
      randomSeed: json['random_seed'] as int?,
    );

Map<String, dynamic> _$ChatCompletionParamsToJson(
    ChatCompletionParams instance) {
  final val = <String, dynamic>{
    'model': instance.model,
    'messages': instance.messages,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('temperature', instance.temperature);
  writeNotNull('top_p', instance.topP);
  writeNotNull('max_tokens', instance.maxTokens);
  writeNotNull('stream', instance.stream);
  writeNotNull('safe_mode', instance.safeMode);
  writeNotNull('random_seed', instance.randomSeed);
  return val;
}

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => ChatMessage(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$ChatMessageToJson(ChatMessage instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };

ChatCompletionResult _$ChatCompletionResultFromJson(
        Map<String, dynamic> json) =>
    ChatCompletionResult(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: CompletionUsage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatCompletionResultToJson(
        ChatCompletionResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
      'usage': instance.usage,
    };

Choice _$ChoiceFromJson(Map<String, dynamic> json) => Choice(
      index: json['index'] as int,
      finishReason: json['finish_reason'] as String,
      message: ChatMessage.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChoiceToJson(Choice instance) => <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finish_reason': instance.finishReason,
    };

CompletionUsage _$CompletionUsageFromJson(Map<String, dynamic> json) =>
    CompletionUsage(
      promptTokens: json['prompt_tokens'] as int,
      completionTokens: json['completion_tokens'] as int,
      totalTokens: json['total_tokens'] as int,
    );

Map<String, dynamic> _$CompletionUsageToJson(CompletionUsage instance) =>
    <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
    };

ChatCompletionChunkResult _$ChatCompletionChunkResultFromJson(
        Map<String, dynamic> json) =>
    ChatCompletionChunkResult(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoiceChunk.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatCompletionChunkResultToJson(
        ChatCompletionChunkResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
    };

ChoiceChunk _$ChoiceChunkFromJson(Map<String, dynamic> json) => ChoiceChunk(
      index: json['index'] as int,
      delta: json['delta'] == null
          ? null
          : DeltaMessage.fromJson(json['delta'] as Map<String, dynamic>),
      finishReason: json['finish_reason'] as String?,
      usage: json['usage'] == null
          ? null
          : CompletionUsage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChoiceChunkToJson(ChoiceChunk instance) =>
    <String, dynamic>{
      'index': instance.index,
      'delta': instance.delta,
      'usage': instance.usage,
      'finish_reason': instance.finishReason,
    };

DeltaMessage _$DeltaMessageFromJson(Map<String, dynamic> json) => DeltaMessage(
      role: json['role'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$DeltaMessageToJson(DeltaMessage instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };
