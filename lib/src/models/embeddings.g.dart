// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embeddings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmbeddingParams _$EmbeddingParamsFromJson(Map<String, dynamic> json) =>
    EmbeddingParams(
      model: json['model'] as String,
      input: (json['input'] as List<dynamic>).map((e) => e as String).toList(),
      encodingFormat: json['encoding_format'] as String? ?? 'float',
    );

Map<String, dynamic> _$EmbeddingParamsToJson(EmbeddingParams instance) =>
    <String, dynamic>{
      'model': instance.model,
      'input': instance.input,
      'encoding_format': instance.encodingFormat,
    };

EmbeddingsResult _$EmbeddingsResultFromJson(Map<String, dynamic> json) =>
    EmbeddingsResult(
      id: json['id'] as String,
      object: json['object'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => EmbeddingsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      model: json['model'] as String,
      usage: EmbeddingsUsage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmbeddingsResultToJson(EmbeddingsResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'data': instance.data,
      'model': instance.model,
      'usage': instance.usage,
    };

EmbeddingsData _$EmbeddingsDataFromJson(Map<String, dynamic> json) =>
    EmbeddingsData(
      object: json['object'] as String,
      embedding: (json['embedding'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      index: json['index'] as int,
    );

Map<String, dynamic> _$EmbeddingsDataToJson(EmbeddingsData instance) =>
    <String, dynamic>{
      'object': instance.object,
      'embedding': instance.embedding,
      'index': instance.index,
    };

EmbeddingsUsage _$EmbeddingsUsageFromJson(Map<String, dynamic> json) =>
    EmbeddingsUsage(
      promptTokens: json['prompt_tokens'] as int,
      totalTokens: json['total_tokens'] as int,
    );

Map<String, dynamic> _$EmbeddingsUsageToJson(EmbeddingsUsage instance) =>
    <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'total_tokens': instance.totalTokens,
    };
