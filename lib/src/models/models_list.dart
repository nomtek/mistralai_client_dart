import 'package:json_annotation/json_annotation.dart';

part 'models_list.g.dart';

@JsonSerializable()
class ModelsList {
  ModelsList({
    required this.object,
    required this.data,
  });

  factory ModelsList.fromJson(Map<String, dynamic> json) =>
      _$ModelsListFromJson(json);
  final String object;
  final List<ModelsListData> data;

  Map<String, dynamic> toJson() => _$ModelsListToJson(this);
}

@JsonSerializable()
class ModelsListData {
  ModelsListData({
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
