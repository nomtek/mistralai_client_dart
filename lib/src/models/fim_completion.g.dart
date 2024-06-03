// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fim_completion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FimCompletionParams _$FimCompletionParamsFromJson(Map<String, dynamic> json) =>
    FimCompletionParams(
      model: json['model'] as String,
      prompt: json['prompt'] as String,
      suffix: json['suffix'] as String?,
      temperature: (json['temperature'] as num?)?.toDouble(),
      maxTokens: json['max_tokens'] as int?,
      topP: (json['top_p'] as num?)?.toDouble(),
      randomSeed: json['random_seed'] as int?,
      stop: (json['stop'] as List<dynamic>?)?.map((e) => e as String).toList(),
      stream: json['stream'] as bool?,
    );

Map<String, dynamic> _$FimCompletionParamsToJson(FimCompletionParams instance) {
  final val = <String, dynamic>{
    'model': instance.model,
    'prompt': instance.prompt,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('suffix', instance.suffix);
  writeNotNull('temperature', instance.temperature);
  writeNotNull('max_tokens', instance.maxTokens);
  writeNotNull('top_p', instance.topP);
  writeNotNull('random_seed', instance.randomSeed);
  writeNotNull('stop', instance.stop);
  writeNotNull('stream', instance.stream);
  return val;
}
