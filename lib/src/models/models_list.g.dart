// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelsList _$ModelsListFromJson(Map<String, dynamic> json) => ModelsList(
      object: json['object'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => ModelsListData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ModelsListToJson(ModelsList instance) =>
    <String, dynamic>{
      'object': instance.object,
      'data': instance.data,
    };

ModelsListData _$ModelsListDataFromJson(Map<String, dynamic> json) =>
    ModelsListData(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      ownedBy: json['owned_by'] as String,
    );

Map<String, dynamic> _$ModelsListDataToJson(ModelsListData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'owned_by': instance.ownedBy,
    };