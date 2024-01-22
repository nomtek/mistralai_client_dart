import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'embeddings.g.dart';

/// EmbeddingParams are referring to embeddings params from official
/// [Mistral AI API docs](https://docs.mistral.ai/api/#operation/createEmbedding)
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

  /// the embedding model to use, e.g. mistral-embed
  final String model;

  /// list of strings to embed, e.g. `['What is the best French cheese?']`.
  final List<String> input;

  /// the format of the output data. e.g. 'float'
  @JsonKey(name: 'encoding_format')
  final String encodingFormat;

  Map<String, dynamic> toJson() => _$EmbeddingParamsToJson(this);

  @override
  String toString() => 'EmbeddingParams{model: $model, input: $input, '
      'encodingFormat: $encodingFormat}';
}

/// Represents an embeddings result.
@immutable
@JsonSerializable()
class EmbeddingsResult {
  const EmbeddingsResult({
    required this.id,
    required this.object,
    required this.data,
    required this.model,
    required this.usage,
  });

  factory EmbeddingsResult.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingsResultFromJson(json);
  final String id;
  final String object;
  final List<EmbeddingsData> data;
  final String model;
  final EmbeddingsUsage usage;

  Map<String, dynamic> toJson() => _$EmbeddingsResultToJson(this);

  @override
  String toString() =>
      'EmbeddingsResult{id: $id, object: $object, data: $data, model: $model, '
      'usage: $usage}';
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

  @override
  String toString() =>
      'EmbeddingsData{object: $object, embedding: $embedding, index: $index}';
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

  @override
  String toString() =>
      'EmbeddingsUsage{promptTokens: $promptTokens, totalTokens: $totalTokens}';
}
