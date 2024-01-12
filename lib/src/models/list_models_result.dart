import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'list_models_result.g.dart';

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
  final List<ModelsListData> data;

  Map<String, dynamic> toJson() => _$ListModelsResultToJson(this);
}

@immutable
@JsonSerializable()
class ModelsListData {
  const ModelsListData({
    required this.id,
    required this.object,
    required this.created,
    required this.ownedBy,
  });

  factory ModelsListData.fromJson(Map<String, dynamic> json) =>
      _$ModelsListDataFromJson(json);
  final String id;
  final String object;
  final int created;
  @JsonKey(name: 'owned_by')
  final String ownedBy;

  Map<String, dynamic> toJson() => _$ModelsListDataToJson(this);
}
