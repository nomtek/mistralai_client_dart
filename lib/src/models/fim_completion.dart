
import 'package:json_annotation/json_annotation.dart';

part 'fim_completion.g.dart';

@JsonSerializable(includeIfNull: false)
class FimCompletionParams {
  FimCompletionParams({
    required this.model,
    required this.prompt,
    this.suffix,
    this.temperature,
    this.maxTokens,
    this.topP,
    this.randomSeed,
    this.stop,
    this.stream,
  });

  factory FimCompletionParams.fromJson(Map<String, dynamic> json) =>
      _$FimCompletionParamsFromJson(json);

  final String model;
  final String prompt;
  final String? suffix;
  final double? temperature;
  @JsonKey(name: 'max_tokens')
  final int? maxTokens;
  @JsonKey(name: 'top_p')
  final double? topP;
  @JsonKey(name: 'random_seed')
  final int? randomSeed;
  final List<String>? stop;
  final bool? stream;

  Map<String, dynamic> toJson() => _$FimCompletionParamsToJson(this);
}
