import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'list_models_result.g.dart';

/// Represents a list of models.
@immutable
@JsonSerializable()
class ListModelsResult {
  const ListModelsResult({
    required this.object,
    required this.data,
  });

  factory ListModelsResult.fromJson(Map<String, dynamic> json) =>
      _$ListModelsResultFromJson(json);
  final String object;
  final List<ListModelsData> data;

  Map<String, dynamic> toJson() => _$ListModelsResultToJson(this);

  @override
  String toString() => 'ListModelsResult{object: $object, data: $data}';
}

@immutable
@JsonSerializable()
class ListModelsData {
  const ListModelsData({
    required this.id,
    required this.object,
    required this.created,
    required this.ownedBy,
  });

  factory ListModelsData.fromJson(Map<String, dynamic> json) =>
      _$ListModelsDataFromJson(json);
  final String id;
  final String object;
  final int created;
  @JsonKey(name: 'owned_by')
  final String ownedBy;

  Map<String, dynamic> toJson() => _$ListModelsDataToJson(this);

  @override
  String toString() =>
      'ListModelsData{id: $id, object: $object, created: $created, '
      'ownedBy: $ownedBy}';
}
