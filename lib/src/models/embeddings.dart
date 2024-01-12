import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'embeddings.g.dart';

@immutable
@JsonSerializable()
class EmbeddingParams {
  const EmbeddingParams({
    required this.model,
    required this.input,
    required this.encodingFormat,
  });

  factory EmbeddingParams.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingParamsFromJson(json);
  final String model;
  final List<String> input;
  @JsonKey(name: 'encoding_format')
  final String encodingFormat;

  Map<String, dynamic> toJson() => _$EmbeddingParamsToJson(this);
}

@immutable
@JsonSerializable()
class Embeddings {
  const Embeddings({
    required this.id,
    required this.object,
    required this.data,
    required this.model,
    required this.usage,
  });

  factory Embeddings.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingsFromJson(json);
  final String id;
  final String object;
  final List<EmbeddingsData> data;
  final String model;
  final EmbeddingsUsage usage;

  Map<String, dynamic> toJson() => _$EmbeddingsToJson(this);
}

@immutable
@JsonSerializable()
class EmbeddingsData {
  const EmbeddingsData({
    required this.object,
    required this.embedding,
    required this.index,
  });

  factory EmbeddingsData.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingsDataFromJson(json);
  final String object;
  final List<double> embedding;
  final int index;

  Map<String, dynamic> toJson() => _$EmbeddingsDataToJson(this);
}

@immutable
@JsonSerializable()
class EmbeddingsUsage {
  const EmbeddingsUsage({
    required this.promptTokens,
    required this.totalTokens,
  });

  factory EmbeddingsUsage.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingsUsageFromJson(json);
  @JsonKey(name: 'prompt_tokens')
  final int promptTokens;
  @JsonKey(name: 'total_tokens')
  final int totalTokens;

  Map<String, dynamic> toJson() => _$EmbeddingsUsageToJson(this);
}
