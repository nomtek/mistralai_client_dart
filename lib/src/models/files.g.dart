// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileObject _$FileObjectFromJson(Map<String, dynamic> json) => FileObject(
      id: json['id'] as String,
      object: json['object'] as String,
      bytes: json['bytes'] as int,
      createdAt: json['created_at'] as int,
      filename: json['filename'] as String,
      purpose: $enumDecodeNullable(_$PurposeEnumMap, json['purpose']),
    );

Map<String, dynamic> _$FileObjectToJson(FileObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'bytes': instance.bytes,
      'created_at': instance.createdAt,
      'filename': instance.filename,
      'purpose': _$PurposeEnumMap[instance.purpose],
    };

const _$PurposeEnumMap = {
  Purpose.fineTune: 'fine-tune',
};

FileObjects _$FileObjectsFromJson(Map<String, dynamic> json) => FileObjects(
      data: (json['data'] as List<dynamic>)
          .map((e) => FileObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      object: json['object'] as String? ?? 'list',
    );

Map<String, dynamic> _$FileObjectsToJson(FileObjects instance) =>
    <String, dynamic>{
      'data': instance.data,
      'object': instance.object,
    };

FileDeleted _$FileDeletedFromJson(Map<String, dynamic> json) => FileDeleted(
      id: json['id'] as String,
      object: json['object'] as String,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$FileDeletedToJson(FileDeleted instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };
