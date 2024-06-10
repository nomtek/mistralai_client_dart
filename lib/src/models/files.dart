import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'files.g.dart';

@JsonEnum(fieldRename: FieldRename.kebab)
enum Purpose {
  fineTune,
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class FileObject {
  const FileObject({
    required this.id,
    required this.object,
    required this.bytes,
    required this.createdAt,
    required this.filename,
    this.purpose,
  });

  factory FileObject.fromJson(Map<String, dynamic> json) =>
      _$FileObjectFromJson(json);

  final String id;
  final String object;
  final int bytes;
  final int createdAt;
  final String filename;
  final Purpose? purpose;

  @override
  String toString() {
    return 'FileObject{id: $id, object: $object, bytes: $bytes, '
        'createdAt: $createdAt, filename: $filename, purpose: $purpose}';
  }
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class FileObjects {
  const FileObjects({
    required this.data,
    this.object = 'list',
  });

  factory FileObjects.fromJson(Map<String, dynamic> json) =>
      _$FileObjectsFromJson(json);

  final List<FileObject> data;
  final String object;

  @override
  String toString() {
    return 'FileObjects{data: $data, object: $object}';
  }
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class FileDeleted {
  const FileDeleted({
    required this.id,
    required this.object,
    required this.deleted,
  });

  factory FileDeleted.fromJson(Map<String, dynamic> json) =>
      _$FileDeletedFromJson(json);

  final String id;
  final String object;
  final bool deleted;

  @override
  String toString() {
    return 'FileDeleted{id: $id, object: $object, deleted: $deleted}';
  }
}
