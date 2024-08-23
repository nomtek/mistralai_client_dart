// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteModelOut _$DeleteModelOutFromJson(Map<String, dynamic> json) {
  return _DeleteModelOut.fromJson(json);
}

/// @nodoc
mixin _$DeleteModelOut {
  /// The ID of the deleted model.
  String get id => throw _privateConstructorUsedError;

  /// The object type that was deleted
  String get object => throw _privateConstructorUsedError;

  /// The deletion status
  bool get deleted => throw _privateConstructorUsedError;

  /// Serializes this DeleteModelOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteModelOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteModelOutCopyWith<DeleteModelOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteModelOutCopyWith<$Res> {
  factory $DeleteModelOutCopyWith(
          DeleteModelOut value, $Res Function(DeleteModelOut) then) =
      _$DeleteModelOutCopyWithImpl<$Res, DeleteModelOut>;
  @useResult
  $Res call({String id, String object, bool deleted});
}

/// @nodoc
class _$DeleteModelOutCopyWithImpl<$Res, $Val extends DeleteModelOut>
    implements $DeleteModelOutCopyWith<$Res> {
  _$DeleteModelOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteModelOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteModelOutImplCopyWith<$Res>
    implements $DeleteModelOutCopyWith<$Res> {
  factory _$$DeleteModelOutImplCopyWith(_$DeleteModelOutImpl value,
          $Res Function(_$DeleteModelOutImpl) then) =
      __$$DeleteModelOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String object, bool deleted});
}

/// @nodoc
class __$$DeleteModelOutImplCopyWithImpl<$Res>
    extends _$DeleteModelOutCopyWithImpl<$Res, _$DeleteModelOutImpl>
    implements _$$DeleteModelOutImplCopyWith<$Res> {
  __$$DeleteModelOutImplCopyWithImpl(
      _$DeleteModelOutImpl _value, $Res Function(_$DeleteModelOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteModelOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? deleted = null,
  }) {
    return _then(_$DeleteModelOutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteModelOutImpl extends _DeleteModelOut {
  const _$DeleteModelOutImpl(
      {required this.id, this.object = 'model', this.deleted = true})
      : super._();

  factory _$DeleteModelOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteModelOutImplFromJson(json);

  /// The ID of the deleted model.
  @override
  final String id;

  /// The object type that was deleted
  @override
  @JsonKey()
  final String object;

  /// The deletion status
  @override
  @JsonKey()
  final bool deleted;

  @override
  String toString() {
    return 'DeleteModelOut(id: $id, object: $object, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteModelOutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, deleted);

  /// Create a copy of DeleteModelOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteModelOutImplCopyWith<_$DeleteModelOutImpl> get copyWith =>
      __$$DeleteModelOutImplCopyWithImpl<_$DeleteModelOutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteModelOutImplToJson(
      this,
    );
  }
}

abstract class _DeleteModelOut extends DeleteModelOut {
  const factory _DeleteModelOut(
      {required final String id,
      final String object,
      final bool deleted}) = _$DeleteModelOutImpl;
  const _DeleteModelOut._() : super._();

  factory _DeleteModelOut.fromJson(Map<String, dynamic> json) =
      _$DeleteModelOutImpl.fromJson;

  /// The ID of the deleted model.
  @override
  String get id;

  /// The object type that was deleted
  @override
  String get object;

  /// The deletion status
  @override
  bool get deleted;

  /// Create a copy of DeleteModelOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteModelOutImplCopyWith<_$DeleteModelOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HTTPValidationError _$HTTPValidationErrorFromJson(Map<String, dynamic> json) {
  return _HTTPValidationError.fromJson(json);
}

/// @nodoc
mixin _$HTTPValidationError {
  /// No Description
  @JsonKey(includeIfNull: false)
  List<ValidationError>? get detail => throw _privateConstructorUsedError;

  /// Serializes this HTTPValidationError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HTTPValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HTTPValidationErrorCopyWith<HTTPValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HTTPValidationErrorCopyWith<$Res> {
  factory $HTTPValidationErrorCopyWith(
          HTTPValidationError value, $Res Function(HTTPValidationError) then) =
      _$HTTPValidationErrorCopyWithImpl<$Res, HTTPValidationError>;
  @useResult
  $Res call({@JsonKey(includeIfNull: false) List<ValidationError>? detail});
}

/// @nodoc
class _$HTTPValidationErrorCopyWithImpl<$Res, $Val extends HTTPValidationError>
    implements $HTTPValidationErrorCopyWith<$Res> {
  _$HTTPValidationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HTTPValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<ValidationError>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HTTPValidationErrorImplCopyWith<$Res>
    implements $HTTPValidationErrorCopyWith<$Res> {
  factory _$$HTTPValidationErrorImplCopyWith(_$HTTPValidationErrorImpl value,
          $Res Function(_$HTTPValidationErrorImpl) then) =
      __$$HTTPValidationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(includeIfNull: false) List<ValidationError>? detail});
}

/// @nodoc
class __$$HTTPValidationErrorImplCopyWithImpl<$Res>
    extends _$HTTPValidationErrorCopyWithImpl<$Res, _$HTTPValidationErrorImpl>
    implements _$$HTTPValidationErrorImplCopyWith<$Res> {
  __$$HTTPValidationErrorImplCopyWithImpl(_$HTTPValidationErrorImpl _value,
      $Res Function(_$HTTPValidationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HTTPValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_$HTTPValidationErrorImpl(
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<ValidationError>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HTTPValidationErrorImpl extends _HTTPValidationError {
  const _$HTTPValidationErrorImpl(
      {@JsonKey(includeIfNull: false) final List<ValidationError>? detail})
      : _detail = detail,
        super._();

  factory _$HTTPValidationErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$HTTPValidationErrorImplFromJson(json);

  /// No Description
  final List<ValidationError>? _detail;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<ValidationError>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HTTPValidationError(detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HTTPValidationErrorImpl &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_detail));

  /// Create a copy of HTTPValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HTTPValidationErrorImplCopyWith<_$HTTPValidationErrorImpl> get copyWith =>
      __$$HTTPValidationErrorImplCopyWithImpl<_$HTTPValidationErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HTTPValidationErrorImplToJson(
      this,
    );
  }
}

abstract class _HTTPValidationError extends HTTPValidationError {
  const factory _HTTPValidationError(
      {@JsonKey(includeIfNull: false)
      final List<ValidationError>? detail}) = _$HTTPValidationErrorImpl;
  const _HTTPValidationError._() : super._();

  factory _HTTPValidationError.fromJson(Map<String, dynamic> json) =
      _$HTTPValidationErrorImpl.fromJson;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<ValidationError>? get detail;

  /// Create a copy of HTTPValidationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HTTPValidationErrorImplCopyWith<_$HTTPValidationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelCapabilities _$ModelCapabilitiesFromJson(Map<String, dynamic> json) {
  return _ModelCapabilities.fromJson(json);
}

/// @nodoc
mixin _$ModelCapabilities {
  /// No Description
  @JsonKey(name: 'completion_chat')
  bool get completionChat => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'completion_fim')
  bool get completionFim => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'function_calling')
  bool get functionCalling => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'fine_tuning')
  bool get fineTuning => throw _privateConstructorUsedError;

  /// Serializes this ModelCapabilities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelCapabilities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelCapabilitiesCopyWith<ModelCapabilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCapabilitiesCopyWith<$Res> {
  factory $ModelCapabilitiesCopyWith(
          ModelCapabilities value, $Res Function(ModelCapabilities) then) =
      _$ModelCapabilitiesCopyWithImpl<$Res, ModelCapabilities>;
  @useResult
  $Res call(
      {@JsonKey(name: 'completion_chat') bool completionChat,
      @JsonKey(name: 'completion_fim') bool completionFim,
      @JsonKey(name: 'function_calling') bool functionCalling,
      @JsonKey(name: 'fine_tuning') bool fineTuning});
}

/// @nodoc
class _$ModelCapabilitiesCopyWithImpl<$Res, $Val extends ModelCapabilities>
    implements $ModelCapabilitiesCopyWith<$Res> {
  _$ModelCapabilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelCapabilities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completionChat = null,
    Object? completionFim = null,
    Object? functionCalling = null,
    Object? fineTuning = null,
  }) {
    return _then(_value.copyWith(
      completionChat: null == completionChat
          ? _value.completionChat
          : completionChat // ignore: cast_nullable_to_non_nullable
              as bool,
      completionFim: null == completionFim
          ? _value.completionFim
          : completionFim // ignore: cast_nullable_to_non_nullable
              as bool,
      functionCalling: null == functionCalling
          ? _value.functionCalling
          : functionCalling // ignore: cast_nullable_to_non_nullable
              as bool,
      fineTuning: null == fineTuning
          ? _value.fineTuning
          : fineTuning // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelCapabilitiesImplCopyWith<$Res>
    implements $ModelCapabilitiesCopyWith<$Res> {
  factory _$$ModelCapabilitiesImplCopyWith(_$ModelCapabilitiesImpl value,
          $Res Function(_$ModelCapabilitiesImpl) then) =
      __$$ModelCapabilitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'completion_chat') bool completionChat,
      @JsonKey(name: 'completion_fim') bool completionFim,
      @JsonKey(name: 'function_calling') bool functionCalling,
      @JsonKey(name: 'fine_tuning') bool fineTuning});
}

/// @nodoc
class __$$ModelCapabilitiesImplCopyWithImpl<$Res>
    extends _$ModelCapabilitiesCopyWithImpl<$Res, _$ModelCapabilitiesImpl>
    implements _$$ModelCapabilitiesImplCopyWith<$Res> {
  __$$ModelCapabilitiesImplCopyWithImpl(_$ModelCapabilitiesImpl _value,
      $Res Function(_$ModelCapabilitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelCapabilities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completionChat = null,
    Object? completionFim = null,
    Object? functionCalling = null,
    Object? fineTuning = null,
  }) {
    return _then(_$ModelCapabilitiesImpl(
      completionChat: null == completionChat
          ? _value.completionChat
          : completionChat // ignore: cast_nullable_to_non_nullable
              as bool,
      completionFim: null == completionFim
          ? _value.completionFim
          : completionFim // ignore: cast_nullable_to_non_nullable
              as bool,
      functionCalling: null == functionCalling
          ? _value.functionCalling
          : functionCalling // ignore: cast_nullable_to_non_nullable
              as bool,
      fineTuning: null == fineTuning
          ? _value.fineTuning
          : fineTuning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelCapabilitiesImpl extends _ModelCapabilities {
  const _$ModelCapabilitiesImpl(
      {@JsonKey(name: 'completion_chat') this.completionChat = true,
      @JsonKey(name: 'completion_fim') this.completionFim = false,
      @JsonKey(name: 'function_calling') this.functionCalling = true,
      @JsonKey(name: 'fine_tuning') this.fineTuning = false})
      : super._();

  factory _$ModelCapabilitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelCapabilitiesImplFromJson(json);

  /// No Description
  @override
  @JsonKey(name: 'completion_chat')
  final bool completionChat;

  /// No Description
  @override
  @JsonKey(name: 'completion_fim')
  final bool completionFim;

  /// No Description
  @override
  @JsonKey(name: 'function_calling')
  final bool functionCalling;

  /// No Description
  @override
  @JsonKey(name: 'fine_tuning')
  final bool fineTuning;

  @override
  String toString() {
    return 'ModelCapabilities(completionChat: $completionChat, completionFim: $completionFim, functionCalling: $functionCalling, fineTuning: $fineTuning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelCapabilitiesImpl &&
            (identical(other.completionChat, completionChat) ||
                other.completionChat == completionChat) &&
            (identical(other.completionFim, completionFim) ||
                other.completionFim == completionFim) &&
            (identical(other.functionCalling, functionCalling) ||
                other.functionCalling == functionCalling) &&
            (identical(other.fineTuning, fineTuning) ||
                other.fineTuning == fineTuning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, completionChat, completionFim, functionCalling, fineTuning);

  /// Create a copy of ModelCapabilities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelCapabilitiesImplCopyWith<_$ModelCapabilitiesImpl> get copyWith =>
      __$$ModelCapabilitiesImplCopyWithImpl<_$ModelCapabilitiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelCapabilitiesImplToJson(
      this,
    );
  }
}

abstract class _ModelCapabilities extends ModelCapabilities {
  const factory _ModelCapabilities(
          {@JsonKey(name: 'completion_chat') final bool completionChat,
          @JsonKey(name: 'completion_fim') final bool completionFim,
          @JsonKey(name: 'function_calling') final bool functionCalling,
          @JsonKey(name: 'fine_tuning') final bool fineTuning}) =
      _$ModelCapabilitiesImpl;
  const _ModelCapabilities._() : super._();

  factory _ModelCapabilities.fromJson(Map<String, dynamic> json) =
      _$ModelCapabilitiesImpl.fromJson;

  /// No Description
  @override
  @JsonKey(name: 'completion_chat')
  bool get completionChat;

  /// No Description
  @override
  @JsonKey(name: 'completion_fim')
  bool get completionFim;

  /// No Description
  @override
  @JsonKey(name: 'function_calling')
  bool get functionCalling;

  /// No Description
  @override
  @JsonKey(name: 'fine_tuning')
  bool get fineTuning;

  /// Create a copy of ModelCapabilities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelCapabilitiesImplCopyWith<_$ModelCapabilitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelCard _$ModelCardFromJson(Map<String, dynamic> json) {
  return _ModelCard.fromJson(json);
}

/// @nodoc
mixin _$ModelCard {
  /// No Description
  String get id => throw _privateConstructorUsedError;

  /// No Description
  String get object => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  int? get created => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'owned_by')
  String get ownedBy => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get root => throw _privateConstructorUsedError;

  /// No Description
  bool get archived => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get description => throw _privateConstructorUsedError;

  /// No Description
  ModelCapabilities get capabilities => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'max_context_length')
  int get maxContextLength => throw _privateConstructorUsedError;

  /// No Description
  List<String> get aliases => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get deprecation => throw _privateConstructorUsedError;

  /// Serializes this ModelCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelCardCopyWith<ModelCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCardCopyWith<$Res> {
  factory $ModelCardCopyWith(ModelCard value, $Res Function(ModelCard) then) =
      _$ModelCardCopyWithImpl<$Res, ModelCard>;
  @useResult
  $Res call(
      {String id,
      String object,
      @JsonKey(includeIfNull: false) int? created,
      @JsonKey(name: 'owned_by') String ownedBy,
      @JsonKey(includeIfNull: false) String? root,
      bool archived,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? description,
      ModelCapabilities capabilities,
      @JsonKey(name: 'max_context_length') int maxContextLength,
      List<String> aliases,
      @JsonKey(includeIfNull: false) String? deprecation});

  $ModelCapabilitiesCopyWith<$Res> get capabilities;
}

/// @nodoc
class _$ModelCardCopyWithImpl<$Res, $Val extends ModelCard>
    implements $ModelCardCopyWith<$Res> {
  _$ModelCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = freezed,
    Object? ownedBy = null,
    Object? root = freezed,
    Object? archived = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? capabilities = null,
    Object? maxContextLength = null,
    Object? aliases = null,
    Object? deprecation = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      ownedBy: null == ownedBy
          ? _value.ownedBy
          : ownedBy // ignore: cast_nullable_to_non_nullable
              as String,
      root: freezed == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capabilities: null == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as ModelCapabilities,
      maxContextLength: null == maxContextLength
          ? _value.maxContextLength
          : maxContextLength // ignore: cast_nullable_to_non_nullable
              as int,
      aliases: null == aliases
          ? _value.aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deprecation: freezed == deprecation
          ? _value.deprecation
          : deprecation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ModelCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModelCapabilitiesCopyWith<$Res> get capabilities {
    return $ModelCapabilitiesCopyWith<$Res>(_value.capabilities, (value) {
      return _then(_value.copyWith(capabilities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModelCardImplCopyWith<$Res>
    implements $ModelCardCopyWith<$Res> {
  factory _$$ModelCardImplCopyWith(
          _$ModelCardImpl value, $Res Function(_$ModelCardImpl) then) =
      __$$ModelCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      @JsonKey(includeIfNull: false) int? created,
      @JsonKey(name: 'owned_by') String ownedBy,
      @JsonKey(includeIfNull: false) String? root,
      bool archived,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? description,
      ModelCapabilities capabilities,
      @JsonKey(name: 'max_context_length') int maxContextLength,
      List<String> aliases,
      @JsonKey(includeIfNull: false) String? deprecation});

  @override
  $ModelCapabilitiesCopyWith<$Res> get capabilities;
}

/// @nodoc
class __$$ModelCardImplCopyWithImpl<$Res>
    extends _$ModelCardCopyWithImpl<$Res, _$ModelCardImpl>
    implements _$$ModelCardImplCopyWith<$Res> {
  __$$ModelCardImplCopyWithImpl(
      _$ModelCardImpl _value, $Res Function(_$ModelCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = freezed,
    Object? ownedBy = null,
    Object? root = freezed,
    Object? archived = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? capabilities = null,
    Object? maxContextLength = null,
    Object? aliases = null,
    Object? deprecation = freezed,
  }) {
    return _then(_$ModelCardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      ownedBy: null == ownedBy
          ? _value.ownedBy
          : ownedBy // ignore: cast_nullable_to_non_nullable
              as String,
      root: freezed == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capabilities: null == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as ModelCapabilities,
      maxContextLength: null == maxContextLength
          ? _value.maxContextLength
          : maxContextLength // ignore: cast_nullable_to_non_nullable
              as int,
      aliases: null == aliases
          ? _value._aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deprecation: freezed == deprecation
          ? _value.deprecation
          : deprecation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelCardImpl extends _ModelCard {
  const _$ModelCardImpl(
      {required this.id,
      this.object = 'model',
      @JsonKey(includeIfNull: false) this.created,
      @JsonKey(name: 'owned_by') this.ownedBy = 'mistralai',
      @JsonKey(includeIfNull: false) this.root,
      this.archived = false,
      @JsonKey(includeIfNull: false) this.name,
      @JsonKey(includeIfNull: false) this.description,
      required this.capabilities,
      @JsonKey(name: 'max_context_length') this.maxContextLength = 32768,
      final List<String> aliases = const [],
      @JsonKey(includeIfNull: false) this.deprecation})
      : _aliases = aliases,
        super._();

  factory _$ModelCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelCardImplFromJson(json);

  /// No Description
  @override
  final String id;

  /// No Description
  @override
  @JsonKey()
  final String object;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final int? created;

  /// No Description
  @override
  @JsonKey(name: 'owned_by')
  final String ownedBy;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? root;

  /// No Description
  @override
  @JsonKey()
  final bool archived;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? name;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? description;

  /// No Description
  @override
  final ModelCapabilities capabilities;

  /// No Description
  @override
  @JsonKey(name: 'max_context_length')
  final int maxContextLength;

  /// No Description
  final List<String> _aliases;

  /// No Description
  @override
  @JsonKey()
  List<String> get aliases {
    if (_aliases is EqualUnmodifiableListView) return _aliases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aliases);
  }

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? deprecation;

  @override
  String toString() {
    return 'ModelCard(id: $id, object: $object, created: $created, ownedBy: $ownedBy, root: $root, archived: $archived, name: $name, description: $description, capabilities: $capabilities, maxContextLength: $maxContextLength, aliases: $aliases, deprecation: $deprecation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.ownedBy, ownedBy) || other.ownedBy == ownedBy) &&
            (identical(other.root, root) || other.root == root) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.capabilities, capabilities) ||
                other.capabilities == capabilities) &&
            (identical(other.maxContextLength, maxContextLength) ||
                other.maxContextLength == maxContextLength) &&
            const DeepCollectionEquality().equals(other._aliases, _aliases) &&
            (identical(other.deprecation, deprecation) ||
                other.deprecation == deprecation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      object,
      created,
      ownedBy,
      root,
      archived,
      name,
      description,
      capabilities,
      maxContextLength,
      const DeepCollectionEquality().hash(_aliases),
      deprecation);

  /// Create a copy of ModelCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelCardImplCopyWith<_$ModelCardImpl> get copyWith =>
      __$$ModelCardImplCopyWithImpl<_$ModelCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelCardImplToJson(
      this,
    );
  }
}

abstract class _ModelCard extends ModelCard {
  const factory _ModelCard(
          {required final String id,
          final String object,
          @JsonKey(includeIfNull: false) final int? created,
          @JsonKey(name: 'owned_by') final String ownedBy,
          @JsonKey(includeIfNull: false) final String? root,
          final bool archived,
          @JsonKey(includeIfNull: false) final String? name,
          @JsonKey(includeIfNull: false) final String? description,
          required final ModelCapabilities capabilities,
          @JsonKey(name: 'max_context_length') final int maxContextLength,
          final List<String> aliases,
          @JsonKey(includeIfNull: false) final String? deprecation}) =
      _$ModelCardImpl;
  const _ModelCard._() : super._();

  factory _ModelCard.fromJson(Map<String, dynamic> json) =
      _$ModelCardImpl.fromJson;

  /// No Description
  @override
  String get id;

  /// No Description
  @override
  String get object;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  int? get created;

  /// No Description
  @override
  @JsonKey(name: 'owned_by')
  String get ownedBy;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get root;

  /// No Description
  @override
  bool get archived;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get name;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get description;

  /// No Description
  @override
  ModelCapabilities get capabilities;

  /// No Description
  @override
  @JsonKey(name: 'max_context_length')
  int get maxContextLength;

  /// No Description
  @override
  List<String> get aliases;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get deprecation;

  /// Create a copy of ModelCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelCardImplCopyWith<_$ModelCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelList _$ModelListFromJson(Map<String, dynamic> json) {
  return _ModelList.fromJson(json);
}

/// @nodoc
mixin _$ModelList {
  /// No Description
  String get object => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  List<ModelCard>? get data => throw _privateConstructorUsedError;

  /// Serializes this ModelList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelListCopyWith<ModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelListCopyWith<$Res> {
  factory $ModelListCopyWith(ModelList value, $Res Function(ModelList) then) =
      _$ModelListCopyWithImpl<$Res, ModelList>;
  @useResult
  $Res call(
      {String object, @JsonKey(includeIfNull: false) List<ModelCard>? data});
}

/// @nodoc
class _$ModelListCopyWithImpl<$Res, $Val extends ModelList>
    implements $ModelListCopyWith<$Res> {
  _$ModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ModelCard>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelListImplCopyWith<$Res>
    implements $ModelListCopyWith<$Res> {
  factory _$$ModelListImplCopyWith(
          _$ModelListImpl value, $Res Function(_$ModelListImpl) then) =
      __$$ModelListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String object, @JsonKey(includeIfNull: false) List<ModelCard>? data});
}

/// @nodoc
class __$$ModelListImplCopyWithImpl<$Res>
    extends _$ModelListCopyWithImpl<$Res, _$ModelListImpl>
    implements _$$ModelListImplCopyWith<$Res> {
  __$$ModelListImplCopyWithImpl(
      _$ModelListImpl _value, $Res Function(_$ModelListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
    Object? data = freezed,
  }) {
    return _then(_$ModelListImpl(
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ModelCard>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelListImpl extends _ModelList {
  const _$ModelListImpl(
      {this.object = 'list',
      @JsonKey(includeIfNull: false) final List<ModelCard>? data})
      : _data = data,
        super._();

  factory _$ModelListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelListImplFromJson(json);

  /// No Description
  @override
  @JsonKey()
  final String object;

  /// No Description
  final List<ModelCard>? _data;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<ModelCard>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModelList(object: $object, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelListImpl &&
            (identical(other.object, object) || other.object == object) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, object, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelListImplCopyWith<_$ModelListImpl> get copyWith =>
      __$$ModelListImplCopyWithImpl<_$ModelListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelListImplToJson(
      this,
    );
  }
}

abstract class _ModelList extends ModelList {
  const factory _ModelList(
          {final String object,
          @JsonKey(includeIfNull: false) final List<ModelCard>? data}) =
      _$ModelListImpl;
  const _ModelList._() : super._();

  factory _ModelList.fromJson(Map<String, dynamic> json) =
      _$ModelListImpl.fromJson;

  /// No Description
  @override
  String get object;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<ModelCard>? get data;

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelListImplCopyWith<_$ModelListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidationError _$ValidationErrorFromJson(Map<String, dynamic> json) {
  return _ValidationError.fromJson(json);
}

/// @nodoc
mixin _$ValidationError {
  /// No Description
  List<dynamic> get loc => throw _privateConstructorUsedError;

  /// No Description
  String get msg => throw _privateConstructorUsedError;

  /// No Description
  String get type => throw _privateConstructorUsedError;

  /// Serializes this ValidationError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationErrorCopyWith<ValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorCopyWith<$Res> {
  factory $ValidationErrorCopyWith(
          ValidationError value, $Res Function(ValidationError) then) =
      _$ValidationErrorCopyWithImpl<$Res, ValidationError>;
  @useResult
  $Res call({List<dynamic> loc, String msg, String type});
}

/// @nodoc
class _$ValidationErrorCopyWithImpl<$Res, $Val extends ValidationError>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loc = null,
    Object? msg = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      loc: null == loc
          ? _value.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationErrorImplCopyWith<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  factory _$$ValidationErrorImplCopyWith(_$ValidationErrorImpl value,
          $Res Function(_$ValidationErrorImpl) then) =
      __$$ValidationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> loc, String msg, String type});
}

/// @nodoc
class __$$ValidationErrorImplCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res, _$ValidationErrorImpl>
    implements _$$ValidationErrorImplCopyWith<$Res> {
  __$$ValidationErrorImplCopyWithImpl(
      _$ValidationErrorImpl _value, $Res Function(_$ValidationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loc = null,
    Object? msg = null,
    Object? type = null,
  }) {
    return _then(_$ValidationErrorImpl(
      loc: null == loc
          ? _value._loc
          : loc // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationErrorImpl extends _ValidationError {
  const _$ValidationErrorImpl(
      {required final List<dynamic> loc, required this.msg, required this.type})
      : _loc = loc,
        super._();

  factory _$ValidationErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationErrorImplFromJson(json);

  /// No Description
  final List<dynamic> _loc;

  /// No Description
  @override
  List<dynamic> get loc {
    if (_loc is EqualUnmodifiableListView) return _loc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loc);
  }

  /// No Description
  @override
  final String msg;

  /// No Description
  @override
  final String type;

  @override
  String toString() {
    return 'ValidationError(loc: $loc, msg: $msg, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorImpl &&
            const DeepCollectionEquality().equals(other._loc, _loc) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_loc), msg, type);

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      __$$ValidationErrorImplCopyWithImpl<_$ValidationErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationErrorImplToJson(
      this,
    );
  }
}

abstract class _ValidationError extends ValidationError {
  const factory _ValidationError(
      {required final List<dynamic> loc,
      required final String msg,
      required final String type}) = _$ValidationErrorImpl;
  const _ValidationError._() : super._();

  factory _ValidationError.fromJson(Map<String, dynamic> json) =
      _$ValidationErrorImpl.fromJson;

  /// No Description
  @override
  List<dynamic> get loc;

  /// No Description
  @override
  String get msg;

  /// No Description
  @override
  String get type;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadFileOut _$UploadFileOutFromJson(Map<String, dynamic> json) {
  return _UploadFileOut.fromJson(json);
}

/// @nodoc
mixin _$UploadFileOut {
  /// The unique identifier of the file.
  String get id => throw _privateConstructorUsedError;

  /// The object type, which is always "file".
  String get object => throw _privateConstructorUsedError;

  /// The size of the file, in bytes.
  int get bytes => throw _privateConstructorUsedError;

  /// The UNIX timestamp (in seconds) of the event.
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError;

  /// The name of the uploaded file.
  String get filename => throw _privateConstructorUsedError;

  /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
  Purpose get purpose => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: 'sample_type')
  SampleType get sampleType => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'num_lines', includeIfNull: false)
  int? get numLines => throw _privateConstructorUsedError;

  ///
  Source get source => throw _privateConstructorUsedError;

  /// Serializes this UploadFileOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadFileOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadFileOutCopyWith<UploadFileOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileOutCopyWith<$Res> {
  factory $UploadFileOutCopyWith(
          UploadFileOut value, $Res Function(UploadFileOut) then) =
      _$UploadFileOutCopyWithImpl<$Res, UploadFileOut>;
  @useResult
  $Res call(
      {String id,
      String object,
      int bytes,
      @JsonKey(name: 'created_at') int createdAt,
      String filename,
      Purpose purpose,
      @JsonKey(name: 'sample_type') SampleType sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) int? numLines,
      Source source});
}

/// @nodoc
class _$UploadFileOutCopyWithImpl<$Res, $Val extends UploadFileOut>
    implements $UploadFileOutCopyWith<$Res> {
  _$UploadFileOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadFileOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? bytes = null,
    Object? createdAt = null,
    Object? filename = null,
    Object? purpose = null,
    Object? sampleType = null,
    Object? numLines = freezed,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as Purpose,
      sampleType: null == sampleType
          ? _value.sampleType
          : sampleType // ignore: cast_nullable_to_non_nullable
              as SampleType,
      numLines: freezed == numLines
          ? _value.numLines
          : numLines // ignore: cast_nullable_to_non_nullable
              as int?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFileOutImplCopyWith<$Res>
    implements $UploadFileOutCopyWith<$Res> {
  factory _$$UploadFileOutImplCopyWith(
          _$UploadFileOutImpl value, $Res Function(_$UploadFileOutImpl) then) =
      __$$UploadFileOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      int bytes,
      @JsonKey(name: 'created_at') int createdAt,
      String filename,
      Purpose purpose,
      @JsonKey(name: 'sample_type') SampleType sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) int? numLines,
      Source source});
}

/// @nodoc
class __$$UploadFileOutImplCopyWithImpl<$Res>
    extends _$UploadFileOutCopyWithImpl<$Res, _$UploadFileOutImpl>
    implements _$$UploadFileOutImplCopyWith<$Res> {
  __$$UploadFileOutImplCopyWithImpl(
      _$UploadFileOutImpl _value, $Res Function(_$UploadFileOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadFileOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? bytes = null,
    Object? createdAt = null,
    Object? filename = null,
    Object? purpose = null,
    Object? sampleType = null,
    Object? numLines = freezed,
    Object? source = null,
  }) {
    return _then(_$UploadFileOutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as Purpose,
      sampleType: null == sampleType
          ? _value.sampleType
          : sampleType // ignore: cast_nullable_to_non_nullable
              as SampleType,
      numLines: freezed == numLines
          ? _value.numLines
          : numLines // ignore: cast_nullable_to_non_nullable
              as int?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadFileOutImpl extends _UploadFileOut {
  const _$UploadFileOutImpl(
      {required this.id,
      required this.object,
      required this.bytes,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.filename,
      required this.purpose,
      @JsonKey(name: 'sample_type') required this.sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) this.numLines,
      required this.source})
      : super._();

  factory _$UploadFileOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFileOutImplFromJson(json);

  /// The unique identifier of the file.
  @override
  final String id;

  /// The object type, which is always "file".
  @override
  final String object;

  /// The size of the file, in bytes.
  @override
  final int bytes;

  /// The UNIX timestamp (in seconds) of the event.
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;

  /// The name of the uploaded file.
  @override
  final String filename;

  /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
  @override
  final Purpose purpose;

  ///
  @override
  @JsonKey(name: 'sample_type')
  final SampleType sampleType;

  /// No Description
  @override
  @JsonKey(name: 'num_lines', includeIfNull: false)
  final int? numLines;

  ///
  @override
  final Source source;

  @override
  String toString() {
    return 'UploadFileOut(id: $id, object: $object, bytes: $bytes, createdAt: $createdAt, filename: $filename, purpose: $purpose, sampleType: $sampleType, numLines: $numLines, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileOutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.bytes, bytes) || other.bytes == bytes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.sampleType, sampleType) ||
                other.sampleType == sampleType) &&
            (identical(other.numLines, numLines) ||
                other.numLines == numLines) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, bytes, createdAt,
      filename, purpose, sampleType, numLines, source);

  /// Create a copy of UploadFileOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileOutImplCopyWith<_$UploadFileOutImpl> get copyWith =>
      __$$UploadFileOutImplCopyWithImpl<_$UploadFileOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFileOutImplToJson(
      this,
    );
  }
}

abstract class _UploadFileOut extends UploadFileOut {
  const factory _UploadFileOut(
      {required final String id,
      required final String object,
      required final int bytes,
      @JsonKey(name: 'created_at') required final int createdAt,
      required final String filename,
      required final Purpose purpose,
      @JsonKey(name: 'sample_type') required final SampleType sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) final int? numLines,
      required final Source source}) = _$UploadFileOutImpl;
  const _UploadFileOut._() : super._();

  factory _UploadFileOut.fromJson(Map<String, dynamic> json) =
      _$UploadFileOutImpl.fromJson;

  /// The unique identifier of the file.
  @override
  String get id;

  /// The object type, which is always "file".
  @override
  String get object;

  /// The size of the file, in bytes.
  @override
  int get bytes;

  /// The UNIX timestamp (in seconds) of the event.
  @override
  @JsonKey(name: 'created_at')
  int get createdAt;

  /// The name of the uploaded file.
  @override
  String get filename;

  /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
  @override
  Purpose get purpose;

  ///
  @override
  @JsonKey(name: 'sample_type')
  SampleType get sampleType;

  /// No Description
  @override
  @JsonKey(name: 'num_lines', includeIfNull: false)
  int? get numLines;

  ///
  @override
  Source get source;

  /// Create a copy of UploadFileOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadFileOutImplCopyWith<_$UploadFileOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FileSchema _$FileSchemaFromJson(Map<String, dynamic> json) {
  return _FileSchema.fromJson(json);
}

/// @nodoc
mixin _$FileSchema {
  /// The unique identifier of the file.
  String get id => throw _privateConstructorUsedError;

  /// The object type, which is always "file".
  String get object => throw _privateConstructorUsedError;

  /// The size of the file, in bytes.
  int get bytes => throw _privateConstructorUsedError;

  /// The UNIX timestamp (in seconds) of the event.
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError;

  /// The name of the uploaded file.
  String get filename => throw _privateConstructorUsedError;

  /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
  dynamic get purpose => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: 'sample_type')
  SampleType get sampleType => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'num_lines', includeIfNull: false)
  int? get numLines => throw _privateConstructorUsedError;

  ///
  Source get source => throw _privateConstructorUsedError;

  /// Serializes this FileSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileSchemaCopyWith<FileSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileSchemaCopyWith<$Res> {
  factory $FileSchemaCopyWith(
          FileSchema value, $Res Function(FileSchema) then) =
      _$FileSchemaCopyWithImpl<$Res, FileSchema>;
  @useResult
  $Res call(
      {String id,
      String object,
      int bytes,
      @JsonKey(name: 'created_at') int createdAt,
      String filename,
      dynamic purpose,
      @JsonKey(name: 'sample_type') SampleType sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) int? numLines,
      Source source});
}

/// @nodoc
class _$FileSchemaCopyWithImpl<$Res, $Val extends FileSchema>
    implements $FileSchemaCopyWith<$Res> {
  _$FileSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? bytes = null,
    Object? createdAt = null,
    Object? filename = null,
    Object? purpose = freezed,
    Object? sampleType = null,
    Object? numLines = freezed,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sampleType: null == sampleType
          ? _value.sampleType
          : sampleType // ignore: cast_nullable_to_non_nullable
              as SampleType,
      numLines: freezed == numLines
          ? _value.numLines
          : numLines // ignore: cast_nullable_to_non_nullable
              as int?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileSchemaImplCopyWith<$Res>
    implements $FileSchemaCopyWith<$Res> {
  factory _$$FileSchemaImplCopyWith(
          _$FileSchemaImpl value, $Res Function(_$FileSchemaImpl) then) =
      __$$FileSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      int bytes,
      @JsonKey(name: 'created_at') int createdAt,
      String filename,
      dynamic purpose,
      @JsonKey(name: 'sample_type') SampleType sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) int? numLines,
      Source source});
}

/// @nodoc
class __$$FileSchemaImplCopyWithImpl<$Res>
    extends _$FileSchemaCopyWithImpl<$Res, _$FileSchemaImpl>
    implements _$$FileSchemaImplCopyWith<$Res> {
  __$$FileSchemaImplCopyWithImpl(
      _$FileSchemaImpl _value, $Res Function(_$FileSchemaImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? bytes = null,
    Object? createdAt = null,
    Object? filename = null,
    Object? purpose = freezed,
    Object? sampleType = null,
    Object? numLines = freezed,
    Object? source = null,
  }) {
    return _then(_$FileSchemaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sampleType: null == sampleType
          ? _value.sampleType
          : sampleType // ignore: cast_nullable_to_non_nullable
              as SampleType,
      numLines: freezed == numLines
          ? _value.numLines
          : numLines // ignore: cast_nullable_to_non_nullable
              as int?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileSchemaImpl extends _FileSchema {
  const _$FileSchemaImpl(
      {required this.id,
      required this.object,
      required this.bytes,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.filename,
      required this.purpose,
      @JsonKey(name: 'sample_type') required this.sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) this.numLines,
      required this.source})
      : super._();

  factory _$FileSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileSchemaImplFromJson(json);

  /// The unique identifier of the file.
  @override
  final String id;

  /// The object type, which is always "file".
  @override
  final String object;

  /// The size of the file, in bytes.
  @override
  final int bytes;

  /// The UNIX timestamp (in seconds) of the event.
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;

  /// The name of the uploaded file.
  @override
  final String filename;

  /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
  @override
  final dynamic purpose;

  ///
  @override
  @JsonKey(name: 'sample_type')
  final SampleType sampleType;

  /// No Description
  @override
  @JsonKey(name: 'num_lines', includeIfNull: false)
  final int? numLines;

  ///
  @override
  final Source source;

  @override
  String toString() {
    return 'FileSchema(id: $id, object: $object, bytes: $bytes, createdAt: $createdAt, filename: $filename, purpose: $purpose, sampleType: $sampleType, numLines: $numLines, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileSchemaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.bytes, bytes) || other.bytes == bytes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            const DeepCollectionEquality().equals(other.purpose, purpose) &&
            (identical(other.sampleType, sampleType) ||
                other.sampleType == sampleType) &&
            (identical(other.numLines, numLines) ||
                other.numLines == numLines) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      object,
      bytes,
      createdAt,
      filename,
      const DeepCollectionEquality().hash(purpose),
      sampleType,
      numLines,
      source);

  /// Create a copy of FileSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileSchemaImplCopyWith<_$FileSchemaImpl> get copyWith =>
      __$$FileSchemaImplCopyWithImpl<_$FileSchemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileSchemaImplToJson(
      this,
    );
  }
}

abstract class _FileSchema extends FileSchema {
  const factory _FileSchema(
      {required final String id,
      required final String object,
      required final int bytes,
      @JsonKey(name: 'created_at') required final int createdAt,
      required final String filename,
      required final dynamic purpose,
      @JsonKey(name: 'sample_type') required final SampleType sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) final int? numLines,
      required final Source source}) = _$FileSchemaImpl;
  const _FileSchema._() : super._();

  factory _FileSchema.fromJson(Map<String, dynamic> json) =
      _$FileSchemaImpl.fromJson;

  /// The unique identifier of the file.
  @override
  String get id;

  /// The object type, which is always "file".
  @override
  String get object;

  /// The size of the file, in bytes.
  @override
  int get bytes;

  /// The UNIX timestamp (in seconds) of the event.
  @override
  @JsonKey(name: 'created_at')
  int get createdAt;

  /// The name of the uploaded file.
  @override
  String get filename;

  /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
  @override
  dynamic get purpose;

  ///
  @override
  @JsonKey(name: 'sample_type')
  SampleType get sampleType;

  /// No Description
  @override
  @JsonKey(name: 'num_lines', includeIfNull: false)
  int? get numLines;

  ///
  @override
  Source get source;

  /// Create a copy of FileSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileSchemaImplCopyWith<_$FileSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListFilesOut _$ListFilesOutFromJson(Map<String, dynamic> json) {
  return _ListFilesOut.fromJson(json);
}

/// @nodoc
mixin _$ListFilesOut {
  /// No Description
  List<FileSchema> get data => throw _privateConstructorUsedError;

  /// No Description
  String get object => throw _privateConstructorUsedError;

  /// Serializes this ListFilesOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListFilesOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListFilesOutCopyWith<ListFilesOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListFilesOutCopyWith<$Res> {
  factory $ListFilesOutCopyWith(
          ListFilesOut value, $Res Function(ListFilesOut) then) =
      _$ListFilesOutCopyWithImpl<$Res, ListFilesOut>;
  @useResult
  $Res call({List<FileSchema> data, String object});
}

/// @nodoc
class _$ListFilesOutCopyWithImpl<$Res, $Val extends ListFilesOut>
    implements $ListFilesOutCopyWith<$Res> {
  _$ListFilesOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListFilesOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? object = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FileSchema>,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListFilesOutImplCopyWith<$Res>
    implements $ListFilesOutCopyWith<$Res> {
  factory _$$ListFilesOutImplCopyWith(
          _$ListFilesOutImpl value, $Res Function(_$ListFilesOutImpl) then) =
      __$$ListFilesOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FileSchema> data, String object});
}

/// @nodoc
class __$$ListFilesOutImplCopyWithImpl<$Res>
    extends _$ListFilesOutCopyWithImpl<$Res, _$ListFilesOutImpl>
    implements _$$ListFilesOutImplCopyWith<$Res> {
  __$$ListFilesOutImplCopyWithImpl(
      _$ListFilesOutImpl _value, $Res Function(_$ListFilesOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListFilesOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? object = null,
  }) {
    return _then(_$ListFilesOutImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FileSchema>,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListFilesOutImpl extends _ListFilesOut {
  const _$ListFilesOutImpl(
      {required final List<FileSchema> data, required this.object})
      : _data = data,
        super._();

  factory _$ListFilesOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListFilesOutImplFromJson(json);

  /// No Description
  final List<FileSchema> _data;

  /// No Description
  @override
  List<FileSchema> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// No Description
  @override
  final String object;

  @override
  String toString() {
    return 'ListFilesOut(data: $data, object: $object)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListFilesOutImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), object);

  /// Create a copy of ListFilesOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListFilesOutImplCopyWith<_$ListFilesOutImpl> get copyWith =>
      __$$ListFilesOutImplCopyWithImpl<_$ListFilesOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListFilesOutImplToJson(
      this,
    );
  }
}

abstract class _ListFilesOut extends ListFilesOut {
  const factory _ListFilesOut(
      {required final List<FileSchema> data,
      required final String object}) = _$ListFilesOutImpl;
  const _ListFilesOut._() : super._();

  factory _ListFilesOut.fromJson(Map<String, dynamic> json) =
      _$ListFilesOutImpl.fromJson;

  /// No Description
  @override
  List<FileSchema> get data;

  /// No Description
  @override
  String get object;

  /// Create a copy of ListFilesOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListFilesOutImplCopyWith<_$ListFilesOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RetrieveFileOut _$RetrieveFileOutFromJson(Map<String, dynamic> json) {
  return _RetrieveFileOut.fromJson(json);
}

/// @nodoc
mixin _$RetrieveFileOut {
  /// The unique identifier of the file.
  String get id => throw _privateConstructorUsedError;

  /// The object type, which is always "file".
  String get object => throw _privateConstructorUsedError;

  /// The size of the file, in bytes.
  int get bytes => throw _privateConstructorUsedError;

  /// The UNIX timestamp (in seconds) of the event.
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError;

  /// The name of the uploaded file.
  String get filename => throw _privateConstructorUsedError;

  /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
  RetrieveFileOutPurpose get purpose => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: 'sample_type')
  SampleType get sampleType => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'num_lines', includeIfNull: false)
  int? get numLines => throw _privateConstructorUsedError;

  ///
  Source get source => throw _privateConstructorUsedError;

  /// Serializes this RetrieveFileOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RetrieveFileOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetrieveFileOutCopyWith<RetrieveFileOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetrieveFileOutCopyWith<$Res> {
  factory $RetrieveFileOutCopyWith(
          RetrieveFileOut value, $Res Function(RetrieveFileOut) then) =
      _$RetrieveFileOutCopyWithImpl<$Res, RetrieveFileOut>;
  @useResult
  $Res call(
      {String id,
      String object,
      int bytes,
      @JsonKey(name: 'created_at') int createdAt,
      String filename,
      RetrieveFileOutPurpose purpose,
      @JsonKey(name: 'sample_type') SampleType sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) int? numLines,
      Source source});
}

/// @nodoc
class _$RetrieveFileOutCopyWithImpl<$Res, $Val extends RetrieveFileOut>
    implements $RetrieveFileOutCopyWith<$Res> {
  _$RetrieveFileOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetrieveFileOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? bytes = null,
    Object? createdAt = null,
    Object? filename = null,
    Object? purpose = null,
    Object? sampleType = null,
    Object? numLines = freezed,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as RetrieveFileOutPurpose,
      sampleType: null == sampleType
          ? _value.sampleType
          : sampleType // ignore: cast_nullable_to_non_nullable
              as SampleType,
      numLines: freezed == numLines
          ? _value.numLines
          : numLines // ignore: cast_nullable_to_non_nullable
              as int?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RetrieveFileOutImplCopyWith<$Res>
    implements $RetrieveFileOutCopyWith<$Res> {
  factory _$$RetrieveFileOutImplCopyWith(_$RetrieveFileOutImpl value,
          $Res Function(_$RetrieveFileOutImpl) then) =
      __$$RetrieveFileOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      int bytes,
      @JsonKey(name: 'created_at') int createdAt,
      String filename,
      RetrieveFileOutPurpose purpose,
      @JsonKey(name: 'sample_type') SampleType sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) int? numLines,
      Source source});
}

/// @nodoc
class __$$RetrieveFileOutImplCopyWithImpl<$Res>
    extends _$RetrieveFileOutCopyWithImpl<$Res, _$RetrieveFileOutImpl>
    implements _$$RetrieveFileOutImplCopyWith<$Res> {
  __$$RetrieveFileOutImplCopyWithImpl(
      _$RetrieveFileOutImpl _value, $Res Function(_$RetrieveFileOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetrieveFileOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? bytes = null,
    Object? createdAt = null,
    Object? filename = null,
    Object? purpose = null,
    Object? sampleType = null,
    Object? numLines = freezed,
    Object? source = null,
  }) {
    return _then(_$RetrieveFileOutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as RetrieveFileOutPurpose,
      sampleType: null == sampleType
          ? _value.sampleType
          : sampleType // ignore: cast_nullable_to_non_nullable
              as SampleType,
      numLines: freezed == numLines
          ? _value.numLines
          : numLines // ignore: cast_nullable_to_non_nullable
              as int?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RetrieveFileOutImpl extends _RetrieveFileOut {
  const _$RetrieveFileOutImpl(
      {required this.id,
      required this.object,
      required this.bytes,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.filename,
      required this.purpose,
      @JsonKey(name: 'sample_type') required this.sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) this.numLines,
      required this.source})
      : super._();

  factory _$RetrieveFileOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetrieveFileOutImplFromJson(json);

  /// The unique identifier of the file.
  @override
  final String id;

  /// The object type, which is always "file".
  @override
  final String object;

  /// The size of the file, in bytes.
  @override
  final int bytes;

  /// The UNIX timestamp (in seconds) of the event.
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;

  /// The name of the uploaded file.
  @override
  final String filename;

  /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
  @override
  final RetrieveFileOutPurpose purpose;

  ///
  @override
  @JsonKey(name: 'sample_type')
  final SampleType sampleType;

  /// No Description
  @override
  @JsonKey(name: 'num_lines', includeIfNull: false)
  final int? numLines;

  ///
  @override
  final Source source;

  @override
  String toString() {
    return 'RetrieveFileOut(id: $id, object: $object, bytes: $bytes, createdAt: $createdAt, filename: $filename, purpose: $purpose, sampleType: $sampleType, numLines: $numLines, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveFileOutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.bytes, bytes) || other.bytes == bytes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.sampleType, sampleType) ||
                other.sampleType == sampleType) &&
            (identical(other.numLines, numLines) ||
                other.numLines == numLines) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, bytes, createdAt,
      filename, purpose, sampleType, numLines, source);

  /// Create a copy of RetrieveFileOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrieveFileOutImplCopyWith<_$RetrieveFileOutImpl> get copyWith =>
      __$$RetrieveFileOutImplCopyWithImpl<_$RetrieveFileOutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetrieveFileOutImplToJson(
      this,
    );
  }
}

abstract class _RetrieveFileOut extends RetrieveFileOut {
  const factory _RetrieveFileOut(
      {required final String id,
      required final String object,
      required final int bytes,
      @JsonKey(name: 'created_at') required final int createdAt,
      required final String filename,
      required final RetrieveFileOutPurpose purpose,
      @JsonKey(name: 'sample_type') required final SampleType sampleType,
      @JsonKey(name: 'num_lines', includeIfNull: false) final int? numLines,
      required final Source source}) = _$RetrieveFileOutImpl;
  const _RetrieveFileOut._() : super._();

  factory _RetrieveFileOut.fromJson(Map<String, dynamic> json) =
      _$RetrieveFileOutImpl.fromJson;

  /// The unique identifier of the file.
  @override
  String get id;

  /// The object type, which is always "file".
  @override
  String get object;

  /// The size of the file, in bytes.
  @override
  int get bytes;

  /// The UNIX timestamp (in seconds) of the event.
  @override
  @JsonKey(name: 'created_at')
  int get createdAt;

  /// The name of the uploaded file.
  @override
  String get filename;

  /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
  @override
  RetrieveFileOutPurpose get purpose;

  ///
  @override
  @JsonKey(name: 'sample_type')
  SampleType get sampleType;

  /// No Description
  @override
  @JsonKey(name: 'num_lines', includeIfNull: false)
  int? get numLines;

  ///
  @override
  Source get source;

  /// Create a copy of RetrieveFileOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetrieveFileOutImplCopyWith<_$RetrieveFileOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeleteFileOut _$DeleteFileOutFromJson(Map<String, dynamic> json) {
  return _DeleteFileOut.fromJson(json);
}

/// @nodoc
mixin _$DeleteFileOut {
  /// The ID of the deleted file.
  String get id => throw _privateConstructorUsedError;

  /// The object type that was deleted
  String get object => throw _privateConstructorUsedError;

  /// The deletion status.
  bool get deleted => throw _privateConstructorUsedError;

  /// Serializes this DeleteFileOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteFileOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteFileOutCopyWith<DeleteFileOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFileOutCopyWith<$Res> {
  factory $DeleteFileOutCopyWith(
          DeleteFileOut value, $Res Function(DeleteFileOut) then) =
      _$DeleteFileOutCopyWithImpl<$Res, DeleteFileOut>;
  @useResult
  $Res call({String id, String object, bool deleted});
}

/// @nodoc
class _$DeleteFileOutCopyWithImpl<$Res, $Val extends DeleteFileOut>
    implements $DeleteFileOutCopyWith<$Res> {
  _$DeleteFileOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteFileOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteFileOutImplCopyWith<$Res>
    implements $DeleteFileOutCopyWith<$Res> {
  factory _$$DeleteFileOutImplCopyWith(
          _$DeleteFileOutImpl value, $Res Function(_$DeleteFileOutImpl) then) =
      __$$DeleteFileOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String object, bool deleted});
}

/// @nodoc
class __$$DeleteFileOutImplCopyWithImpl<$Res>
    extends _$DeleteFileOutCopyWithImpl<$Res, _$DeleteFileOutImpl>
    implements _$$DeleteFileOutImplCopyWith<$Res> {
  __$$DeleteFileOutImplCopyWithImpl(
      _$DeleteFileOutImpl _value, $Res Function(_$DeleteFileOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteFileOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? deleted = null,
  }) {
    return _then(_$DeleteFileOutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteFileOutImpl extends _DeleteFileOut {
  const _$DeleteFileOutImpl(
      {required this.id, required this.object, required this.deleted})
      : super._();

  factory _$DeleteFileOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteFileOutImplFromJson(json);

  /// The ID of the deleted file.
  @override
  final String id;

  /// The object type that was deleted
  @override
  final String object;

  /// The deletion status.
  @override
  final bool deleted;

  @override
  String toString() {
    return 'DeleteFileOut(id: $id, object: $object, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFileOutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, deleted);

  /// Create a copy of DeleteFileOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFileOutImplCopyWith<_$DeleteFileOutImpl> get copyWith =>
      __$$DeleteFileOutImplCopyWithImpl<_$DeleteFileOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteFileOutImplToJson(
      this,
    );
  }
}

abstract class _DeleteFileOut extends DeleteFileOut {
  const factory _DeleteFileOut(
      {required final String id,
      required final String object,
      required final bool deleted}) = _$DeleteFileOutImpl;
  const _DeleteFileOut._() : super._();

  factory _DeleteFileOut.fromJson(Map<String, dynamic> json) =
      _$DeleteFileOutImpl.fromJson;

  /// The ID of the deleted file.
  @override
  String get id;

  /// The object type that was deleted
  @override
  String get object;

  /// The deletion status.
  @override
  bool get deleted;

  /// Create a copy of DeleteFileOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFileOutImplCopyWith<_$DeleteFileOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubRepositoryOut _$GithubRepositoryOutFromJson(Map<String, dynamic> json) {
  return _GithubRepositoryOut.fromJson(json);
}

/// @nodoc
mixin _$GithubRepositoryOut {
  ///
  Type get type => throw _privateConstructorUsedError;

  /// No Description
  String get name => throw _privateConstructorUsedError;

  /// No Description
  String get owner => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get ref => throw _privateConstructorUsedError;

  /// No Description
  double get weight => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'commit_id')
  String get commitId => throw _privateConstructorUsedError;

  /// Serializes this GithubRepositoryOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GithubRepositoryOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GithubRepositoryOutCopyWith<GithubRepositoryOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoryOutCopyWith<$Res> {
  factory $GithubRepositoryOutCopyWith(
          GithubRepositoryOut value, $Res Function(GithubRepositoryOut) then) =
      _$GithubRepositoryOutCopyWithImpl<$Res, GithubRepositoryOut>;
  @useResult
  $Res call(
      {Type type,
      String name,
      String owner,
      @JsonKey(includeIfNull: false) String? ref,
      double weight,
      @JsonKey(name: 'commit_id') String commitId});
}

/// @nodoc
class _$GithubRepositoryOutCopyWithImpl<$Res, $Val extends GithubRepositoryOut>
    implements $GithubRepositoryOutCopyWith<$Res> {
  _$GithubRepositoryOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GithubRepositoryOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? owner = null,
    Object? ref = freezed,
    Object? weight = null,
    Object? commitId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      commitId: null == commitId
          ? _value.commitId
          : commitId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GithubRepositoryOutImplCopyWith<$Res>
    implements $GithubRepositoryOutCopyWith<$Res> {
  factory _$$GithubRepositoryOutImplCopyWith(_$GithubRepositoryOutImpl value,
          $Res Function(_$GithubRepositoryOutImpl) then) =
      __$$GithubRepositoryOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Type type,
      String name,
      String owner,
      @JsonKey(includeIfNull: false) String? ref,
      double weight,
      @JsonKey(name: 'commit_id') String commitId});
}

/// @nodoc
class __$$GithubRepositoryOutImplCopyWithImpl<$Res>
    extends _$GithubRepositoryOutCopyWithImpl<$Res, _$GithubRepositoryOutImpl>
    implements _$$GithubRepositoryOutImplCopyWith<$Res> {
  __$$GithubRepositoryOutImplCopyWithImpl(_$GithubRepositoryOutImpl _value,
      $Res Function(_$GithubRepositoryOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of GithubRepositoryOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? owner = null,
    Object? ref = freezed,
    Object? weight = null,
    Object? commitId = null,
  }) {
    return _then(_$GithubRepositoryOutImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      commitId: null == commitId
          ? _value.commitId
          : commitId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubRepositoryOutImpl extends _GithubRepositoryOut {
  const _$GithubRepositoryOutImpl(
      {this.type = Type.github,
      required this.name,
      required this.owner,
      @JsonKey(includeIfNull: false) this.ref,
      this.weight = 1.0,
      @JsonKey(name: 'commit_id') required this.commitId})
      : super._();

  factory _$GithubRepositoryOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubRepositoryOutImplFromJson(json);

  ///
  @override
  @JsonKey()
  final Type type;

  /// No Description
  @override
  final String name;

  /// No Description
  @override
  final String owner;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? ref;

  /// No Description
  @override
  @JsonKey()
  final double weight;

  /// No Description
  @override
  @JsonKey(name: 'commit_id')
  final String commitId;

  @override
  String toString() {
    return 'GithubRepositoryOut(type: $type, name: $name, owner: $owner, ref: $ref, weight: $weight, commitId: $commitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepositoryOutImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.commitId, commitId) ||
                other.commitId == commitId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, name, owner, ref, weight, commitId);

  /// Create a copy of GithubRepositoryOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepositoryOutImplCopyWith<_$GithubRepositoryOutImpl> get copyWith =>
      __$$GithubRepositoryOutImplCopyWithImpl<_$GithubRepositoryOutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubRepositoryOutImplToJson(
      this,
    );
  }
}

abstract class _GithubRepositoryOut extends GithubRepositoryOut {
  const factory _GithubRepositoryOut(
          {final Type type,
          required final String name,
          required final String owner,
          @JsonKey(includeIfNull: false) final String? ref,
          final double weight,
          @JsonKey(name: 'commit_id') required final String commitId}) =
      _$GithubRepositoryOutImpl;
  const _GithubRepositoryOut._() : super._();

  factory _GithubRepositoryOut.fromJson(Map<String, dynamic> json) =
      _$GithubRepositoryOutImpl.fromJson;

  ///
  @override
  Type get type;

  /// No Description
  @override
  String get name;

  /// No Description
  @override
  String get owner;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get ref;

  /// No Description
  @override
  double get weight;

  /// No Description
  @override
  @JsonKey(name: 'commit_id')
  String get commitId;

  /// Create a copy of GithubRepositoryOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GithubRepositoryOutImplCopyWith<_$GithubRepositoryOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobMetadataOut _$JobMetadataOutFromJson(Map<String, dynamic> json) {
  return _JobMetadataOut.fromJson(json);
}

/// @nodoc
mixin _$JobMetadataOut {
  /// No Description
  @JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
  int? get expectedDurationSeconds => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  double? get cost => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'cost_currency', includeIfNull: false)
  String? get costCurrency => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
  int? get trainTokensPerStep => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'train_tokens', includeIfNull: false)
  int? get trainTokens => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'data_tokens', includeIfNull: false)
  int? get dataTokens => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'estimated_start_time', includeIfNull: false)
  int? get estimatedStartTime => throw _privateConstructorUsedError;

  /// Serializes this JobMetadataOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobMetadataOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobMetadataOutCopyWith<JobMetadataOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobMetadataOutCopyWith<$Res> {
  factory $JobMetadataOutCopyWith(
          JobMetadataOut value, $Res Function(JobMetadataOut) then) =
      _$JobMetadataOutCopyWithImpl<$Res, JobMetadataOut>;
  @useResult
  $Res call(
      {@JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
      int? expectedDurationSeconds,
      @JsonKey(includeIfNull: false) double? cost,
      @JsonKey(name: 'cost_currency', includeIfNull: false)
      String? costCurrency,
      @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
      int? trainTokensPerStep,
      @JsonKey(name: 'train_tokens', includeIfNull: false) int? trainTokens,
      @JsonKey(name: 'data_tokens', includeIfNull: false) int? dataTokens,
      @JsonKey(name: 'estimated_start_time', includeIfNull: false)
      int? estimatedStartTime});
}

/// @nodoc
class _$JobMetadataOutCopyWithImpl<$Res, $Val extends JobMetadataOut>
    implements $JobMetadataOutCopyWith<$Res> {
  _$JobMetadataOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobMetadataOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expectedDurationSeconds = freezed,
    Object? cost = freezed,
    Object? costCurrency = freezed,
    Object? trainTokensPerStep = freezed,
    Object? trainTokens = freezed,
    Object? dataTokens = freezed,
    Object? estimatedStartTime = freezed,
  }) {
    return _then(_value.copyWith(
      expectedDurationSeconds: freezed == expectedDurationSeconds
          ? _value.expectedDurationSeconds
          : expectedDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      costCurrency: freezed == costCurrency
          ? _value.costCurrency
          : costCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      trainTokensPerStep: freezed == trainTokensPerStep
          ? _value.trainTokensPerStep
          : trainTokensPerStep // ignore: cast_nullable_to_non_nullable
              as int?,
      trainTokens: freezed == trainTokens
          ? _value.trainTokens
          : trainTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      dataTokens: freezed == dataTokens
          ? _value.dataTokens
          : dataTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      estimatedStartTime: freezed == estimatedStartTime
          ? _value.estimatedStartTime
          : estimatedStartTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobMetadataOutImplCopyWith<$Res>
    implements $JobMetadataOutCopyWith<$Res> {
  factory _$$JobMetadataOutImplCopyWith(_$JobMetadataOutImpl value,
          $Res Function(_$JobMetadataOutImpl) then) =
      __$$JobMetadataOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
      int? expectedDurationSeconds,
      @JsonKey(includeIfNull: false) double? cost,
      @JsonKey(name: 'cost_currency', includeIfNull: false)
      String? costCurrency,
      @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
      int? trainTokensPerStep,
      @JsonKey(name: 'train_tokens', includeIfNull: false) int? trainTokens,
      @JsonKey(name: 'data_tokens', includeIfNull: false) int? dataTokens,
      @JsonKey(name: 'estimated_start_time', includeIfNull: false)
      int? estimatedStartTime});
}

/// @nodoc
class __$$JobMetadataOutImplCopyWithImpl<$Res>
    extends _$JobMetadataOutCopyWithImpl<$Res, _$JobMetadataOutImpl>
    implements _$$JobMetadataOutImplCopyWith<$Res> {
  __$$JobMetadataOutImplCopyWithImpl(
      _$JobMetadataOutImpl _value, $Res Function(_$JobMetadataOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobMetadataOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expectedDurationSeconds = freezed,
    Object? cost = freezed,
    Object? costCurrency = freezed,
    Object? trainTokensPerStep = freezed,
    Object? trainTokens = freezed,
    Object? dataTokens = freezed,
    Object? estimatedStartTime = freezed,
  }) {
    return _then(_$JobMetadataOutImpl(
      expectedDurationSeconds: freezed == expectedDurationSeconds
          ? _value.expectedDurationSeconds
          : expectedDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      costCurrency: freezed == costCurrency
          ? _value.costCurrency
          : costCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      trainTokensPerStep: freezed == trainTokensPerStep
          ? _value.trainTokensPerStep
          : trainTokensPerStep // ignore: cast_nullable_to_non_nullable
              as int?,
      trainTokens: freezed == trainTokens
          ? _value.trainTokens
          : trainTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      dataTokens: freezed == dataTokens
          ? _value.dataTokens
          : dataTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      estimatedStartTime: freezed == estimatedStartTime
          ? _value.estimatedStartTime
          : estimatedStartTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobMetadataOutImpl extends _JobMetadataOut {
  const _$JobMetadataOutImpl(
      {@JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
      this.expectedDurationSeconds,
      @JsonKey(includeIfNull: false) this.cost,
      @JsonKey(name: 'cost_currency', includeIfNull: false) this.costCurrency,
      @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
      this.trainTokensPerStep,
      @JsonKey(name: 'train_tokens', includeIfNull: false) this.trainTokens,
      @JsonKey(name: 'data_tokens', includeIfNull: false) this.dataTokens,
      @JsonKey(name: 'estimated_start_time', includeIfNull: false)
      this.estimatedStartTime})
      : super._();

  factory _$JobMetadataOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobMetadataOutImplFromJson(json);

  /// No Description
  @override
  @JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
  final int? expectedDurationSeconds;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final double? cost;

  /// No Description
  @override
  @JsonKey(name: 'cost_currency', includeIfNull: false)
  final String? costCurrency;

  /// No Description
  @override
  @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
  final int? trainTokensPerStep;

  /// No Description
  @override
  @JsonKey(name: 'train_tokens', includeIfNull: false)
  final int? trainTokens;

  /// No Description
  @override
  @JsonKey(name: 'data_tokens', includeIfNull: false)
  final int? dataTokens;

  /// No Description
  @override
  @JsonKey(name: 'estimated_start_time', includeIfNull: false)
  final int? estimatedStartTime;

  @override
  String toString() {
    return 'JobMetadataOut(expectedDurationSeconds: $expectedDurationSeconds, cost: $cost, costCurrency: $costCurrency, trainTokensPerStep: $trainTokensPerStep, trainTokens: $trainTokens, dataTokens: $dataTokens, estimatedStartTime: $estimatedStartTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobMetadataOutImpl &&
            (identical(
                    other.expectedDurationSeconds, expectedDurationSeconds) ||
                other.expectedDurationSeconds == expectedDurationSeconds) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.costCurrency, costCurrency) ||
                other.costCurrency == costCurrency) &&
            (identical(other.trainTokensPerStep, trainTokensPerStep) ||
                other.trainTokensPerStep == trainTokensPerStep) &&
            (identical(other.trainTokens, trainTokens) ||
                other.trainTokens == trainTokens) &&
            (identical(other.dataTokens, dataTokens) ||
                other.dataTokens == dataTokens) &&
            (identical(other.estimatedStartTime, estimatedStartTime) ||
                other.estimatedStartTime == estimatedStartTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      expectedDurationSeconds,
      cost,
      costCurrency,
      trainTokensPerStep,
      trainTokens,
      dataTokens,
      estimatedStartTime);

  /// Create a copy of JobMetadataOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobMetadataOutImplCopyWith<_$JobMetadataOutImpl> get copyWith =>
      __$$JobMetadataOutImplCopyWithImpl<_$JobMetadataOutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobMetadataOutImplToJson(
      this,
    );
  }
}

abstract class _JobMetadataOut extends JobMetadataOut {
  const factory _JobMetadataOut(
      {@JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
      final int? expectedDurationSeconds,
      @JsonKey(includeIfNull: false) final double? cost,
      @JsonKey(name: 'cost_currency', includeIfNull: false)
      final String? costCurrency,
      @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
      final int? trainTokensPerStep,
      @JsonKey(name: 'train_tokens', includeIfNull: false)
      final int? trainTokens,
      @JsonKey(name: 'data_tokens', includeIfNull: false) final int? dataTokens,
      @JsonKey(name: 'estimated_start_time', includeIfNull: false)
      final int? estimatedStartTime}) = _$JobMetadataOutImpl;
  const _JobMetadataOut._() : super._();

  factory _JobMetadataOut.fromJson(Map<String, dynamic> json) =
      _$JobMetadataOutImpl.fromJson;

  /// No Description
  @override
  @JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
  int? get expectedDurationSeconds;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  double? get cost;

  /// No Description
  @override
  @JsonKey(name: 'cost_currency', includeIfNull: false)
  String? get costCurrency;

  /// No Description
  @override
  @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
  int? get trainTokensPerStep;

  /// No Description
  @override
  @JsonKey(name: 'train_tokens', includeIfNull: false)
  int? get trainTokens;

  /// No Description
  @override
  @JsonKey(name: 'data_tokens', includeIfNull: false)
  int? get dataTokens;

  /// No Description
  @override
  @JsonKey(name: 'estimated_start_time', includeIfNull: false)
  int? get estimatedStartTime;

  /// Create a copy of JobMetadataOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobMetadataOutImplCopyWith<_$JobMetadataOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobOut _$JobOutFromJson(Map<String, dynamic> json) {
  return _JobOut.fromJson(json);
}

/// @nodoc
mixin _$JobOut {
  /// The ID of the job.
  String get id => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'auto_start')
  bool get autoStart => throw _privateConstructorUsedError;

  /// No Description
  TrainingParameters get hyperparameters => throw _privateConstructorUsedError;

  /// The name of the model to fine-tune.
  FineTuneableModel get model => throw _privateConstructorUsedError;

  /// The current status of the fine-tuning job.
  Status get status => throw _privateConstructorUsedError;

  /// The type of job (`FT` for fine-tuning).
  @JsonKey(name: 'job_type')
  String get jobType => throw _privateConstructorUsedError;

  /// The UNIX timestamp (in seconds) for when the fine-tuning job was created.
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError;

  /// The UNIX timestamp (in seconds) for when the fine-tuning job was last modified.
  @JsonKey(name: 'modified_at')
  int get modifiedAt => throw _privateConstructorUsedError;

  /// A list containing the IDs of uploaded files that contain training data.
  @JsonKey(name: 'training_files')
  List<String> get trainingFiles => throw _privateConstructorUsedError;

  /// A list containing the IDs of uploaded files that contain validation data.
  @JsonKey(name: 'validation_files', includeIfNull: false)
  List<String>? get validationFiles => throw _privateConstructorUsedError;

  /// The object type of the fine-tuning job.
  JobOutObject get object => throw _privateConstructorUsedError;

  /// The name of the fine-tuned model that is being created. The value will be `null` if the fine-tuning job is still running.
  @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
  String? get fineTunedModel => throw _privateConstructorUsedError;

  /// Optional text/code that adds more context for the model. When given a `prompt` and a `suffix` the model will fill what is between them. When `suffix` is not provided, the model will simply execute completion starting with `prompt`.
  @JsonKey(includeIfNull: false)
  String? get suffix => throw _privateConstructorUsedError;

  /// A list of integrations enabled for your fine-tuning job.
  @JsonKey(includeIfNull: false)
  List<WandbIntegrationOut>? get integrations =>
      throw _privateConstructorUsedError;

  /// Total number of tokens trained.
  @JsonKey(name: 'trained_tokens', includeIfNull: false)
  int? get trainedTokens => throw _privateConstructorUsedError;

  /// No Description
  List<GithubRepositoryOut> get repositories =>
      throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  JobMetadataOut? get metadata => throw _privateConstructorUsedError;

  /// Serializes this JobOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobOutCopyWith<JobOut> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobOutCopyWith<$Res> {
  factory $JobOutCopyWith(JobOut value, $Res Function(JobOut) then) =
      _$JobOutCopyWithImpl<$Res, JobOut>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'auto_start') bool autoStart,
      TrainingParameters hyperparameters,
      FineTuneableModel model,
      Status status,
      @JsonKey(name: 'job_type') String jobType,
      @JsonKey(name: 'created_at') int createdAt,
      @JsonKey(name: 'modified_at') int modifiedAt,
      @JsonKey(name: 'training_files') List<String> trainingFiles,
      @JsonKey(name: 'validation_files', includeIfNull: false)
      List<String>? validationFiles,
      JobOutObject object,
      @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
      String? fineTunedModel,
      @JsonKey(includeIfNull: false) String? suffix,
      @JsonKey(includeIfNull: false) List<WandbIntegrationOut>? integrations,
      @JsonKey(name: 'trained_tokens', includeIfNull: false) int? trainedTokens,
      List<GithubRepositoryOut> repositories,
      @JsonKey(includeIfNull: false) JobMetadataOut? metadata});

  $TrainingParametersCopyWith<$Res> get hyperparameters;
  $JobMetadataOutCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$JobOutCopyWithImpl<$Res, $Val extends JobOut>
    implements $JobOutCopyWith<$Res> {
  _$JobOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? autoStart = null,
    Object? hyperparameters = null,
    Object? model = null,
    Object? status = null,
    Object? jobType = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? trainingFiles = null,
    Object? validationFiles = freezed,
    Object? object = null,
    Object? fineTunedModel = freezed,
    Object? suffix = freezed,
    Object? integrations = freezed,
    Object? trainedTokens = freezed,
    Object? repositories = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      autoStart: null == autoStart
          ? _value.autoStart
          : autoStart // ignore: cast_nullable_to_non_nullable
              as bool,
      hyperparameters: null == hyperparameters
          ? _value.hyperparameters
          : hyperparameters // ignore: cast_nullable_to_non_nullable
              as TrainingParameters,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FineTuneableModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      jobType: null == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as int,
      trainingFiles: null == trainingFiles
          ? _value.trainingFiles
          : trainingFiles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      validationFiles: freezed == validationFiles
          ? _value.validationFiles
          : validationFiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as JobOutObject,
      fineTunedModel: freezed == fineTunedModel
          ? _value.fineTunedModel
          : fineTunedModel // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      integrations: freezed == integrations
          ? _value.integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as List<WandbIntegrationOut>?,
      trainedTokens: freezed == trainedTokens
          ? _value.trainedTokens
          : trainedTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      repositories: null == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GithubRepositoryOut>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as JobMetadataOut?,
    ) as $Val);
  }

  /// Create a copy of JobOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrainingParametersCopyWith<$Res> get hyperparameters {
    return $TrainingParametersCopyWith<$Res>(_value.hyperparameters, (value) {
      return _then(_value.copyWith(hyperparameters: value) as $Val);
    });
  }

  /// Create a copy of JobOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobMetadataOutCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $JobMetadataOutCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobOutImplCopyWith<$Res> implements $JobOutCopyWith<$Res> {
  factory _$$JobOutImplCopyWith(
          _$JobOutImpl value, $Res Function(_$JobOutImpl) then) =
      __$$JobOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'auto_start') bool autoStart,
      TrainingParameters hyperparameters,
      FineTuneableModel model,
      Status status,
      @JsonKey(name: 'job_type') String jobType,
      @JsonKey(name: 'created_at') int createdAt,
      @JsonKey(name: 'modified_at') int modifiedAt,
      @JsonKey(name: 'training_files') List<String> trainingFiles,
      @JsonKey(name: 'validation_files', includeIfNull: false)
      List<String>? validationFiles,
      JobOutObject object,
      @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
      String? fineTunedModel,
      @JsonKey(includeIfNull: false) String? suffix,
      @JsonKey(includeIfNull: false) List<WandbIntegrationOut>? integrations,
      @JsonKey(name: 'trained_tokens', includeIfNull: false) int? trainedTokens,
      List<GithubRepositoryOut> repositories,
      @JsonKey(includeIfNull: false) JobMetadataOut? metadata});

  @override
  $TrainingParametersCopyWith<$Res> get hyperparameters;
  @override
  $JobMetadataOutCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$JobOutImplCopyWithImpl<$Res>
    extends _$JobOutCopyWithImpl<$Res, _$JobOutImpl>
    implements _$$JobOutImplCopyWith<$Res> {
  __$$JobOutImplCopyWithImpl(
      _$JobOutImpl _value, $Res Function(_$JobOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? autoStart = null,
    Object? hyperparameters = null,
    Object? model = null,
    Object? status = null,
    Object? jobType = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? trainingFiles = null,
    Object? validationFiles = freezed,
    Object? object = null,
    Object? fineTunedModel = freezed,
    Object? suffix = freezed,
    Object? integrations = freezed,
    Object? trainedTokens = freezed,
    Object? repositories = null,
    Object? metadata = freezed,
  }) {
    return _then(_$JobOutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      autoStart: null == autoStart
          ? _value.autoStart
          : autoStart // ignore: cast_nullable_to_non_nullable
              as bool,
      hyperparameters: null == hyperparameters
          ? _value.hyperparameters
          : hyperparameters // ignore: cast_nullable_to_non_nullable
              as TrainingParameters,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FineTuneableModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      jobType: null == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as int,
      trainingFiles: null == trainingFiles
          ? _value._trainingFiles
          : trainingFiles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      validationFiles: freezed == validationFiles
          ? _value._validationFiles
          : validationFiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as JobOutObject,
      fineTunedModel: freezed == fineTunedModel
          ? _value.fineTunedModel
          : fineTunedModel // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      integrations: freezed == integrations
          ? _value._integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as List<WandbIntegrationOut>?,
      trainedTokens: freezed == trainedTokens
          ? _value.trainedTokens
          : trainedTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      repositories: null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GithubRepositoryOut>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as JobMetadataOut?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobOutImpl extends _JobOut {
  const _$JobOutImpl(
      {required this.id,
      @JsonKey(name: 'auto_start') required this.autoStart,
      required this.hyperparameters,
      required this.model,
      required this.status,
      @JsonKey(name: 'job_type') required this.jobType,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'modified_at') required this.modifiedAt,
      @JsonKey(name: 'training_files')
      required final List<String> trainingFiles,
      @JsonKey(name: 'validation_files', includeIfNull: false)
      final List<String>? validationFiles = const [],
      this.object = JobOutObject.job,
      @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
      this.fineTunedModel,
      @JsonKey(includeIfNull: false) this.suffix,
      @JsonKey(includeIfNull: false)
      final List<WandbIntegrationOut>? integrations,
      @JsonKey(name: 'trained_tokens', includeIfNull: false) this.trainedTokens,
      final List<GithubRepositoryOut> repositories = const [],
      @JsonKey(includeIfNull: false) this.metadata})
      : _trainingFiles = trainingFiles,
        _validationFiles = validationFiles,
        _integrations = integrations,
        _repositories = repositories,
        super._();

  factory _$JobOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobOutImplFromJson(json);

  /// The ID of the job.
  @override
  final String id;

  /// No Description
  @override
  @JsonKey(name: 'auto_start')
  final bool autoStart;

  /// No Description
  @override
  final TrainingParameters hyperparameters;

  /// The name of the model to fine-tune.
  @override
  final FineTuneableModel model;

  /// The current status of the fine-tuning job.
  @override
  final Status status;

  /// The type of job (`FT` for fine-tuning).
  @override
  @JsonKey(name: 'job_type')
  final String jobType;

  /// The UNIX timestamp (in seconds) for when the fine-tuning job was created.
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;

  /// The UNIX timestamp (in seconds) for when the fine-tuning job was last modified.
  @override
  @JsonKey(name: 'modified_at')
  final int modifiedAt;

  /// A list containing the IDs of uploaded files that contain training data.
  final List<String> _trainingFiles;

  /// A list containing the IDs of uploaded files that contain training data.
  @override
  @JsonKey(name: 'training_files')
  List<String> get trainingFiles {
    if (_trainingFiles is EqualUnmodifiableListView) return _trainingFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainingFiles);
  }

  /// A list containing the IDs of uploaded files that contain validation data.
  final List<String>? _validationFiles;

  /// A list containing the IDs of uploaded files that contain validation data.
  @override
  @JsonKey(name: 'validation_files', includeIfNull: false)
  List<String>? get validationFiles {
    final value = _validationFiles;
    if (value == null) return null;
    if (_validationFiles is EqualUnmodifiableListView) return _validationFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The object type of the fine-tuning job.
  @override
  @JsonKey()
  final JobOutObject object;

  /// The name of the fine-tuned model that is being created. The value will be `null` if the fine-tuning job is still running.
  @override
  @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
  final String? fineTunedModel;

  /// Optional text/code that adds more context for the model. When given a `prompt` and a `suffix` the model will fill what is between them. When `suffix` is not provided, the model will simply execute completion starting with `prompt`.
  @override
  @JsonKey(includeIfNull: false)
  final String? suffix;

  /// A list of integrations enabled for your fine-tuning job.
  final List<WandbIntegrationOut>? _integrations;

  /// A list of integrations enabled for your fine-tuning job.
  @override
  @JsonKey(includeIfNull: false)
  List<WandbIntegrationOut>? get integrations {
    final value = _integrations;
    if (value == null) return null;
    if (_integrations is EqualUnmodifiableListView) return _integrations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Total number of tokens trained.
  @override
  @JsonKey(name: 'trained_tokens', includeIfNull: false)
  final int? trainedTokens;

  /// No Description
  final List<GithubRepositoryOut> _repositories;

  /// No Description
  @override
  @JsonKey()
  List<GithubRepositoryOut> get repositories {
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final JobMetadataOut? metadata;

  @override
  String toString() {
    return 'JobOut(id: $id, autoStart: $autoStart, hyperparameters: $hyperparameters, model: $model, status: $status, jobType: $jobType, createdAt: $createdAt, modifiedAt: $modifiedAt, trainingFiles: $trainingFiles, validationFiles: $validationFiles, object: $object, fineTunedModel: $fineTunedModel, suffix: $suffix, integrations: $integrations, trainedTokens: $trainedTokens, repositories: $repositories, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobOutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.autoStart, autoStart) ||
                other.autoStart == autoStart) &&
            (identical(other.hyperparameters, hyperparameters) ||
                other.hyperparameters == hyperparameters) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.jobType, jobType) || other.jobType == jobType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt) &&
            const DeepCollectionEquality()
                .equals(other._trainingFiles, _trainingFiles) &&
            const DeepCollectionEquality()
                .equals(other._validationFiles, _validationFiles) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.fineTunedModel, fineTunedModel) ||
                other.fineTunedModel == fineTunedModel) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            const DeepCollectionEquality()
                .equals(other._integrations, _integrations) &&
            (identical(other.trainedTokens, trainedTokens) ||
                other.trainedTokens == trainedTokens) &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      autoStart,
      hyperparameters,
      model,
      status,
      jobType,
      createdAt,
      modifiedAt,
      const DeepCollectionEquality().hash(_trainingFiles),
      const DeepCollectionEquality().hash(_validationFiles),
      object,
      fineTunedModel,
      suffix,
      const DeepCollectionEquality().hash(_integrations),
      trainedTokens,
      const DeepCollectionEquality().hash(_repositories),
      metadata);

  /// Create a copy of JobOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobOutImplCopyWith<_$JobOutImpl> get copyWith =>
      __$$JobOutImplCopyWithImpl<_$JobOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobOutImplToJson(
      this,
    );
  }
}

abstract class _JobOut extends JobOut {
  const factory _JobOut(
          {required final String id,
          @JsonKey(name: 'auto_start') required final bool autoStart,
          required final TrainingParameters hyperparameters,
          required final FineTuneableModel model,
          required final Status status,
          @JsonKey(name: 'job_type') required final String jobType,
          @JsonKey(name: 'created_at') required final int createdAt,
          @JsonKey(name: 'modified_at') required final int modifiedAt,
          @JsonKey(name: 'training_files')
          required final List<String> trainingFiles,
          @JsonKey(name: 'validation_files', includeIfNull: false)
          final List<String>? validationFiles,
          final JobOutObject object,
          @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
          final String? fineTunedModel,
          @JsonKey(includeIfNull: false) final String? suffix,
          @JsonKey(includeIfNull: false)
          final List<WandbIntegrationOut>? integrations,
          @JsonKey(name: 'trained_tokens', includeIfNull: false)
          final int? trainedTokens,
          final List<GithubRepositoryOut> repositories,
          @JsonKey(includeIfNull: false) final JobMetadataOut? metadata}) =
      _$JobOutImpl;
  const _JobOut._() : super._();

  factory _JobOut.fromJson(Map<String, dynamic> json) = _$JobOutImpl.fromJson;

  /// The ID of the job.
  @override
  String get id;

  /// No Description
  @override
  @JsonKey(name: 'auto_start')
  bool get autoStart;

  /// No Description
  @override
  TrainingParameters get hyperparameters;

  /// The name of the model to fine-tune.
  @override
  FineTuneableModel get model;

  /// The current status of the fine-tuning job.
  @override
  Status get status;

  /// The type of job (`FT` for fine-tuning).
  @override
  @JsonKey(name: 'job_type')
  String get jobType;

  /// The UNIX timestamp (in seconds) for when the fine-tuning job was created.
  @override
  @JsonKey(name: 'created_at')
  int get createdAt;

  /// The UNIX timestamp (in seconds) for when the fine-tuning job was last modified.
  @override
  @JsonKey(name: 'modified_at')
  int get modifiedAt;

  /// A list containing the IDs of uploaded files that contain training data.
  @override
  @JsonKey(name: 'training_files')
  List<String> get trainingFiles;

  /// A list containing the IDs of uploaded files that contain validation data.
  @override
  @JsonKey(name: 'validation_files', includeIfNull: false)
  List<String>? get validationFiles;

  /// The object type of the fine-tuning job.
  @override
  JobOutObject get object;

  /// The name of the fine-tuned model that is being created. The value will be `null` if the fine-tuning job is still running.
  @override
  @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
  String? get fineTunedModel;

  /// Optional text/code that adds more context for the model. When given a `prompt` and a `suffix` the model will fill what is between them. When `suffix` is not provided, the model will simply execute completion starting with `prompt`.
  @override
  @JsonKey(includeIfNull: false)
  String? get suffix;

  /// A list of integrations enabled for your fine-tuning job.
  @override
  @JsonKey(includeIfNull: false)
  List<WandbIntegrationOut>? get integrations;

  /// Total number of tokens trained.
  @override
  @JsonKey(name: 'trained_tokens', includeIfNull: false)
  int? get trainedTokens;

  /// No Description
  @override
  List<GithubRepositoryOut> get repositories;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  JobMetadataOut? get metadata;

  /// Create a copy of JobOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobOutImplCopyWith<_$JobOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobsOut _$JobsOutFromJson(Map<String, dynamic> json) {
  return _JobsOut.fromJson(json);
}

/// @nodoc
mixin _$JobsOut {
  /// No Description
  List<JobOut> get data => throw _privateConstructorUsedError;

  ///
  JobsOutObject get object => throw _privateConstructorUsedError;

  /// No Description
  int get total => throw _privateConstructorUsedError;

  /// Serializes this JobsOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobsOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobsOutCopyWith<JobsOut> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsOutCopyWith<$Res> {
  factory $JobsOutCopyWith(JobsOut value, $Res Function(JobsOut) then) =
      _$JobsOutCopyWithImpl<$Res, JobsOut>;
  @useResult
  $Res call({List<JobOut> data, JobsOutObject object, int total});
}

/// @nodoc
class _$JobsOutCopyWithImpl<$Res, $Val extends JobsOut>
    implements $JobsOutCopyWith<$Res> {
  _$JobsOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobsOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? object = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobOut>,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as JobsOutObject,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobsOutImplCopyWith<$Res> implements $JobsOutCopyWith<$Res> {
  factory _$$JobsOutImplCopyWith(
          _$JobsOutImpl value, $Res Function(_$JobsOutImpl) then) =
      __$$JobsOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<JobOut> data, JobsOutObject object, int total});
}

/// @nodoc
class __$$JobsOutImplCopyWithImpl<$Res>
    extends _$JobsOutCopyWithImpl<$Res, _$JobsOutImpl>
    implements _$$JobsOutImplCopyWith<$Res> {
  __$$JobsOutImplCopyWithImpl(
      _$JobsOutImpl _value, $Res Function(_$JobsOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobsOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? object = null,
    Object? total = null,
  }) {
    return _then(_$JobsOutImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobOut>,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as JobsOutObject,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobsOutImpl extends _JobsOut {
  const _$JobsOutImpl(
      {final List<JobOut> data = const [],
      this.object = JobsOutObject.list,
      required this.total})
      : _data = data,
        super._();

  factory _$JobsOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobsOutImplFromJson(json);

  /// No Description
  final List<JobOut> _data;

  /// No Description
  @override
  @JsonKey()
  List<JobOut> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  ///
  @override
  @JsonKey()
  final JobsOutObject object;

  /// No Description
  @override
  final int total;

  @override
  String toString() {
    return 'JobsOut(data: $data, object: $object, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsOutImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), object, total);

  /// Create a copy of JobsOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsOutImplCopyWith<_$JobsOutImpl> get copyWith =>
      __$$JobsOutImplCopyWithImpl<_$JobsOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobsOutImplToJson(
      this,
    );
  }
}

abstract class _JobsOut extends JobsOut {
  const factory _JobsOut(
      {final List<JobOut> data,
      final JobsOutObject object,
      required final int total}) = _$JobsOutImpl;
  const _JobsOut._() : super._();

  factory _JobsOut.fromJson(Map<String, dynamic> json) = _$JobsOutImpl.fromJson;

  /// No Description
  @override
  List<JobOut> get data;

  ///
  @override
  JobsOutObject get object;

  /// No Description
  @override
  int get total;

  /// Create a copy of JobsOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobsOutImplCopyWith<_$JobsOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrainingParameters _$TrainingParametersFromJson(Map<String, dynamic> json) {
  return _TrainingParameters.fromJson(json);
}

/// @nodoc
mixin _$TrainingParameters {
  /// No Description
  @JsonKey(name: 'training_steps', includeIfNull: false)
  int? get trainingSteps => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'learning_rate')
  double get learningRate => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  double? get epochs => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'fim_ratio', includeIfNull: false)
  double? get fimRatio => throw _privateConstructorUsedError;

  /// Serializes this TrainingParameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainingParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainingParametersCopyWith<TrainingParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingParametersCopyWith<$Res> {
  factory $TrainingParametersCopyWith(
          TrainingParameters value, $Res Function(TrainingParameters) then) =
      _$TrainingParametersCopyWithImpl<$Res, TrainingParameters>;
  @useResult
  $Res call(
      {@JsonKey(name: 'training_steps', includeIfNull: false)
      int? trainingSteps,
      @JsonKey(name: 'learning_rate') double learningRate,
      @JsonKey(includeIfNull: false) double? epochs,
      @JsonKey(name: 'fim_ratio', includeIfNull: false) double? fimRatio});
}

/// @nodoc
class _$TrainingParametersCopyWithImpl<$Res, $Val extends TrainingParameters>
    implements $TrainingParametersCopyWith<$Res> {
  _$TrainingParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainingParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainingSteps = freezed,
    Object? learningRate = null,
    Object? epochs = freezed,
    Object? fimRatio = freezed,
  }) {
    return _then(_value.copyWith(
      trainingSteps: freezed == trainingSteps
          ? _value.trainingSteps
          : trainingSteps // ignore: cast_nullable_to_non_nullable
              as int?,
      learningRate: null == learningRate
          ? _value.learningRate
          : learningRate // ignore: cast_nullable_to_non_nullable
              as double,
      epochs: freezed == epochs
          ? _value.epochs
          : epochs // ignore: cast_nullable_to_non_nullable
              as double?,
      fimRatio: freezed == fimRatio
          ? _value.fimRatio
          : fimRatio // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingParametersImplCopyWith<$Res>
    implements $TrainingParametersCopyWith<$Res> {
  factory _$$TrainingParametersImplCopyWith(_$TrainingParametersImpl value,
          $Res Function(_$TrainingParametersImpl) then) =
      __$$TrainingParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'training_steps', includeIfNull: false)
      int? trainingSteps,
      @JsonKey(name: 'learning_rate') double learningRate,
      @JsonKey(includeIfNull: false) double? epochs,
      @JsonKey(name: 'fim_ratio', includeIfNull: false) double? fimRatio});
}

/// @nodoc
class __$$TrainingParametersImplCopyWithImpl<$Res>
    extends _$TrainingParametersCopyWithImpl<$Res, _$TrainingParametersImpl>
    implements _$$TrainingParametersImplCopyWith<$Res> {
  __$$TrainingParametersImplCopyWithImpl(_$TrainingParametersImpl _value,
      $Res Function(_$TrainingParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainingParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainingSteps = freezed,
    Object? learningRate = null,
    Object? epochs = freezed,
    Object? fimRatio = freezed,
  }) {
    return _then(_$TrainingParametersImpl(
      trainingSteps: freezed == trainingSteps
          ? _value.trainingSteps
          : trainingSteps // ignore: cast_nullable_to_non_nullable
              as int?,
      learningRate: null == learningRate
          ? _value.learningRate
          : learningRate // ignore: cast_nullable_to_non_nullable
              as double,
      epochs: freezed == epochs
          ? _value.epochs
          : epochs // ignore: cast_nullable_to_non_nullable
              as double?,
      fimRatio: freezed == fimRatio
          ? _value.fimRatio
          : fimRatio // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingParametersImpl extends _TrainingParameters {
  const _$TrainingParametersImpl(
      {@JsonKey(name: 'training_steps', includeIfNull: false)
      this.trainingSteps,
      @JsonKey(name: 'learning_rate') this.learningRate = 0.0001,
      @JsonKey(includeIfNull: false) this.epochs,
      @JsonKey(name: 'fim_ratio', includeIfNull: false) this.fimRatio = 0.9})
      : super._();

  factory _$TrainingParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingParametersImplFromJson(json);

  /// No Description
  @override
  @JsonKey(name: 'training_steps', includeIfNull: false)
  final int? trainingSteps;

  /// No Description
  @override
  @JsonKey(name: 'learning_rate')
  final double learningRate;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final double? epochs;

  /// No Description
  @override
  @JsonKey(name: 'fim_ratio', includeIfNull: false)
  final double? fimRatio;

  @override
  String toString() {
    return 'TrainingParameters(trainingSteps: $trainingSteps, learningRate: $learningRate, epochs: $epochs, fimRatio: $fimRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingParametersImpl &&
            (identical(other.trainingSteps, trainingSteps) ||
                other.trainingSteps == trainingSteps) &&
            (identical(other.learningRate, learningRate) ||
                other.learningRate == learningRate) &&
            (identical(other.epochs, epochs) || other.epochs == epochs) &&
            (identical(other.fimRatio, fimRatio) ||
                other.fimRatio == fimRatio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, trainingSteps, learningRate, epochs, fimRatio);

  /// Create a copy of TrainingParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingParametersImplCopyWith<_$TrainingParametersImpl> get copyWith =>
      __$$TrainingParametersImplCopyWithImpl<_$TrainingParametersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingParametersImplToJson(
      this,
    );
  }
}

abstract class _TrainingParameters extends TrainingParameters {
  const factory _TrainingParameters(
      {@JsonKey(name: 'training_steps', includeIfNull: false)
      final int? trainingSteps,
      @JsonKey(name: 'learning_rate') final double learningRate,
      @JsonKey(includeIfNull: false) final double? epochs,
      @JsonKey(name: 'fim_ratio', includeIfNull: false)
      final double? fimRatio}) = _$TrainingParametersImpl;
  const _TrainingParameters._() : super._();

  factory _TrainingParameters.fromJson(Map<String, dynamic> json) =
      _$TrainingParametersImpl.fromJson;

  /// No Description
  @override
  @JsonKey(name: 'training_steps', includeIfNull: false)
  int? get trainingSteps;

  /// No Description
  @override
  @JsonKey(name: 'learning_rate')
  double get learningRate;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  double? get epochs;

  /// No Description
  @override
  @JsonKey(name: 'fim_ratio', includeIfNull: false)
  double? get fimRatio;

  /// Create a copy of TrainingParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainingParametersImplCopyWith<_$TrainingParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WandbIntegrationOut _$WandbIntegrationOutFromJson(Map<String, dynamic> json) {
  return _WandbIntegrationOut.fromJson(json);
}

/// @nodoc
mixin _$WandbIntegrationOut {
  ///
  WandbIntegrationOutType get type => throw _privateConstructorUsedError;

  /// The name of the project that the new run will be created under.
  String get project => throw _privateConstructorUsedError;

  /// A display name to set for the run. If not set, will use the job ID as the name.
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'run_name', includeIfNull: false)
  String? get runName => throw _privateConstructorUsedError;

  /// Serializes this WandbIntegrationOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WandbIntegrationOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WandbIntegrationOutCopyWith<WandbIntegrationOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WandbIntegrationOutCopyWith<$Res> {
  factory $WandbIntegrationOutCopyWith(
          WandbIntegrationOut value, $Res Function(WandbIntegrationOut) then) =
      _$WandbIntegrationOutCopyWithImpl<$Res, WandbIntegrationOut>;
  @useResult
  $Res call(
      {WandbIntegrationOutType type,
      String project,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(name: 'run_name', includeIfNull: false) String? runName});
}

/// @nodoc
class _$WandbIntegrationOutCopyWithImpl<$Res, $Val extends WandbIntegrationOut>
    implements $WandbIntegrationOutCopyWith<$Res> {
  _$WandbIntegrationOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WandbIntegrationOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? project = null,
    Object? name = freezed,
    Object? runName = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WandbIntegrationOutType,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      runName: freezed == runName
          ? _value.runName
          : runName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WandbIntegrationOutImplCopyWith<$Res>
    implements $WandbIntegrationOutCopyWith<$Res> {
  factory _$$WandbIntegrationOutImplCopyWith(_$WandbIntegrationOutImpl value,
          $Res Function(_$WandbIntegrationOutImpl) then) =
      __$$WandbIntegrationOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WandbIntegrationOutType type,
      String project,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(name: 'run_name', includeIfNull: false) String? runName});
}

/// @nodoc
class __$$WandbIntegrationOutImplCopyWithImpl<$Res>
    extends _$WandbIntegrationOutCopyWithImpl<$Res, _$WandbIntegrationOutImpl>
    implements _$$WandbIntegrationOutImplCopyWith<$Res> {
  __$$WandbIntegrationOutImplCopyWithImpl(_$WandbIntegrationOutImpl _value,
      $Res Function(_$WandbIntegrationOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of WandbIntegrationOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? project = null,
    Object? name = freezed,
    Object? runName = freezed,
  }) {
    return _then(_$WandbIntegrationOutImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WandbIntegrationOutType,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      runName: freezed == runName
          ? _value.runName
          : runName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WandbIntegrationOutImpl extends _WandbIntegrationOut {
  const _$WandbIntegrationOutImpl(
      {this.type = WandbIntegrationOutType.wandb,
      required this.project,
      @JsonKey(includeIfNull: false) this.name,
      @JsonKey(name: 'run_name', includeIfNull: false) this.runName})
      : super._();

  factory _$WandbIntegrationOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$WandbIntegrationOutImplFromJson(json);

  ///
  @override
  @JsonKey()
  final WandbIntegrationOutType type;

  /// The name of the project that the new run will be created under.
  @override
  final String project;

  /// A display name to set for the run. If not set, will use the job ID as the name.
  @override
  @JsonKey(includeIfNull: false)
  final String? name;

  /// No Description
  @override
  @JsonKey(name: 'run_name', includeIfNull: false)
  final String? runName;

  @override
  String toString() {
    return 'WandbIntegrationOut(type: $type, project: $project, name: $name, runName: $runName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WandbIntegrationOutImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.runName, runName) || other.runName == runName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, project, name, runName);

  /// Create a copy of WandbIntegrationOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WandbIntegrationOutImplCopyWith<_$WandbIntegrationOutImpl> get copyWith =>
      __$$WandbIntegrationOutImplCopyWithImpl<_$WandbIntegrationOutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WandbIntegrationOutImplToJson(
      this,
    );
  }
}

abstract class _WandbIntegrationOut extends WandbIntegrationOut {
  const factory _WandbIntegrationOut(
      {final WandbIntegrationOutType type,
      required final String project,
      @JsonKey(includeIfNull: false) final String? name,
      @JsonKey(name: 'run_name', includeIfNull: false)
      final String? runName}) = _$WandbIntegrationOutImpl;
  const _WandbIntegrationOut._() : super._();

  factory _WandbIntegrationOut.fromJson(Map<String, dynamic> json) =
      _$WandbIntegrationOutImpl.fromJson;

  ///
  @override
  WandbIntegrationOutType get type;

  /// The name of the project that the new run will be created under.
  @override
  String get project;

  /// A display name to set for the run. If not set, will use the job ID as the name.
  @override
  @JsonKey(includeIfNull: false)
  String? get name;

  /// No Description
  @override
  @JsonKey(name: 'run_name', includeIfNull: false)
  String? get runName;

  /// Create a copy of WandbIntegrationOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WandbIntegrationOutImplCopyWith<_$WandbIntegrationOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LegacyJobMetadataOut _$LegacyJobMetadataOutFromJson(Map<String, dynamic> json) {
  return _LegacyJobMetadataOut.fromJson(json);
}

/// @nodoc
mixin _$LegacyJobMetadataOut {
  /// The approximated time (in seconds) for the fine-tuning process to complete.
  @JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
  int? get expectedDurationSeconds => throw _privateConstructorUsedError;

  /// The cost of the fine-tuning job.
  @JsonKey(includeIfNull: false)
  double? get cost => throw _privateConstructorUsedError;

  /// The currency used for the fine-tuning job cost.
  @JsonKey(name: 'cost_currency', includeIfNull: false)
  String? get costCurrency => throw _privateConstructorUsedError;

  /// The number of tokens consumed by one training step.
  @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
  int? get trainTokensPerStep => throw _privateConstructorUsedError;

  /// The total number of tokens used during the fine-tuning process.
  @JsonKey(name: 'train_tokens', includeIfNull: false)
  int? get trainTokens => throw _privateConstructorUsedError;

  /// The total number of tokens in the training dataset.
  @JsonKey(name: 'data_tokens', includeIfNull: false)
  int? get dataTokens => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'estimated_start_time', includeIfNull: false)
  int? get estimatedStartTime => throw _privateConstructorUsedError;

  /// No Description
  bool get deprecated => throw _privateConstructorUsedError;

  /// No Description
  String get details => throw _privateConstructorUsedError;

  /// The number of complete passes through the entire training dataset.
  @JsonKey(includeIfNull: false)
  double? get epochs => throw _privateConstructorUsedError;

  /// The number of training steps to perform. A training step refers to a single update of the model weights during the fine-tuning process. This update is typically calculated using a batch of samples from the training dataset.
  @JsonKey(name: 'training_steps', includeIfNull: false)
  int? get trainingSteps => throw _privateConstructorUsedError;

  ///
  LegacyJobMetadataOutObject get object => throw _privateConstructorUsedError;

  /// Serializes this LegacyJobMetadataOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LegacyJobMetadataOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LegacyJobMetadataOutCopyWith<LegacyJobMetadataOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegacyJobMetadataOutCopyWith<$Res> {
  factory $LegacyJobMetadataOutCopyWith(LegacyJobMetadataOut value,
          $Res Function(LegacyJobMetadataOut) then) =
      _$LegacyJobMetadataOutCopyWithImpl<$Res, LegacyJobMetadataOut>;
  @useResult
  $Res call(
      {@JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
      int? expectedDurationSeconds,
      @JsonKey(includeIfNull: false) double? cost,
      @JsonKey(name: 'cost_currency', includeIfNull: false)
      String? costCurrency,
      @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
      int? trainTokensPerStep,
      @JsonKey(name: 'train_tokens', includeIfNull: false) int? trainTokens,
      @JsonKey(name: 'data_tokens', includeIfNull: false) int? dataTokens,
      @JsonKey(name: 'estimated_start_time', includeIfNull: false)
      int? estimatedStartTime,
      bool deprecated,
      String details,
      @JsonKey(includeIfNull: false) double? epochs,
      @JsonKey(name: 'training_steps', includeIfNull: false) int? trainingSteps,
      LegacyJobMetadataOutObject object});
}

/// @nodoc
class _$LegacyJobMetadataOutCopyWithImpl<$Res,
        $Val extends LegacyJobMetadataOut>
    implements $LegacyJobMetadataOutCopyWith<$Res> {
  _$LegacyJobMetadataOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LegacyJobMetadataOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expectedDurationSeconds = freezed,
    Object? cost = freezed,
    Object? costCurrency = freezed,
    Object? trainTokensPerStep = freezed,
    Object? trainTokens = freezed,
    Object? dataTokens = freezed,
    Object? estimatedStartTime = freezed,
    Object? deprecated = null,
    Object? details = null,
    Object? epochs = freezed,
    Object? trainingSteps = freezed,
    Object? object = null,
  }) {
    return _then(_value.copyWith(
      expectedDurationSeconds: freezed == expectedDurationSeconds
          ? _value.expectedDurationSeconds
          : expectedDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      costCurrency: freezed == costCurrency
          ? _value.costCurrency
          : costCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      trainTokensPerStep: freezed == trainTokensPerStep
          ? _value.trainTokensPerStep
          : trainTokensPerStep // ignore: cast_nullable_to_non_nullable
              as int?,
      trainTokens: freezed == trainTokens
          ? _value.trainTokens
          : trainTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      dataTokens: freezed == dataTokens
          ? _value.dataTokens
          : dataTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      estimatedStartTime: freezed == estimatedStartTime
          ? _value.estimatedStartTime
          : estimatedStartTime // ignore: cast_nullable_to_non_nullable
              as int?,
      deprecated: null == deprecated
          ? _value.deprecated
          : deprecated // ignore: cast_nullable_to_non_nullable
              as bool,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      epochs: freezed == epochs
          ? _value.epochs
          : epochs // ignore: cast_nullable_to_non_nullable
              as double?,
      trainingSteps: freezed == trainingSteps
          ? _value.trainingSteps
          : trainingSteps // ignore: cast_nullable_to_non_nullable
              as int?,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as LegacyJobMetadataOutObject,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LegacyJobMetadataOutImplCopyWith<$Res>
    implements $LegacyJobMetadataOutCopyWith<$Res> {
  factory _$$LegacyJobMetadataOutImplCopyWith(_$LegacyJobMetadataOutImpl value,
          $Res Function(_$LegacyJobMetadataOutImpl) then) =
      __$$LegacyJobMetadataOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
      int? expectedDurationSeconds,
      @JsonKey(includeIfNull: false) double? cost,
      @JsonKey(name: 'cost_currency', includeIfNull: false)
      String? costCurrency,
      @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
      int? trainTokensPerStep,
      @JsonKey(name: 'train_tokens', includeIfNull: false) int? trainTokens,
      @JsonKey(name: 'data_tokens', includeIfNull: false) int? dataTokens,
      @JsonKey(name: 'estimated_start_time', includeIfNull: false)
      int? estimatedStartTime,
      bool deprecated,
      String details,
      @JsonKey(includeIfNull: false) double? epochs,
      @JsonKey(name: 'training_steps', includeIfNull: false) int? trainingSteps,
      LegacyJobMetadataOutObject object});
}

/// @nodoc
class __$$LegacyJobMetadataOutImplCopyWithImpl<$Res>
    extends _$LegacyJobMetadataOutCopyWithImpl<$Res, _$LegacyJobMetadataOutImpl>
    implements _$$LegacyJobMetadataOutImplCopyWith<$Res> {
  __$$LegacyJobMetadataOutImplCopyWithImpl(_$LegacyJobMetadataOutImpl _value,
      $Res Function(_$LegacyJobMetadataOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of LegacyJobMetadataOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expectedDurationSeconds = freezed,
    Object? cost = freezed,
    Object? costCurrency = freezed,
    Object? trainTokensPerStep = freezed,
    Object? trainTokens = freezed,
    Object? dataTokens = freezed,
    Object? estimatedStartTime = freezed,
    Object? deprecated = null,
    Object? details = null,
    Object? epochs = freezed,
    Object? trainingSteps = freezed,
    Object? object = null,
  }) {
    return _then(_$LegacyJobMetadataOutImpl(
      expectedDurationSeconds: freezed == expectedDurationSeconds
          ? _value.expectedDurationSeconds
          : expectedDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      costCurrency: freezed == costCurrency
          ? _value.costCurrency
          : costCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      trainTokensPerStep: freezed == trainTokensPerStep
          ? _value.trainTokensPerStep
          : trainTokensPerStep // ignore: cast_nullable_to_non_nullable
              as int?,
      trainTokens: freezed == trainTokens
          ? _value.trainTokens
          : trainTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      dataTokens: freezed == dataTokens
          ? _value.dataTokens
          : dataTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      estimatedStartTime: freezed == estimatedStartTime
          ? _value.estimatedStartTime
          : estimatedStartTime // ignore: cast_nullable_to_non_nullable
              as int?,
      deprecated: null == deprecated
          ? _value.deprecated
          : deprecated // ignore: cast_nullable_to_non_nullable
              as bool,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      epochs: freezed == epochs
          ? _value.epochs
          : epochs // ignore: cast_nullable_to_non_nullable
              as double?,
      trainingSteps: freezed == trainingSteps
          ? _value.trainingSteps
          : trainingSteps // ignore: cast_nullable_to_non_nullable
              as int?,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as LegacyJobMetadataOutObject,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LegacyJobMetadataOutImpl extends _LegacyJobMetadataOut {
  const _$LegacyJobMetadataOutImpl(
      {@JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
      this.expectedDurationSeconds,
      @JsonKey(includeIfNull: false) this.cost,
      @JsonKey(name: 'cost_currency', includeIfNull: false) this.costCurrency,
      @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
      this.trainTokensPerStep,
      @JsonKey(name: 'train_tokens', includeIfNull: false) this.trainTokens,
      @JsonKey(name: 'data_tokens', includeIfNull: false) this.dataTokens,
      @JsonKey(name: 'estimated_start_time', includeIfNull: false)
      this.estimatedStartTime,
      this.deprecated = true,
      required this.details,
      @JsonKey(includeIfNull: false) this.epochs,
      @JsonKey(name: 'training_steps', includeIfNull: false) this.trainingSteps,
      this.object = LegacyJobMetadataOutObject.jobMetadata})
      : super._();

  factory _$LegacyJobMetadataOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$LegacyJobMetadataOutImplFromJson(json);

  /// The approximated time (in seconds) for the fine-tuning process to complete.
  @override
  @JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
  final int? expectedDurationSeconds;

  /// The cost of the fine-tuning job.
  @override
  @JsonKey(includeIfNull: false)
  final double? cost;

  /// The currency used for the fine-tuning job cost.
  @override
  @JsonKey(name: 'cost_currency', includeIfNull: false)
  final String? costCurrency;

  /// The number of tokens consumed by one training step.
  @override
  @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
  final int? trainTokensPerStep;

  /// The total number of tokens used during the fine-tuning process.
  @override
  @JsonKey(name: 'train_tokens', includeIfNull: false)
  final int? trainTokens;

  /// The total number of tokens in the training dataset.
  @override
  @JsonKey(name: 'data_tokens', includeIfNull: false)
  final int? dataTokens;

  /// No Description
  @override
  @JsonKey(name: 'estimated_start_time', includeIfNull: false)
  final int? estimatedStartTime;

  /// No Description
  @override
  @JsonKey()
  final bool deprecated;

  /// No Description
  @override
  final String details;

  /// The number of complete passes through the entire training dataset.
  @override
  @JsonKey(includeIfNull: false)
  final double? epochs;

  /// The number of training steps to perform. A training step refers to a single update of the model weights during the fine-tuning process. This update is typically calculated using a batch of samples from the training dataset.
  @override
  @JsonKey(name: 'training_steps', includeIfNull: false)
  final int? trainingSteps;

  ///
  @override
  @JsonKey()
  final LegacyJobMetadataOutObject object;

  @override
  String toString() {
    return 'LegacyJobMetadataOut(expectedDurationSeconds: $expectedDurationSeconds, cost: $cost, costCurrency: $costCurrency, trainTokensPerStep: $trainTokensPerStep, trainTokens: $trainTokens, dataTokens: $dataTokens, estimatedStartTime: $estimatedStartTime, deprecated: $deprecated, details: $details, epochs: $epochs, trainingSteps: $trainingSteps, object: $object)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LegacyJobMetadataOutImpl &&
            (identical(
                    other.expectedDurationSeconds, expectedDurationSeconds) ||
                other.expectedDurationSeconds == expectedDurationSeconds) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.costCurrency, costCurrency) ||
                other.costCurrency == costCurrency) &&
            (identical(other.trainTokensPerStep, trainTokensPerStep) ||
                other.trainTokensPerStep == trainTokensPerStep) &&
            (identical(other.trainTokens, trainTokens) ||
                other.trainTokens == trainTokens) &&
            (identical(other.dataTokens, dataTokens) ||
                other.dataTokens == dataTokens) &&
            (identical(other.estimatedStartTime, estimatedStartTime) ||
                other.estimatedStartTime == estimatedStartTime) &&
            (identical(other.deprecated, deprecated) ||
                other.deprecated == deprecated) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.epochs, epochs) || other.epochs == epochs) &&
            (identical(other.trainingSteps, trainingSteps) ||
                other.trainingSteps == trainingSteps) &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      expectedDurationSeconds,
      cost,
      costCurrency,
      trainTokensPerStep,
      trainTokens,
      dataTokens,
      estimatedStartTime,
      deprecated,
      details,
      epochs,
      trainingSteps,
      object);

  /// Create a copy of LegacyJobMetadataOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LegacyJobMetadataOutImplCopyWith<_$LegacyJobMetadataOutImpl>
      get copyWith =>
          __$$LegacyJobMetadataOutImplCopyWithImpl<_$LegacyJobMetadataOutImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LegacyJobMetadataOutImplToJson(
      this,
    );
  }
}

abstract class _LegacyJobMetadataOut extends LegacyJobMetadataOut {
  const factory _LegacyJobMetadataOut(
      {@JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
      final int? expectedDurationSeconds,
      @JsonKey(includeIfNull: false) final double? cost,
      @JsonKey(name: 'cost_currency', includeIfNull: false)
      final String? costCurrency,
      @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
      final int? trainTokensPerStep,
      @JsonKey(name: 'train_tokens', includeIfNull: false)
      final int? trainTokens,
      @JsonKey(name: 'data_tokens', includeIfNull: false) final int? dataTokens,
      @JsonKey(name: 'estimated_start_time', includeIfNull: false)
      final int? estimatedStartTime,
      final bool deprecated,
      required final String details,
      @JsonKey(includeIfNull: false) final double? epochs,
      @JsonKey(name: 'training_steps', includeIfNull: false)
      final int? trainingSteps,
      final LegacyJobMetadataOutObject object}) = _$LegacyJobMetadataOutImpl;
  const _LegacyJobMetadataOut._() : super._();

  factory _LegacyJobMetadataOut.fromJson(Map<String, dynamic> json) =
      _$LegacyJobMetadataOutImpl.fromJson;

  /// The approximated time (in seconds) for the fine-tuning process to complete.
  @override
  @JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
  int? get expectedDurationSeconds;

  /// The cost of the fine-tuning job.
  @override
  @JsonKey(includeIfNull: false)
  double? get cost;

  /// The currency used for the fine-tuning job cost.
  @override
  @JsonKey(name: 'cost_currency', includeIfNull: false)
  String? get costCurrency;

  /// The number of tokens consumed by one training step.
  @override
  @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
  int? get trainTokensPerStep;

  /// The total number of tokens used during the fine-tuning process.
  @override
  @JsonKey(name: 'train_tokens', includeIfNull: false)
  int? get trainTokens;

  /// The total number of tokens in the training dataset.
  @override
  @JsonKey(name: 'data_tokens', includeIfNull: false)
  int? get dataTokens;

  /// No Description
  @override
  @JsonKey(name: 'estimated_start_time', includeIfNull: false)
  int? get estimatedStartTime;

  /// No Description
  @override
  bool get deprecated;

  /// No Description
  @override
  String get details;

  /// The number of complete passes through the entire training dataset.
  @override
  @JsonKey(includeIfNull: false)
  double? get epochs;

  /// The number of training steps to perform. A training step refers to a single update of the model weights during the fine-tuning process. This update is typically calculated using a batch of samples from the training dataset.
  @override
  @JsonKey(name: 'training_steps', includeIfNull: false)
  int? get trainingSteps;

  ///
  @override
  LegacyJobMetadataOutObject get object;

  /// Create a copy of LegacyJobMetadataOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LegacyJobMetadataOutImplCopyWith<_$LegacyJobMetadataOutImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GithubRepositoryIn _$GithubRepositoryInFromJson(Map<String, dynamic> json) {
  return _GithubRepositoryIn.fromJson(json);
}

/// @nodoc
mixin _$GithubRepositoryIn {
  ///
  GithubRepositoryInType get type => throw _privateConstructorUsedError;

  /// No Description
  String get name => throw _privateConstructorUsedError;

  /// No Description
  String get owner => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get ref => throw _privateConstructorUsedError;

  /// No Description
  double get weight => throw _privateConstructorUsedError;

  /// No Description
  String get token => throw _privateConstructorUsedError;

  /// Serializes this GithubRepositoryIn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GithubRepositoryIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GithubRepositoryInCopyWith<GithubRepositoryIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoryInCopyWith<$Res> {
  factory $GithubRepositoryInCopyWith(
          GithubRepositoryIn value, $Res Function(GithubRepositoryIn) then) =
      _$GithubRepositoryInCopyWithImpl<$Res, GithubRepositoryIn>;
  @useResult
  $Res call(
      {GithubRepositoryInType type,
      String name,
      String owner,
      @JsonKey(includeIfNull: false) String? ref,
      double weight,
      String token});
}

/// @nodoc
class _$GithubRepositoryInCopyWithImpl<$Res, $Val extends GithubRepositoryIn>
    implements $GithubRepositoryInCopyWith<$Res> {
  _$GithubRepositoryInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GithubRepositoryIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? owner = null,
    Object? ref = freezed,
    Object? weight = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GithubRepositoryInType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GithubRepositoryInImplCopyWith<$Res>
    implements $GithubRepositoryInCopyWith<$Res> {
  factory _$$GithubRepositoryInImplCopyWith(_$GithubRepositoryInImpl value,
          $Res Function(_$GithubRepositoryInImpl) then) =
      __$$GithubRepositoryInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GithubRepositoryInType type,
      String name,
      String owner,
      @JsonKey(includeIfNull: false) String? ref,
      double weight,
      String token});
}

/// @nodoc
class __$$GithubRepositoryInImplCopyWithImpl<$Res>
    extends _$GithubRepositoryInCopyWithImpl<$Res, _$GithubRepositoryInImpl>
    implements _$$GithubRepositoryInImplCopyWith<$Res> {
  __$$GithubRepositoryInImplCopyWithImpl(_$GithubRepositoryInImpl _value,
      $Res Function(_$GithubRepositoryInImpl) _then)
      : super(_value, _then);

  /// Create a copy of GithubRepositoryIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? owner = null,
    Object? ref = freezed,
    Object? weight = null,
    Object? token = null,
  }) {
    return _then(_$GithubRepositoryInImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GithubRepositoryInType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubRepositoryInImpl extends _GithubRepositoryIn {
  const _$GithubRepositoryInImpl(
      {this.type = GithubRepositoryInType.github,
      required this.name,
      required this.owner,
      @JsonKey(includeIfNull: false) this.ref,
      this.weight = 1.0,
      required this.token})
      : super._();

  factory _$GithubRepositoryInImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubRepositoryInImplFromJson(json);

  ///
  @override
  @JsonKey()
  final GithubRepositoryInType type;

  /// No Description
  @override
  final String name;

  /// No Description
  @override
  final String owner;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? ref;

  /// No Description
  @override
  @JsonKey()
  final double weight;

  /// No Description
  @override
  final String token;

  @override
  String toString() {
    return 'GithubRepositoryIn(type: $type, name: $name, owner: $owner, ref: $ref, weight: $weight, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepositoryInImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, name, owner, ref, weight, token);

  /// Create a copy of GithubRepositoryIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepositoryInImplCopyWith<_$GithubRepositoryInImpl> get copyWith =>
      __$$GithubRepositoryInImplCopyWithImpl<_$GithubRepositoryInImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubRepositoryInImplToJson(
      this,
    );
  }
}

abstract class _GithubRepositoryIn extends GithubRepositoryIn {
  const factory _GithubRepositoryIn(
      {final GithubRepositoryInType type,
      required final String name,
      required final String owner,
      @JsonKey(includeIfNull: false) final String? ref,
      final double weight,
      required final String token}) = _$GithubRepositoryInImpl;
  const _GithubRepositoryIn._() : super._();

  factory _GithubRepositoryIn.fromJson(Map<String, dynamic> json) =
      _$GithubRepositoryInImpl.fromJson;

  ///
  @override
  GithubRepositoryInType get type;

  /// No Description
  @override
  String get name;

  /// No Description
  @override
  String get owner;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get ref;

  /// No Description
  @override
  double get weight;

  /// No Description
  @override
  String get token;

  /// Create a copy of GithubRepositoryIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GithubRepositoryInImplCopyWith<_$GithubRepositoryInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobIn _$JobInFromJson(Map<String, dynamic> json) {
  return _JobIn.fromJson(json);
}

/// @nodoc
mixin _$JobIn {
  /// The name of the model to fine-tune.
  FineTuneableModel get model => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'training_files')
  List<TrainingFile> get trainingFiles => throw _privateConstructorUsedError;

  /// A list containing the IDs of uploaded files that contain validation data. If you provide these files, the data is used to generate validation metrics periodically during fine-tuning. These metrics can be viewed in `checkpoints` when getting the status of a running fine-tuning job. The same data should not be present in both train and validation files.
  @JsonKey(name: 'validation_files', includeIfNull: false)
  List<String>? get validationFiles => throw _privateConstructorUsedError;

  /// The fine-tuning hyperparameter settings used in a fine-tune job.
  TrainingParametersIn get hyperparameters =>
      throw _privateConstructorUsedError;

  /// A string that will be added to your fine-tuning model name. For example, a suffix of "my-great-model" would produce a model name like `ft:open-mistral-7b:my-great-model:xxx...`
  @JsonKey(includeIfNull: false)
  String? get suffix => throw _privateConstructorUsedError;

  /// A list of integrations to enable for your fine-tuning job.
  @JsonKey(includeIfNull: false)
  List<WandbIntegration>? get integrations =>
      throw _privateConstructorUsedError;

  /// No Description
  List<GithubRepositoryIn> get repositories =>
      throw _privateConstructorUsedError;

  /// This field will be required in a future release.
  @JsonKey(name: 'auto_start', includeIfNull: false)
  bool? get autoStart => throw _privateConstructorUsedError;

  /// Serializes this JobIn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobInCopyWith<JobIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobInCopyWith<$Res> {
  factory $JobInCopyWith(JobIn value, $Res Function(JobIn) then) =
      _$JobInCopyWithImpl<$Res, JobIn>;
  @useResult
  $Res call(
      {FineTuneableModel model,
      @JsonKey(name: 'training_files') List<TrainingFile> trainingFiles,
      @JsonKey(name: 'validation_files', includeIfNull: false)
      List<String>? validationFiles,
      TrainingParametersIn hyperparameters,
      @JsonKey(includeIfNull: false) String? suffix,
      @JsonKey(includeIfNull: false) List<WandbIntegration>? integrations,
      List<GithubRepositoryIn> repositories,
      @JsonKey(name: 'auto_start', includeIfNull: false) bool? autoStart});

  $TrainingParametersInCopyWith<$Res> get hyperparameters;
}

/// @nodoc
class _$JobInCopyWithImpl<$Res, $Val extends JobIn>
    implements $JobInCopyWith<$Res> {
  _$JobInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? trainingFiles = null,
    Object? validationFiles = freezed,
    Object? hyperparameters = null,
    Object? suffix = freezed,
    Object? integrations = freezed,
    Object? repositories = null,
    Object? autoStart = freezed,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FineTuneableModel,
      trainingFiles: null == trainingFiles
          ? _value.trainingFiles
          : trainingFiles // ignore: cast_nullable_to_non_nullable
              as List<TrainingFile>,
      validationFiles: freezed == validationFiles
          ? _value.validationFiles
          : validationFiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hyperparameters: null == hyperparameters
          ? _value.hyperparameters
          : hyperparameters // ignore: cast_nullable_to_non_nullable
              as TrainingParametersIn,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      integrations: freezed == integrations
          ? _value.integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as List<WandbIntegration>?,
      repositories: null == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GithubRepositoryIn>,
      autoStart: freezed == autoStart
          ? _value.autoStart
          : autoStart // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of JobIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrainingParametersInCopyWith<$Res> get hyperparameters {
    return $TrainingParametersInCopyWith<$Res>(_value.hyperparameters, (value) {
      return _then(_value.copyWith(hyperparameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobInImplCopyWith<$Res> implements $JobInCopyWith<$Res> {
  factory _$$JobInImplCopyWith(
          _$JobInImpl value, $Res Function(_$JobInImpl) then) =
      __$$JobInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FineTuneableModel model,
      @JsonKey(name: 'training_files') List<TrainingFile> trainingFiles,
      @JsonKey(name: 'validation_files', includeIfNull: false)
      List<String>? validationFiles,
      TrainingParametersIn hyperparameters,
      @JsonKey(includeIfNull: false) String? suffix,
      @JsonKey(includeIfNull: false) List<WandbIntegration>? integrations,
      List<GithubRepositoryIn> repositories,
      @JsonKey(name: 'auto_start', includeIfNull: false) bool? autoStart});

  @override
  $TrainingParametersInCopyWith<$Res> get hyperparameters;
}

/// @nodoc
class __$$JobInImplCopyWithImpl<$Res>
    extends _$JobInCopyWithImpl<$Res, _$JobInImpl>
    implements _$$JobInImplCopyWith<$Res> {
  __$$JobInImplCopyWithImpl(
      _$JobInImpl _value, $Res Function(_$JobInImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? trainingFiles = null,
    Object? validationFiles = freezed,
    Object? hyperparameters = null,
    Object? suffix = freezed,
    Object? integrations = freezed,
    Object? repositories = null,
    Object? autoStart = freezed,
  }) {
    return _then(_$JobInImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FineTuneableModel,
      trainingFiles: null == trainingFiles
          ? _value._trainingFiles
          : trainingFiles // ignore: cast_nullable_to_non_nullable
              as List<TrainingFile>,
      validationFiles: freezed == validationFiles
          ? _value._validationFiles
          : validationFiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hyperparameters: null == hyperparameters
          ? _value.hyperparameters
          : hyperparameters // ignore: cast_nullable_to_non_nullable
              as TrainingParametersIn,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      integrations: freezed == integrations
          ? _value._integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as List<WandbIntegration>?,
      repositories: null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GithubRepositoryIn>,
      autoStart: freezed == autoStart
          ? _value.autoStart
          : autoStart // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobInImpl extends _JobIn {
  const _$JobInImpl(
      {required this.model,
      @JsonKey(name: 'training_files')
      final List<TrainingFile> trainingFiles = const [],
      @JsonKey(name: 'validation_files', includeIfNull: false)
      final List<String>? validationFiles,
      required this.hyperparameters,
      @JsonKey(includeIfNull: false) this.suffix,
      @JsonKey(includeIfNull: false) final List<WandbIntegration>? integrations,
      final List<GithubRepositoryIn> repositories = const [],
      @JsonKey(name: 'auto_start', includeIfNull: false) this.autoStart})
      : _trainingFiles = trainingFiles,
        _validationFiles = validationFiles,
        _integrations = integrations,
        _repositories = repositories,
        super._();

  factory _$JobInImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobInImplFromJson(json);

  /// The name of the model to fine-tune.
  @override
  final FineTuneableModel model;

  /// No Description
  final List<TrainingFile> _trainingFiles;

  /// No Description
  @override
  @JsonKey(name: 'training_files')
  List<TrainingFile> get trainingFiles {
    if (_trainingFiles is EqualUnmodifiableListView) return _trainingFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainingFiles);
  }

  /// A list containing the IDs of uploaded files that contain validation data. If you provide these files, the data is used to generate validation metrics periodically during fine-tuning. These metrics can be viewed in `checkpoints` when getting the status of a running fine-tuning job. The same data should not be present in both train and validation files.
  final List<String>? _validationFiles;

  /// A list containing the IDs of uploaded files that contain validation data. If you provide these files, the data is used to generate validation metrics periodically during fine-tuning. These metrics can be viewed in `checkpoints` when getting the status of a running fine-tuning job. The same data should not be present in both train and validation files.
  @override
  @JsonKey(name: 'validation_files', includeIfNull: false)
  List<String>? get validationFiles {
    final value = _validationFiles;
    if (value == null) return null;
    if (_validationFiles is EqualUnmodifiableListView) return _validationFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The fine-tuning hyperparameter settings used in a fine-tune job.
  @override
  final TrainingParametersIn hyperparameters;

  /// A string that will be added to your fine-tuning model name. For example, a suffix of "my-great-model" would produce a model name like `ft:open-mistral-7b:my-great-model:xxx...`
  @override
  @JsonKey(includeIfNull: false)
  final String? suffix;

  /// A list of integrations to enable for your fine-tuning job.
  final List<WandbIntegration>? _integrations;

  /// A list of integrations to enable for your fine-tuning job.
  @override
  @JsonKey(includeIfNull: false)
  List<WandbIntegration>? get integrations {
    final value = _integrations;
    if (value == null) return null;
    if (_integrations is EqualUnmodifiableListView) return _integrations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// No Description
  final List<GithubRepositoryIn> _repositories;

  /// No Description
  @override
  @JsonKey()
  List<GithubRepositoryIn> get repositories {
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  /// This field will be required in a future release.
  @override
  @JsonKey(name: 'auto_start', includeIfNull: false)
  final bool? autoStart;

  @override
  String toString() {
    return 'JobIn(model: $model, trainingFiles: $trainingFiles, validationFiles: $validationFiles, hyperparameters: $hyperparameters, suffix: $suffix, integrations: $integrations, repositories: $repositories, autoStart: $autoStart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobInImpl &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality()
                .equals(other._trainingFiles, _trainingFiles) &&
            const DeepCollectionEquality()
                .equals(other._validationFiles, _validationFiles) &&
            (identical(other.hyperparameters, hyperparameters) ||
                other.hyperparameters == hyperparameters) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            const DeepCollectionEquality()
                .equals(other._integrations, _integrations) &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories) &&
            (identical(other.autoStart, autoStart) ||
                other.autoStart == autoStart));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      const DeepCollectionEquality().hash(_trainingFiles),
      const DeepCollectionEquality().hash(_validationFiles),
      hyperparameters,
      suffix,
      const DeepCollectionEquality().hash(_integrations),
      const DeepCollectionEquality().hash(_repositories),
      autoStart);

  /// Create a copy of JobIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobInImplCopyWith<_$JobInImpl> get copyWith =>
      __$$JobInImplCopyWithImpl<_$JobInImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobInImplToJson(
      this,
    );
  }
}

abstract class _JobIn extends JobIn {
  const factory _JobIn(
      {required final FineTuneableModel model,
      @JsonKey(name: 'training_files') final List<TrainingFile> trainingFiles,
      @JsonKey(name: 'validation_files', includeIfNull: false)
      final List<String>? validationFiles,
      required final TrainingParametersIn hyperparameters,
      @JsonKey(includeIfNull: false) final String? suffix,
      @JsonKey(includeIfNull: false) final List<WandbIntegration>? integrations,
      final List<GithubRepositoryIn> repositories,
      @JsonKey(name: 'auto_start', includeIfNull: false)
      final bool? autoStart}) = _$JobInImpl;
  const _JobIn._() : super._();

  factory _JobIn.fromJson(Map<String, dynamic> json) = _$JobInImpl.fromJson;

  /// The name of the model to fine-tune.
  @override
  FineTuneableModel get model;

  /// No Description
  @override
  @JsonKey(name: 'training_files')
  List<TrainingFile> get trainingFiles;

  /// A list containing the IDs of uploaded files that contain validation data. If you provide these files, the data is used to generate validation metrics periodically during fine-tuning. These metrics can be viewed in `checkpoints` when getting the status of a running fine-tuning job. The same data should not be present in both train and validation files.
  @override
  @JsonKey(name: 'validation_files', includeIfNull: false)
  List<String>? get validationFiles;

  /// The fine-tuning hyperparameter settings used in a fine-tune job.
  @override
  TrainingParametersIn get hyperparameters;

  /// A string that will be added to your fine-tuning model name. For example, a suffix of "my-great-model" would produce a model name like `ft:open-mistral-7b:my-great-model:xxx...`
  @override
  @JsonKey(includeIfNull: false)
  String? get suffix;

  /// A list of integrations to enable for your fine-tuning job.
  @override
  @JsonKey(includeIfNull: false)
  List<WandbIntegration>? get integrations;

  /// No Description
  @override
  List<GithubRepositoryIn> get repositories;

  /// This field will be required in a future release.
  @override
  @JsonKey(name: 'auto_start', includeIfNull: false)
  bool? get autoStart;

  /// Create a copy of JobIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobInImplCopyWith<_$JobInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrainingFile _$TrainingFileFromJson(Map<String, dynamic> json) {
  return _TrainingFile.fromJson(json);
}

/// @nodoc
mixin _$TrainingFile {
  /// No Description
  @JsonKey(name: 'file_id')
  String get fileId => throw _privateConstructorUsedError;

  /// No Description
  double get weight => throw _privateConstructorUsedError;

  /// Serializes this TrainingFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainingFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainingFileCopyWith<TrainingFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingFileCopyWith<$Res> {
  factory $TrainingFileCopyWith(
          TrainingFile value, $Res Function(TrainingFile) then) =
      _$TrainingFileCopyWithImpl<$Res, TrainingFile>;
  @useResult
  $Res call({@JsonKey(name: 'file_id') String fileId, double weight});
}

/// @nodoc
class _$TrainingFileCopyWithImpl<$Res, $Val extends TrainingFile>
    implements $TrainingFileCopyWith<$Res> {
  _$TrainingFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainingFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingFileImplCopyWith<$Res>
    implements $TrainingFileCopyWith<$Res> {
  factory _$$TrainingFileImplCopyWith(
          _$TrainingFileImpl value, $Res Function(_$TrainingFileImpl) then) =
      __$$TrainingFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'file_id') String fileId, double weight});
}

/// @nodoc
class __$$TrainingFileImplCopyWithImpl<$Res>
    extends _$TrainingFileCopyWithImpl<$Res, _$TrainingFileImpl>
    implements _$$TrainingFileImplCopyWith<$Res> {
  __$$TrainingFileImplCopyWithImpl(
      _$TrainingFileImpl _value, $Res Function(_$TrainingFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainingFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? weight = null,
  }) {
    return _then(_$TrainingFileImpl(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingFileImpl extends _TrainingFile {
  const _$TrainingFileImpl(
      {@JsonKey(name: 'file_id') required this.fileId, this.weight = 1.0})
      : super._();

  factory _$TrainingFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingFileImplFromJson(json);

  /// No Description
  @override
  @JsonKey(name: 'file_id')
  final String fileId;

  /// No Description
  @override
  @JsonKey()
  final double weight;

  @override
  String toString() {
    return 'TrainingFile(fileId: $fileId, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingFileImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileId, weight);

  /// Create a copy of TrainingFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingFileImplCopyWith<_$TrainingFileImpl> get copyWith =>
      __$$TrainingFileImplCopyWithImpl<_$TrainingFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingFileImplToJson(
      this,
    );
  }
}

abstract class _TrainingFile extends TrainingFile {
  const factory _TrainingFile(
      {@JsonKey(name: 'file_id') required final String fileId,
      final double weight}) = _$TrainingFileImpl;
  const _TrainingFile._() : super._();

  factory _TrainingFile.fromJson(Map<String, dynamic> json) =
      _$TrainingFileImpl.fromJson;

  /// No Description
  @override
  @JsonKey(name: 'file_id')
  String get fileId;

  /// No Description
  @override
  double get weight;

  /// Create a copy of TrainingFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainingFileImplCopyWith<_$TrainingFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrainingParametersIn _$TrainingParametersInFromJson(Map<String, dynamic> json) {
  return _TrainingParametersIn.fromJson(json);
}

/// @nodoc
mixin _$TrainingParametersIn {
  /// The number of training steps to perform. A training step refers to a single update of the model weights during the fine-tuning process. This update is typically calculated using a batch of samples from the training dataset.
  @JsonKey(name: 'training_steps', includeIfNull: false)
  int? get trainingSteps => throw _privateConstructorUsedError;

  /// A parameter describing how much to adjust the pre-trained model's weights in response to the estimated error each time the weights are updated during the fine-tuning process.
  @JsonKey(name: 'learning_rate')
  double get learningRate => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  double? get epochs => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'fim_ratio', includeIfNull: false)
  double? get fimRatio => throw _privateConstructorUsedError;

  /// Serializes this TrainingParametersIn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainingParametersIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainingParametersInCopyWith<TrainingParametersIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingParametersInCopyWith<$Res> {
  factory $TrainingParametersInCopyWith(TrainingParametersIn value,
          $Res Function(TrainingParametersIn) then) =
      _$TrainingParametersInCopyWithImpl<$Res, TrainingParametersIn>;
  @useResult
  $Res call(
      {@JsonKey(name: 'training_steps', includeIfNull: false)
      int? trainingSteps,
      @JsonKey(name: 'learning_rate') double learningRate,
      @JsonKey(includeIfNull: false) double? epochs,
      @JsonKey(name: 'fim_ratio', includeIfNull: false) double? fimRatio});
}

/// @nodoc
class _$TrainingParametersInCopyWithImpl<$Res,
        $Val extends TrainingParametersIn>
    implements $TrainingParametersInCopyWith<$Res> {
  _$TrainingParametersInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainingParametersIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainingSteps = freezed,
    Object? learningRate = null,
    Object? epochs = freezed,
    Object? fimRatio = freezed,
  }) {
    return _then(_value.copyWith(
      trainingSteps: freezed == trainingSteps
          ? _value.trainingSteps
          : trainingSteps // ignore: cast_nullable_to_non_nullable
              as int?,
      learningRate: null == learningRate
          ? _value.learningRate
          : learningRate // ignore: cast_nullable_to_non_nullable
              as double,
      epochs: freezed == epochs
          ? _value.epochs
          : epochs // ignore: cast_nullable_to_non_nullable
              as double?,
      fimRatio: freezed == fimRatio
          ? _value.fimRatio
          : fimRatio // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingParametersInImplCopyWith<$Res>
    implements $TrainingParametersInCopyWith<$Res> {
  factory _$$TrainingParametersInImplCopyWith(_$TrainingParametersInImpl value,
          $Res Function(_$TrainingParametersInImpl) then) =
      __$$TrainingParametersInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'training_steps', includeIfNull: false)
      int? trainingSteps,
      @JsonKey(name: 'learning_rate') double learningRate,
      @JsonKey(includeIfNull: false) double? epochs,
      @JsonKey(name: 'fim_ratio', includeIfNull: false) double? fimRatio});
}

/// @nodoc
class __$$TrainingParametersInImplCopyWithImpl<$Res>
    extends _$TrainingParametersInCopyWithImpl<$Res, _$TrainingParametersInImpl>
    implements _$$TrainingParametersInImplCopyWith<$Res> {
  __$$TrainingParametersInImplCopyWithImpl(_$TrainingParametersInImpl _value,
      $Res Function(_$TrainingParametersInImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainingParametersIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainingSteps = freezed,
    Object? learningRate = null,
    Object? epochs = freezed,
    Object? fimRatio = freezed,
  }) {
    return _then(_$TrainingParametersInImpl(
      trainingSteps: freezed == trainingSteps
          ? _value.trainingSteps
          : trainingSteps // ignore: cast_nullable_to_non_nullable
              as int?,
      learningRate: null == learningRate
          ? _value.learningRate
          : learningRate // ignore: cast_nullable_to_non_nullable
              as double,
      epochs: freezed == epochs
          ? _value.epochs
          : epochs // ignore: cast_nullable_to_non_nullable
              as double?,
      fimRatio: freezed == fimRatio
          ? _value.fimRatio
          : fimRatio // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingParametersInImpl extends _TrainingParametersIn {
  const _$TrainingParametersInImpl(
      {@JsonKey(name: 'training_steps', includeIfNull: false)
      this.trainingSteps,
      @JsonKey(name: 'learning_rate') this.learningRate = 0.0001,
      @JsonKey(includeIfNull: false) this.epochs,
      @JsonKey(name: 'fim_ratio', includeIfNull: false) this.fimRatio = 0.9})
      : super._();

  factory _$TrainingParametersInImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingParametersInImplFromJson(json);

  /// The number of training steps to perform. A training step refers to a single update of the model weights during the fine-tuning process. This update is typically calculated using a batch of samples from the training dataset.
  @override
  @JsonKey(name: 'training_steps', includeIfNull: false)
  final int? trainingSteps;

  /// A parameter describing how much to adjust the pre-trained model's weights in response to the estimated error each time the weights are updated during the fine-tuning process.
  @override
  @JsonKey(name: 'learning_rate')
  final double learningRate;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final double? epochs;

  /// No Description
  @override
  @JsonKey(name: 'fim_ratio', includeIfNull: false)
  final double? fimRatio;

  @override
  String toString() {
    return 'TrainingParametersIn(trainingSteps: $trainingSteps, learningRate: $learningRate, epochs: $epochs, fimRatio: $fimRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingParametersInImpl &&
            (identical(other.trainingSteps, trainingSteps) ||
                other.trainingSteps == trainingSteps) &&
            (identical(other.learningRate, learningRate) ||
                other.learningRate == learningRate) &&
            (identical(other.epochs, epochs) || other.epochs == epochs) &&
            (identical(other.fimRatio, fimRatio) ||
                other.fimRatio == fimRatio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, trainingSteps, learningRate, epochs, fimRatio);

  /// Create a copy of TrainingParametersIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingParametersInImplCopyWith<_$TrainingParametersInImpl>
      get copyWith =>
          __$$TrainingParametersInImplCopyWithImpl<_$TrainingParametersInImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingParametersInImplToJson(
      this,
    );
  }
}

abstract class _TrainingParametersIn extends TrainingParametersIn {
  const factory _TrainingParametersIn(
      {@JsonKey(name: 'training_steps', includeIfNull: false)
      final int? trainingSteps,
      @JsonKey(name: 'learning_rate') final double learningRate,
      @JsonKey(includeIfNull: false) final double? epochs,
      @JsonKey(name: 'fim_ratio', includeIfNull: false)
      final double? fimRatio}) = _$TrainingParametersInImpl;
  const _TrainingParametersIn._() : super._();

  factory _TrainingParametersIn.fromJson(Map<String, dynamic> json) =
      _$TrainingParametersInImpl.fromJson;

  /// The number of training steps to perform. A training step refers to a single update of the model weights during the fine-tuning process. This update is typically calculated using a batch of samples from the training dataset.
  @override
  @JsonKey(name: 'training_steps', includeIfNull: false)
  int? get trainingSteps;

  /// A parameter describing how much to adjust the pre-trained model's weights in response to the estimated error each time the weights are updated during the fine-tuning process.
  @override
  @JsonKey(name: 'learning_rate')
  double get learningRate;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  double? get epochs;

  /// No Description
  @override
  @JsonKey(name: 'fim_ratio', includeIfNull: false)
  double? get fimRatio;

  /// Create a copy of TrainingParametersIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainingParametersInImplCopyWith<_$TrainingParametersInImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WandbIntegration _$WandbIntegrationFromJson(Map<String, dynamic> json) {
  return _WandbIntegration.fromJson(json);
}

/// @nodoc
mixin _$WandbIntegration {
  ///
  WandbIntegrationType get type => throw _privateConstructorUsedError;

  /// The name of the project that the new run will be created under.
  String get project => throw _privateConstructorUsedError;

  /// A display name to set for the run. If not set, will use the job ID as the name.
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;

  /// The WandB API key to use for authentication.
  @JsonKey(name: 'api_key')
  String get apiKey => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'run_name', includeIfNull: false)
  String? get runName => throw _privateConstructorUsedError;

  /// Serializes this WandbIntegration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WandbIntegration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WandbIntegrationCopyWith<WandbIntegration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WandbIntegrationCopyWith<$Res> {
  factory $WandbIntegrationCopyWith(
          WandbIntegration value, $Res Function(WandbIntegration) then) =
      _$WandbIntegrationCopyWithImpl<$Res, WandbIntegration>;
  @useResult
  $Res call(
      {WandbIntegrationType type,
      String project,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(name: 'api_key') String apiKey,
      @JsonKey(name: 'run_name', includeIfNull: false) String? runName});
}

/// @nodoc
class _$WandbIntegrationCopyWithImpl<$Res, $Val extends WandbIntegration>
    implements $WandbIntegrationCopyWith<$Res> {
  _$WandbIntegrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WandbIntegration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? project = null,
    Object? name = freezed,
    Object? apiKey = null,
    Object? runName = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WandbIntegrationType,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      runName: freezed == runName
          ? _value.runName
          : runName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WandbIntegrationImplCopyWith<$Res>
    implements $WandbIntegrationCopyWith<$Res> {
  factory _$$WandbIntegrationImplCopyWith(_$WandbIntegrationImpl value,
          $Res Function(_$WandbIntegrationImpl) then) =
      __$$WandbIntegrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WandbIntegrationType type,
      String project,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(name: 'api_key') String apiKey,
      @JsonKey(name: 'run_name', includeIfNull: false) String? runName});
}

/// @nodoc
class __$$WandbIntegrationImplCopyWithImpl<$Res>
    extends _$WandbIntegrationCopyWithImpl<$Res, _$WandbIntegrationImpl>
    implements _$$WandbIntegrationImplCopyWith<$Res> {
  __$$WandbIntegrationImplCopyWithImpl(_$WandbIntegrationImpl _value,
      $Res Function(_$WandbIntegrationImpl) _then)
      : super(_value, _then);

  /// Create a copy of WandbIntegration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? project = null,
    Object? name = freezed,
    Object? apiKey = null,
    Object? runName = freezed,
  }) {
    return _then(_$WandbIntegrationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WandbIntegrationType,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      runName: freezed == runName
          ? _value.runName
          : runName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WandbIntegrationImpl extends _WandbIntegration {
  const _$WandbIntegrationImpl(
      {this.type = WandbIntegrationType.wandb,
      required this.project,
      @JsonKey(includeIfNull: false) this.name,
      @JsonKey(name: 'api_key') required this.apiKey,
      @JsonKey(name: 'run_name', includeIfNull: false) this.runName})
      : super._();

  factory _$WandbIntegrationImpl.fromJson(Map<String, dynamic> json) =>
      _$$WandbIntegrationImplFromJson(json);

  ///
  @override
  @JsonKey()
  final WandbIntegrationType type;

  /// The name of the project that the new run will be created under.
  @override
  final String project;

  /// A display name to set for the run. If not set, will use the job ID as the name.
  @override
  @JsonKey(includeIfNull: false)
  final String? name;

  /// The WandB API key to use for authentication.
  @override
  @JsonKey(name: 'api_key')
  final String apiKey;

  /// No Description
  @override
  @JsonKey(name: 'run_name', includeIfNull: false)
  final String? runName;

  @override
  String toString() {
    return 'WandbIntegration(type: $type, project: $project, name: $name, apiKey: $apiKey, runName: $runName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WandbIntegrationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.runName, runName) || other.runName == runName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, project, name, apiKey, runName);

  /// Create a copy of WandbIntegration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WandbIntegrationImplCopyWith<_$WandbIntegrationImpl> get copyWith =>
      __$$WandbIntegrationImplCopyWithImpl<_$WandbIntegrationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WandbIntegrationImplToJson(
      this,
    );
  }
}

abstract class _WandbIntegration extends WandbIntegration {
  const factory _WandbIntegration(
      {final WandbIntegrationType type,
      required final String project,
      @JsonKey(includeIfNull: false) final String? name,
      @JsonKey(name: 'api_key') required final String apiKey,
      @JsonKey(name: 'run_name', includeIfNull: false)
      final String? runName}) = _$WandbIntegrationImpl;
  const _WandbIntegration._() : super._();

  factory _WandbIntegration.fromJson(Map<String, dynamic> json) =
      _$WandbIntegrationImpl.fromJson;

  ///
  @override
  WandbIntegrationType get type;

  /// The name of the project that the new run will be created under.
  @override
  String get project;

  /// A display name to set for the run. If not set, will use the job ID as the name.
  @override
  @JsonKey(includeIfNull: false)
  String? get name;

  /// The WandB API key to use for authentication.
  @override
  @JsonKey(name: 'api_key')
  String get apiKey;

  /// No Description
  @override
  @JsonKey(name: 'run_name', includeIfNull: false)
  String? get runName;

  /// Create a copy of WandbIntegration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WandbIntegrationImplCopyWith<_$WandbIntegrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckpointOut _$CheckpointOutFromJson(Map<String, dynamic> json) {
  return _CheckpointOut.fromJson(json);
}

/// @nodoc
mixin _$CheckpointOut {
  /// Metrics at the step number during the fine-tuning job. Use these metrics to assess if the training is going smoothly (loss should decrease, token accuracy should increase).
  MetricOut get metrics => throw _privateConstructorUsedError;

  /// The step number that the checkpoint was created at.
  @JsonKey(name: 'step_number')
  int get stepNumber => throw _privateConstructorUsedError;

  /// The UNIX timestamp (in seconds) for when the checkpoint was created.
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CheckpointOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckpointOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckpointOutCopyWith<CheckpointOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckpointOutCopyWith<$Res> {
  factory $CheckpointOutCopyWith(
          CheckpointOut value, $Res Function(CheckpointOut) then) =
      _$CheckpointOutCopyWithImpl<$Res, CheckpointOut>;
  @useResult
  $Res call(
      {MetricOut metrics,
      @JsonKey(name: 'step_number') int stepNumber,
      @JsonKey(name: 'created_at') int createdAt});

  $MetricOutCopyWith<$Res> get metrics;
}

/// @nodoc
class _$CheckpointOutCopyWithImpl<$Res, $Val extends CheckpointOut>
    implements $CheckpointOutCopyWith<$Res> {
  _$CheckpointOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckpointOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metrics = null,
    Object? stepNumber = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as MetricOut,
      stepNumber: null == stepNumber
          ? _value.stepNumber
          : stepNumber // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of CheckpointOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetricOutCopyWith<$Res> get metrics {
    return $MetricOutCopyWith<$Res>(_value.metrics, (value) {
      return _then(_value.copyWith(metrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckpointOutImplCopyWith<$Res>
    implements $CheckpointOutCopyWith<$Res> {
  factory _$$CheckpointOutImplCopyWith(
          _$CheckpointOutImpl value, $Res Function(_$CheckpointOutImpl) then) =
      __$$CheckpointOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MetricOut metrics,
      @JsonKey(name: 'step_number') int stepNumber,
      @JsonKey(name: 'created_at') int createdAt});

  @override
  $MetricOutCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$CheckpointOutImplCopyWithImpl<$Res>
    extends _$CheckpointOutCopyWithImpl<$Res, _$CheckpointOutImpl>
    implements _$$CheckpointOutImplCopyWith<$Res> {
  __$$CheckpointOutImplCopyWithImpl(
      _$CheckpointOutImpl _value, $Res Function(_$CheckpointOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckpointOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metrics = null,
    Object? stepNumber = null,
    Object? createdAt = null,
  }) {
    return _then(_$CheckpointOutImpl(
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as MetricOut,
      stepNumber: null == stepNumber
          ? _value.stepNumber
          : stepNumber // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckpointOutImpl extends _CheckpointOut {
  const _$CheckpointOutImpl(
      {required this.metrics,
      @JsonKey(name: 'step_number') required this.stepNumber,
      @JsonKey(name: 'created_at') required this.createdAt})
      : super._();

  factory _$CheckpointOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckpointOutImplFromJson(json);

  /// Metrics at the step number during the fine-tuning job. Use these metrics to assess if the training is going smoothly (loss should decrease, token accuracy should increase).
  @override
  final MetricOut metrics;

  /// The step number that the checkpoint was created at.
  @override
  @JsonKey(name: 'step_number')
  final int stepNumber;

  /// The UNIX timestamp (in seconds) for when the checkpoint was created.
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;

  @override
  String toString() {
    return 'CheckpointOut(metrics: $metrics, stepNumber: $stepNumber, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckpointOutImpl &&
            (identical(other.metrics, metrics) || other.metrics == metrics) &&
            (identical(other.stepNumber, stepNumber) ||
                other.stepNumber == stepNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, metrics, stepNumber, createdAt);

  /// Create a copy of CheckpointOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckpointOutImplCopyWith<_$CheckpointOutImpl> get copyWith =>
      __$$CheckpointOutImplCopyWithImpl<_$CheckpointOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckpointOutImplToJson(
      this,
    );
  }
}

abstract class _CheckpointOut extends CheckpointOut {
  const factory _CheckpointOut(
          {required final MetricOut metrics,
          @JsonKey(name: 'step_number') required final int stepNumber,
          @JsonKey(name: 'created_at') required final int createdAt}) =
      _$CheckpointOutImpl;
  const _CheckpointOut._() : super._();

  factory _CheckpointOut.fromJson(Map<String, dynamic> json) =
      _$CheckpointOutImpl.fromJson;

  /// Metrics at the step number during the fine-tuning job. Use these metrics to assess if the training is going smoothly (loss should decrease, token accuracy should increase).
  @override
  MetricOut get metrics;

  /// The step number that the checkpoint was created at.
  @override
  @JsonKey(name: 'step_number')
  int get stepNumber;

  /// The UNIX timestamp (in seconds) for when the checkpoint was created.
  @override
  @JsonKey(name: 'created_at')
  int get createdAt;

  /// Create a copy of CheckpointOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckpointOutImplCopyWith<_$CheckpointOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailedJobOut _$DetailedJobOutFromJson(Map<String, dynamic> json) {
  return _DetailedJobOut.fromJson(json);
}

/// @nodoc
mixin _$DetailedJobOut {
  /// No Description
  String get id => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'auto_start')
  bool get autoStart => throw _privateConstructorUsedError;

  /// No Description
  TrainingParameters get hyperparameters => throw _privateConstructorUsedError;

  /// The name of the model to fine-tune.
  FineTuneableModel get model => throw _privateConstructorUsedError;

  ///
  DetailedJobOutStatus get status => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'job_type')
  String get jobType => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'modified_at')
  int get modifiedAt => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'training_files')
  List<String> get trainingFiles => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'validation_files', includeIfNull: false)
  List<String>? get validationFiles => throw _privateConstructorUsedError;

  ///
  DetailedJobOutObject get object => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
  String? get fineTunedModel => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get suffix => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  List<WandbIntegrationOut>? get integrations =>
      throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'trained_tokens', includeIfNull: false)
  int? get trainedTokens => throw _privateConstructorUsedError;

  /// No Description
  List<GithubRepositoryOut> get repositories =>
      throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  JobMetadataOut? get metadata => throw _privateConstructorUsedError;

  /// Event items are created every time the status of a fine-tuning job changes. The timestamped list of all events is accessible here.
  List<EventOut> get events => throw _privateConstructorUsedError;

  /// No Description
  List<CheckpointOut> get checkpoints => throw _privateConstructorUsedError;

  /// Serializes this DetailedJobOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailedJobOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailedJobOutCopyWith<DetailedJobOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedJobOutCopyWith<$Res> {
  factory $DetailedJobOutCopyWith(
          DetailedJobOut value, $Res Function(DetailedJobOut) then) =
      _$DetailedJobOutCopyWithImpl<$Res, DetailedJobOut>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'auto_start') bool autoStart,
      TrainingParameters hyperparameters,
      FineTuneableModel model,
      DetailedJobOutStatus status,
      @JsonKey(name: 'job_type') String jobType,
      @JsonKey(name: 'created_at') int createdAt,
      @JsonKey(name: 'modified_at') int modifiedAt,
      @JsonKey(name: 'training_files') List<String> trainingFiles,
      @JsonKey(name: 'validation_files', includeIfNull: false)
      List<String>? validationFiles,
      DetailedJobOutObject object,
      @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
      String? fineTunedModel,
      @JsonKey(includeIfNull: false) String? suffix,
      @JsonKey(includeIfNull: false) List<WandbIntegrationOut>? integrations,
      @JsonKey(name: 'trained_tokens', includeIfNull: false) int? trainedTokens,
      List<GithubRepositoryOut> repositories,
      @JsonKey(includeIfNull: false) JobMetadataOut? metadata,
      List<EventOut> events,
      List<CheckpointOut> checkpoints});

  $TrainingParametersCopyWith<$Res> get hyperparameters;
  $JobMetadataOutCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$DetailedJobOutCopyWithImpl<$Res, $Val extends DetailedJobOut>
    implements $DetailedJobOutCopyWith<$Res> {
  _$DetailedJobOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailedJobOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? autoStart = null,
    Object? hyperparameters = null,
    Object? model = null,
    Object? status = null,
    Object? jobType = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? trainingFiles = null,
    Object? validationFiles = freezed,
    Object? object = null,
    Object? fineTunedModel = freezed,
    Object? suffix = freezed,
    Object? integrations = freezed,
    Object? trainedTokens = freezed,
    Object? repositories = null,
    Object? metadata = freezed,
    Object? events = null,
    Object? checkpoints = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      autoStart: null == autoStart
          ? _value.autoStart
          : autoStart // ignore: cast_nullable_to_non_nullable
              as bool,
      hyperparameters: null == hyperparameters
          ? _value.hyperparameters
          : hyperparameters // ignore: cast_nullable_to_non_nullable
              as TrainingParameters,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FineTuneableModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailedJobOutStatus,
      jobType: null == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as int,
      trainingFiles: null == trainingFiles
          ? _value.trainingFiles
          : trainingFiles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      validationFiles: freezed == validationFiles
          ? _value.validationFiles
          : validationFiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as DetailedJobOutObject,
      fineTunedModel: freezed == fineTunedModel
          ? _value.fineTunedModel
          : fineTunedModel // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      integrations: freezed == integrations
          ? _value.integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as List<WandbIntegrationOut>?,
      trainedTokens: freezed == trainedTokens
          ? _value.trainedTokens
          : trainedTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      repositories: null == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GithubRepositoryOut>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as JobMetadataOut?,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventOut>,
      checkpoints: null == checkpoints
          ? _value.checkpoints
          : checkpoints // ignore: cast_nullable_to_non_nullable
              as List<CheckpointOut>,
    ) as $Val);
  }

  /// Create a copy of DetailedJobOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrainingParametersCopyWith<$Res> get hyperparameters {
    return $TrainingParametersCopyWith<$Res>(_value.hyperparameters, (value) {
      return _then(_value.copyWith(hyperparameters: value) as $Val);
    });
  }

  /// Create a copy of DetailedJobOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobMetadataOutCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $JobMetadataOutCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailedJobOutImplCopyWith<$Res>
    implements $DetailedJobOutCopyWith<$Res> {
  factory _$$DetailedJobOutImplCopyWith(_$DetailedJobOutImpl value,
          $Res Function(_$DetailedJobOutImpl) then) =
      __$$DetailedJobOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'auto_start') bool autoStart,
      TrainingParameters hyperparameters,
      FineTuneableModel model,
      DetailedJobOutStatus status,
      @JsonKey(name: 'job_type') String jobType,
      @JsonKey(name: 'created_at') int createdAt,
      @JsonKey(name: 'modified_at') int modifiedAt,
      @JsonKey(name: 'training_files') List<String> trainingFiles,
      @JsonKey(name: 'validation_files', includeIfNull: false)
      List<String>? validationFiles,
      DetailedJobOutObject object,
      @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
      String? fineTunedModel,
      @JsonKey(includeIfNull: false) String? suffix,
      @JsonKey(includeIfNull: false) List<WandbIntegrationOut>? integrations,
      @JsonKey(name: 'trained_tokens', includeIfNull: false) int? trainedTokens,
      List<GithubRepositoryOut> repositories,
      @JsonKey(includeIfNull: false) JobMetadataOut? metadata,
      List<EventOut> events,
      List<CheckpointOut> checkpoints});

  @override
  $TrainingParametersCopyWith<$Res> get hyperparameters;
  @override
  $JobMetadataOutCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$DetailedJobOutImplCopyWithImpl<$Res>
    extends _$DetailedJobOutCopyWithImpl<$Res, _$DetailedJobOutImpl>
    implements _$$DetailedJobOutImplCopyWith<$Res> {
  __$$DetailedJobOutImplCopyWithImpl(
      _$DetailedJobOutImpl _value, $Res Function(_$DetailedJobOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailedJobOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? autoStart = null,
    Object? hyperparameters = null,
    Object? model = null,
    Object? status = null,
    Object? jobType = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? trainingFiles = null,
    Object? validationFiles = freezed,
    Object? object = null,
    Object? fineTunedModel = freezed,
    Object? suffix = freezed,
    Object? integrations = freezed,
    Object? trainedTokens = freezed,
    Object? repositories = null,
    Object? metadata = freezed,
    Object? events = null,
    Object? checkpoints = null,
  }) {
    return _then(_$DetailedJobOutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      autoStart: null == autoStart
          ? _value.autoStart
          : autoStart // ignore: cast_nullable_to_non_nullable
              as bool,
      hyperparameters: null == hyperparameters
          ? _value.hyperparameters
          : hyperparameters // ignore: cast_nullable_to_non_nullable
              as TrainingParameters,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FineTuneableModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailedJobOutStatus,
      jobType: null == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as int,
      trainingFiles: null == trainingFiles
          ? _value._trainingFiles
          : trainingFiles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      validationFiles: freezed == validationFiles
          ? _value._validationFiles
          : validationFiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as DetailedJobOutObject,
      fineTunedModel: freezed == fineTunedModel
          ? _value.fineTunedModel
          : fineTunedModel // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      integrations: freezed == integrations
          ? _value._integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as List<WandbIntegrationOut>?,
      trainedTokens: freezed == trainedTokens
          ? _value.trainedTokens
          : trainedTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      repositories: null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GithubRepositoryOut>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as JobMetadataOut?,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventOut>,
      checkpoints: null == checkpoints
          ? _value._checkpoints
          : checkpoints // ignore: cast_nullable_to_non_nullable
              as List<CheckpointOut>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedJobOutImpl extends _DetailedJobOut {
  const _$DetailedJobOutImpl(
      {required this.id,
      @JsonKey(name: 'auto_start') required this.autoStart,
      required this.hyperparameters,
      required this.model,
      required this.status,
      @JsonKey(name: 'job_type') required this.jobType,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'modified_at') required this.modifiedAt,
      @JsonKey(name: 'training_files')
      required final List<String> trainingFiles,
      @JsonKey(name: 'validation_files', includeIfNull: false)
      final List<String>? validationFiles = const [],
      this.object = DetailedJobOutObject.job,
      @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
      this.fineTunedModel,
      @JsonKey(includeIfNull: false) this.suffix,
      @JsonKey(includeIfNull: false)
      final List<WandbIntegrationOut>? integrations,
      @JsonKey(name: 'trained_tokens', includeIfNull: false) this.trainedTokens,
      final List<GithubRepositoryOut> repositories = const [],
      @JsonKey(includeIfNull: false) this.metadata,
      final List<EventOut> events = const [],
      final List<CheckpointOut> checkpoints = const []})
      : _trainingFiles = trainingFiles,
        _validationFiles = validationFiles,
        _integrations = integrations,
        _repositories = repositories,
        _events = events,
        _checkpoints = checkpoints,
        super._();

  factory _$DetailedJobOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedJobOutImplFromJson(json);

  /// No Description
  @override
  final String id;

  /// No Description
  @override
  @JsonKey(name: 'auto_start')
  final bool autoStart;

  /// No Description
  @override
  final TrainingParameters hyperparameters;

  /// The name of the model to fine-tune.
  @override
  final FineTuneableModel model;

  ///
  @override
  final DetailedJobOutStatus status;

  /// No Description
  @override
  @JsonKey(name: 'job_type')
  final String jobType;

  /// No Description
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;

  /// No Description
  @override
  @JsonKey(name: 'modified_at')
  final int modifiedAt;

  /// No Description
  final List<String> _trainingFiles;

  /// No Description
  @override
  @JsonKey(name: 'training_files')
  List<String> get trainingFiles {
    if (_trainingFiles is EqualUnmodifiableListView) return _trainingFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainingFiles);
  }

  /// No Description
  final List<String>? _validationFiles;

  /// No Description
  @override
  @JsonKey(name: 'validation_files', includeIfNull: false)
  List<String>? get validationFiles {
    final value = _validationFiles;
    if (value == null) return null;
    if (_validationFiles is EqualUnmodifiableListView) return _validationFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  ///
  @override
  @JsonKey()
  final DetailedJobOutObject object;

  /// No Description
  @override
  @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
  final String? fineTunedModel;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? suffix;

  /// No Description
  final List<WandbIntegrationOut>? _integrations;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<WandbIntegrationOut>? get integrations {
    final value = _integrations;
    if (value == null) return null;
    if (_integrations is EqualUnmodifiableListView) return _integrations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// No Description
  @override
  @JsonKey(name: 'trained_tokens', includeIfNull: false)
  final int? trainedTokens;

  /// No Description
  final List<GithubRepositoryOut> _repositories;

  /// No Description
  @override
  @JsonKey()
  List<GithubRepositoryOut> get repositories {
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final JobMetadataOut? metadata;

  /// Event items are created every time the status of a fine-tuning job changes. The timestamped list of all events is accessible here.
  final List<EventOut> _events;

  /// Event items are created every time the status of a fine-tuning job changes. The timestamped list of all events is accessible here.
  @override
  @JsonKey()
  List<EventOut> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  /// No Description
  final List<CheckpointOut> _checkpoints;

  /// No Description
  @override
  @JsonKey()
  List<CheckpointOut> get checkpoints {
    if (_checkpoints is EqualUnmodifiableListView) return _checkpoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkpoints);
  }

  @override
  String toString() {
    return 'DetailedJobOut(id: $id, autoStart: $autoStart, hyperparameters: $hyperparameters, model: $model, status: $status, jobType: $jobType, createdAt: $createdAt, modifiedAt: $modifiedAt, trainingFiles: $trainingFiles, validationFiles: $validationFiles, object: $object, fineTunedModel: $fineTunedModel, suffix: $suffix, integrations: $integrations, trainedTokens: $trainedTokens, repositories: $repositories, metadata: $metadata, events: $events, checkpoints: $checkpoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedJobOutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.autoStart, autoStart) ||
                other.autoStart == autoStart) &&
            (identical(other.hyperparameters, hyperparameters) ||
                other.hyperparameters == hyperparameters) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.jobType, jobType) || other.jobType == jobType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt) &&
            const DeepCollectionEquality()
                .equals(other._trainingFiles, _trainingFiles) &&
            const DeepCollectionEquality()
                .equals(other._validationFiles, _validationFiles) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.fineTunedModel, fineTunedModel) ||
                other.fineTunedModel == fineTunedModel) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            const DeepCollectionEquality()
                .equals(other._integrations, _integrations) &&
            (identical(other.trainedTokens, trainedTokens) ||
                other.trainedTokens == trainedTokens) &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality()
                .equals(other._checkpoints, _checkpoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        autoStart,
        hyperparameters,
        model,
        status,
        jobType,
        createdAt,
        modifiedAt,
        const DeepCollectionEquality().hash(_trainingFiles),
        const DeepCollectionEquality().hash(_validationFiles),
        object,
        fineTunedModel,
        suffix,
        const DeepCollectionEquality().hash(_integrations),
        trainedTokens,
        const DeepCollectionEquality().hash(_repositories),
        metadata,
        const DeepCollectionEquality().hash(_events),
        const DeepCollectionEquality().hash(_checkpoints)
      ]);

  /// Create a copy of DetailedJobOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedJobOutImplCopyWith<_$DetailedJobOutImpl> get copyWith =>
      __$$DetailedJobOutImplCopyWithImpl<_$DetailedJobOutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedJobOutImplToJson(
      this,
    );
  }
}

abstract class _DetailedJobOut extends DetailedJobOut {
  const factory _DetailedJobOut(
      {required final String id,
      @JsonKey(name: 'auto_start') required final bool autoStart,
      required final TrainingParameters hyperparameters,
      required final FineTuneableModel model,
      required final DetailedJobOutStatus status,
      @JsonKey(name: 'job_type') required final String jobType,
      @JsonKey(name: 'created_at') required final int createdAt,
      @JsonKey(name: 'modified_at') required final int modifiedAt,
      @JsonKey(name: 'training_files')
      required final List<String> trainingFiles,
      @JsonKey(name: 'validation_files', includeIfNull: false)
      final List<String>? validationFiles,
      final DetailedJobOutObject object,
      @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
      final String? fineTunedModel,
      @JsonKey(includeIfNull: false) final String? suffix,
      @JsonKey(includeIfNull: false)
      final List<WandbIntegrationOut>? integrations,
      @JsonKey(name: 'trained_tokens', includeIfNull: false)
      final int? trainedTokens,
      final List<GithubRepositoryOut> repositories,
      @JsonKey(includeIfNull: false) final JobMetadataOut? metadata,
      final List<EventOut> events,
      final List<CheckpointOut> checkpoints}) = _$DetailedJobOutImpl;
  const _DetailedJobOut._() : super._();

  factory _DetailedJobOut.fromJson(Map<String, dynamic> json) =
      _$DetailedJobOutImpl.fromJson;

  /// No Description
  @override
  String get id;

  /// No Description
  @override
  @JsonKey(name: 'auto_start')
  bool get autoStart;

  /// No Description
  @override
  TrainingParameters get hyperparameters;

  /// The name of the model to fine-tune.
  @override
  FineTuneableModel get model;

  ///
  @override
  DetailedJobOutStatus get status;

  /// No Description
  @override
  @JsonKey(name: 'job_type')
  String get jobType;

  /// No Description
  @override
  @JsonKey(name: 'created_at')
  int get createdAt;

  /// No Description
  @override
  @JsonKey(name: 'modified_at')
  int get modifiedAt;

  /// No Description
  @override
  @JsonKey(name: 'training_files')
  List<String> get trainingFiles;

  /// No Description
  @override
  @JsonKey(name: 'validation_files', includeIfNull: false)
  List<String>? get validationFiles;

  ///
  @override
  DetailedJobOutObject get object;

  /// No Description
  @override
  @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
  String? get fineTunedModel;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get suffix;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<WandbIntegrationOut>? get integrations;

  /// No Description
  @override
  @JsonKey(name: 'trained_tokens', includeIfNull: false)
  int? get trainedTokens;

  /// No Description
  @override
  List<GithubRepositoryOut> get repositories;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  JobMetadataOut? get metadata;

  /// Event items are created every time the status of a fine-tuning job changes. The timestamped list of all events is accessible here.
  @override
  List<EventOut> get events;

  /// No Description
  @override
  List<CheckpointOut> get checkpoints;

  /// Create a copy of DetailedJobOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailedJobOutImplCopyWith<_$DetailedJobOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventOut _$EventOutFromJson(Map<String, dynamic> json) {
  return _EventOut.fromJson(json);
}

/// @nodoc
mixin _$EventOut {
  /// The name of the event.
  String get name => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  /// The UNIX timestamp (in seconds) of the event.
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this EventOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventOutCopyWith<EventOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventOutCopyWith<$Res> {
  factory $EventOutCopyWith(EventOut value, $Res Function(EventOut) then) =
      _$EventOutCopyWithImpl<$Res, EventOut>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(includeIfNull: false) Map<String, dynamic>? data,
      @JsonKey(name: 'created_at') int createdAt});
}

/// @nodoc
class _$EventOutCopyWithImpl<$Res, $Val extends EventOut>
    implements $EventOutCopyWith<$Res> {
  _$EventOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventOutImplCopyWith<$Res>
    implements $EventOutCopyWith<$Res> {
  factory _$$EventOutImplCopyWith(
          _$EventOutImpl value, $Res Function(_$EventOutImpl) then) =
      __$$EventOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(includeIfNull: false) Map<String, dynamic>? data,
      @JsonKey(name: 'created_at') int createdAt});
}

/// @nodoc
class __$$EventOutImplCopyWithImpl<$Res>
    extends _$EventOutCopyWithImpl<$Res, _$EventOutImpl>
    implements _$$EventOutImplCopyWith<$Res> {
  __$$EventOutImplCopyWithImpl(
      _$EventOutImpl _value, $Res Function(_$EventOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$EventOutImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventOutImpl extends _EventOut {
  const _$EventOutImpl(
      {required this.name,
      @JsonKey(includeIfNull: false) final Map<String, dynamic>? data,
      @JsonKey(name: 'created_at') required this.createdAt})
      : _data = data,
        super._();

  factory _$EventOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventOutImplFromJson(json);

  /// The name of the event.
  @override
  final String name;

  /// No Description
  final Map<String, dynamic>? _data;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// The UNIX timestamp (in seconds) of the event.
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;

  @override
  String toString() {
    return 'EventOut(name: $name, data: $data, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventOutImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_data), createdAt);

  /// Create a copy of EventOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventOutImplCopyWith<_$EventOutImpl> get copyWith =>
      __$$EventOutImplCopyWithImpl<_$EventOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventOutImplToJson(
      this,
    );
  }
}

abstract class _EventOut extends EventOut {
  const factory _EventOut(
          {required final String name,
          @JsonKey(includeIfNull: false) final Map<String, dynamic>? data,
          @JsonKey(name: 'created_at') required final int createdAt}) =
      _$EventOutImpl;
  const _EventOut._() : super._();

  factory _EventOut.fromJson(Map<String, dynamic> json) =
      _$EventOutImpl.fromJson;

  /// The name of the event.
  @override
  String get name;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get data;

  /// The UNIX timestamp (in seconds) of the event.
  @override
  @JsonKey(name: 'created_at')
  int get createdAt;

  /// Create a copy of EventOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventOutImplCopyWith<_$EventOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetricOut _$MetricOutFromJson(Map<String, dynamic> json) {
  return _MetricOut.fromJson(json);
}

/// @nodoc
mixin _$MetricOut {
  /// No Description
  @JsonKey(name: 'train_loss', includeIfNull: false)
  double? get trainLoss => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'valid_loss', includeIfNull: false)
  double? get validLoss => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'valid_mean_token_accuracy', includeIfNull: false)
  double? get validMeanTokenAccuracy => throw _privateConstructorUsedError;

  /// Serializes this MetricOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetricOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetricOutCopyWith<MetricOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricOutCopyWith<$Res> {
  factory $MetricOutCopyWith(MetricOut value, $Res Function(MetricOut) then) =
      _$MetricOutCopyWithImpl<$Res, MetricOut>;
  @useResult
  $Res call(
      {@JsonKey(name: 'train_loss', includeIfNull: false) double? trainLoss,
      @JsonKey(name: 'valid_loss', includeIfNull: false) double? validLoss,
      @JsonKey(name: 'valid_mean_token_accuracy', includeIfNull: false)
      double? validMeanTokenAccuracy});
}

/// @nodoc
class _$MetricOutCopyWithImpl<$Res, $Val extends MetricOut>
    implements $MetricOutCopyWith<$Res> {
  _$MetricOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetricOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainLoss = freezed,
    Object? validLoss = freezed,
    Object? validMeanTokenAccuracy = freezed,
  }) {
    return _then(_value.copyWith(
      trainLoss: freezed == trainLoss
          ? _value.trainLoss
          : trainLoss // ignore: cast_nullable_to_non_nullable
              as double?,
      validLoss: freezed == validLoss
          ? _value.validLoss
          : validLoss // ignore: cast_nullable_to_non_nullable
              as double?,
      validMeanTokenAccuracy: freezed == validMeanTokenAccuracy
          ? _value.validMeanTokenAccuracy
          : validMeanTokenAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetricOutImplCopyWith<$Res>
    implements $MetricOutCopyWith<$Res> {
  factory _$$MetricOutImplCopyWith(
          _$MetricOutImpl value, $Res Function(_$MetricOutImpl) then) =
      __$$MetricOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'train_loss', includeIfNull: false) double? trainLoss,
      @JsonKey(name: 'valid_loss', includeIfNull: false) double? validLoss,
      @JsonKey(name: 'valid_mean_token_accuracy', includeIfNull: false)
      double? validMeanTokenAccuracy});
}

/// @nodoc
class __$$MetricOutImplCopyWithImpl<$Res>
    extends _$MetricOutCopyWithImpl<$Res, _$MetricOutImpl>
    implements _$$MetricOutImplCopyWith<$Res> {
  __$$MetricOutImplCopyWithImpl(
      _$MetricOutImpl _value, $Res Function(_$MetricOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetricOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainLoss = freezed,
    Object? validLoss = freezed,
    Object? validMeanTokenAccuracy = freezed,
  }) {
    return _then(_$MetricOutImpl(
      trainLoss: freezed == trainLoss
          ? _value.trainLoss
          : trainLoss // ignore: cast_nullable_to_non_nullable
              as double?,
      validLoss: freezed == validLoss
          ? _value.validLoss
          : validLoss // ignore: cast_nullable_to_non_nullable
              as double?,
      validMeanTokenAccuracy: freezed == validMeanTokenAccuracy
          ? _value.validMeanTokenAccuracy
          : validMeanTokenAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetricOutImpl extends _MetricOut {
  const _$MetricOutImpl(
      {@JsonKey(name: 'train_loss', includeIfNull: false) this.trainLoss,
      @JsonKey(name: 'valid_loss', includeIfNull: false) this.validLoss,
      @JsonKey(name: 'valid_mean_token_accuracy', includeIfNull: false)
      this.validMeanTokenAccuracy})
      : super._();

  factory _$MetricOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetricOutImplFromJson(json);

  /// No Description
  @override
  @JsonKey(name: 'train_loss', includeIfNull: false)
  final double? trainLoss;

  /// No Description
  @override
  @JsonKey(name: 'valid_loss', includeIfNull: false)
  final double? validLoss;

  /// No Description
  @override
  @JsonKey(name: 'valid_mean_token_accuracy', includeIfNull: false)
  final double? validMeanTokenAccuracy;

  @override
  String toString() {
    return 'MetricOut(trainLoss: $trainLoss, validLoss: $validLoss, validMeanTokenAccuracy: $validMeanTokenAccuracy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetricOutImpl &&
            (identical(other.trainLoss, trainLoss) ||
                other.trainLoss == trainLoss) &&
            (identical(other.validLoss, validLoss) ||
                other.validLoss == validLoss) &&
            (identical(other.validMeanTokenAccuracy, validMeanTokenAccuracy) ||
                other.validMeanTokenAccuracy == validMeanTokenAccuracy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, trainLoss, validLoss, validMeanTokenAccuracy);

  /// Create a copy of MetricOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetricOutImplCopyWith<_$MetricOutImpl> get copyWith =>
      __$$MetricOutImplCopyWithImpl<_$MetricOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetricOutImplToJson(
      this,
    );
  }
}

abstract class _MetricOut extends MetricOut {
  const factory _MetricOut(
      {@JsonKey(name: 'train_loss', includeIfNull: false)
      final double? trainLoss,
      @JsonKey(name: 'valid_loss', includeIfNull: false)
      final double? validLoss,
      @JsonKey(name: 'valid_mean_token_accuracy', includeIfNull: false)
      final double? validMeanTokenAccuracy}) = _$MetricOutImpl;
  const _MetricOut._() : super._();

  factory _MetricOut.fromJson(Map<String, dynamic> json) =
      _$MetricOutImpl.fromJson;

  /// No Description
  @override
  @JsonKey(name: 'train_loss', includeIfNull: false)
  double? get trainLoss;

  /// No Description
  @override
  @JsonKey(name: 'valid_loss', includeIfNull: false)
  double? get validLoss;

  /// No Description
  @override
  @JsonKey(name: 'valid_mean_token_accuracy', includeIfNull: false)
  double? get validMeanTokenAccuracy;

  /// Create a copy of MetricOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetricOutImplCopyWith<_$MetricOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FTModelCapabilitiesOut _$FTModelCapabilitiesOutFromJson(
    Map<String, dynamic> json) {
  return _FTModelCapabilitiesOut.fromJson(json);
}

/// @nodoc
mixin _$FTModelCapabilitiesOut {
  /// No Description
  @JsonKey(name: 'completion_chat')
  bool get completionChat => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'completion_fim')
  bool get completionFim => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'function_calling')
  bool get functionCalling => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'fine_tuning')
  bool get fineTuning => throw _privateConstructorUsedError;

  /// Serializes this FTModelCapabilitiesOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FTModelCapabilitiesOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FTModelCapabilitiesOutCopyWith<FTModelCapabilitiesOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FTModelCapabilitiesOutCopyWith<$Res> {
  factory $FTModelCapabilitiesOutCopyWith(FTModelCapabilitiesOut value,
          $Res Function(FTModelCapabilitiesOut) then) =
      _$FTModelCapabilitiesOutCopyWithImpl<$Res, FTModelCapabilitiesOut>;
  @useResult
  $Res call(
      {@JsonKey(name: 'completion_chat') bool completionChat,
      @JsonKey(name: 'completion_fim') bool completionFim,
      @JsonKey(name: 'function_calling') bool functionCalling,
      @JsonKey(name: 'fine_tuning') bool fineTuning});
}

/// @nodoc
class _$FTModelCapabilitiesOutCopyWithImpl<$Res,
        $Val extends FTModelCapabilitiesOut>
    implements $FTModelCapabilitiesOutCopyWith<$Res> {
  _$FTModelCapabilitiesOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FTModelCapabilitiesOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completionChat = null,
    Object? completionFim = null,
    Object? functionCalling = null,
    Object? fineTuning = null,
  }) {
    return _then(_value.copyWith(
      completionChat: null == completionChat
          ? _value.completionChat
          : completionChat // ignore: cast_nullable_to_non_nullable
              as bool,
      completionFim: null == completionFim
          ? _value.completionFim
          : completionFim // ignore: cast_nullable_to_non_nullable
              as bool,
      functionCalling: null == functionCalling
          ? _value.functionCalling
          : functionCalling // ignore: cast_nullable_to_non_nullable
              as bool,
      fineTuning: null == fineTuning
          ? _value.fineTuning
          : fineTuning // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FTModelCapabilitiesOutImplCopyWith<$Res>
    implements $FTModelCapabilitiesOutCopyWith<$Res> {
  factory _$$FTModelCapabilitiesOutImplCopyWith(
          _$FTModelCapabilitiesOutImpl value,
          $Res Function(_$FTModelCapabilitiesOutImpl) then) =
      __$$FTModelCapabilitiesOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'completion_chat') bool completionChat,
      @JsonKey(name: 'completion_fim') bool completionFim,
      @JsonKey(name: 'function_calling') bool functionCalling,
      @JsonKey(name: 'fine_tuning') bool fineTuning});
}

/// @nodoc
class __$$FTModelCapabilitiesOutImplCopyWithImpl<$Res>
    extends _$FTModelCapabilitiesOutCopyWithImpl<$Res,
        _$FTModelCapabilitiesOutImpl>
    implements _$$FTModelCapabilitiesOutImplCopyWith<$Res> {
  __$$FTModelCapabilitiesOutImplCopyWithImpl(
      _$FTModelCapabilitiesOutImpl _value,
      $Res Function(_$FTModelCapabilitiesOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of FTModelCapabilitiesOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completionChat = null,
    Object? completionFim = null,
    Object? functionCalling = null,
    Object? fineTuning = null,
  }) {
    return _then(_$FTModelCapabilitiesOutImpl(
      completionChat: null == completionChat
          ? _value.completionChat
          : completionChat // ignore: cast_nullable_to_non_nullable
              as bool,
      completionFim: null == completionFim
          ? _value.completionFim
          : completionFim // ignore: cast_nullable_to_non_nullable
              as bool,
      functionCalling: null == functionCalling
          ? _value.functionCalling
          : functionCalling // ignore: cast_nullable_to_non_nullable
              as bool,
      fineTuning: null == fineTuning
          ? _value.fineTuning
          : fineTuning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FTModelCapabilitiesOutImpl extends _FTModelCapabilitiesOut {
  const _$FTModelCapabilitiesOutImpl(
      {@JsonKey(name: 'completion_chat') this.completionChat = true,
      @JsonKey(name: 'completion_fim') this.completionFim = false,
      @JsonKey(name: 'function_calling') this.functionCalling = false,
      @JsonKey(name: 'fine_tuning') this.fineTuning = false})
      : super._();

  factory _$FTModelCapabilitiesOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$FTModelCapabilitiesOutImplFromJson(json);

  /// No Description
  @override
  @JsonKey(name: 'completion_chat')
  final bool completionChat;

  /// No Description
  @override
  @JsonKey(name: 'completion_fim')
  final bool completionFim;

  /// No Description
  @override
  @JsonKey(name: 'function_calling')
  final bool functionCalling;

  /// No Description
  @override
  @JsonKey(name: 'fine_tuning')
  final bool fineTuning;

  @override
  String toString() {
    return 'FTModelCapabilitiesOut(completionChat: $completionChat, completionFim: $completionFim, functionCalling: $functionCalling, fineTuning: $fineTuning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FTModelCapabilitiesOutImpl &&
            (identical(other.completionChat, completionChat) ||
                other.completionChat == completionChat) &&
            (identical(other.completionFim, completionFim) ||
                other.completionFim == completionFim) &&
            (identical(other.functionCalling, functionCalling) ||
                other.functionCalling == functionCalling) &&
            (identical(other.fineTuning, fineTuning) ||
                other.fineTuning == fineTuning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, completionChat, completionFim, functionCalling, fineTuning);

  /// Create a copy of FTModelCapabilitiesOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FTModelCapabilitiesOutImplCopyWith<_$FTModelCapabilitiesOutImpl>
      get copyWith => __$$FTModelCapabilitiesOutImplCopyWithImpl<
          _$FTModelCapabilitiesOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FTModelCapabilitiesOutImplToJson(
      this,
    );
  }
}

abstract class _FTModelCapabilitiesOut extends FTModelCapabilitiesOut {
  const factory _FTModelCapabilitiesOut(
          {@JsonKey(name: 'completion_chat') final bool completionChat,
          @JsonKey(name: 'completion_fim') final bool completionFim,
          @JsonKey(name: 'function_calling') final bool functionCalling,
          @JsonKey(name: 'fine_tuning') final bool fineTuning}) =
      _$FTModelCapabilitiesOutImpl;
  const _FTModelCapabilitiesOut._() : super._();

  factory _FTModelCapabilitiesOut.fromJson(Map<String, dynamic> json) =
      _$FTModelCapabilitiesOutImpl.fromJson;

  /// No Description
  @override
  @JsonKey(name: 'completion_chat')
  bool get completionChat;

  /// No Description
  @override
  @JsonKey(name: 'completion_fim')
  bool get completionFim;

  /// No Description
  @override
  @JsonKey(name: 'function_calling')
  bool get functionCalling;

  /// No Description
  @override
  @JsonKey(name: 'fine_tuning')
  bool get fineTuning;

  /// Create a copy of FTModelCapabilitiesOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FTModelCapabilitiesOutImplCopyWith<_$FTModelCapabilitiesOutImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FTModelOut _$FTModelOutFromJson(Map<String, dynamic> json) {
  return _FTModelOut.fromJson(json);
}

/// @nodoc
mixin _$FTModelOut {
  /// No Description
  String get id => throw _privateConstructorUsedError;

  ///
  FTModelOutObject get object => throw _privateConstructorUsedError;

  /// No Description
  int get created => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'owned_by')
  String get ownedBy => throw _privateConstructorUsedError;

  /// No Description
  String get root => throw _privateConstructorUsedError;

  /// No Description
  bool get archived => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get description => throw _privateConstructorUsedError;

  /// No Description
  FTModelCapabilitiesOut get capabilities => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'max_context_length')
  int get maxContextLength => throw _privateConstructorUsedError;

  /// No Description
  List<String> get aliases => throw _privateConstructorUsedError;

  /// No Description
  String get job => throw _privateConstructorUsedError;

  /// Serializes this FTModelOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FTModelOutCopyWith<FTModelOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FTModelOutCopyWith<$Res> {
  factory $FTModelOutCopyWith(
          FTModelOut value, $Res Function(FTModelOut) then) =
      _$FTModelOutCopyWithImpl<$Res, FTModelOut>;
  @useResult
  $Res call(
      {String id,
      FTModelOutObject object,
      int created,
      @JsonKey(name: 'owned_by') String ownedBy,
      String root,
      bool archived,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? description,
      FTModelCapabilitiesOut capabilities,
      @JsonKey(name: 'max_context_length') int maxContextLength,
      List<String> aliases,
      String job});

  $FTModelCapabilitiesOutCopyWith<$Res> get capabilities;
}

/// @nodoc
class _$FTModelOutCopyWithImpl<$Res, $Val extends FTModelOut>
    implements $FTModelOutCopyWith<$Res> {
  _$FTModelOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? ownedBy = null,
    Object? root = null,
    Object? archived = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? capabilities = null,
    Object? maxContextLength = null,
    Object? aliases = null,
    Object? job = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as FTModelOutObject,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      ownedBy: null == ownedBy
          ? _value.ownedBy
          : ownedBy // ignore: cast_nullable_to_non_nullable
              as String,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capabilities: null == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as FTModelCapabilitiesOut,
      maxContextLength: null == maxContextLength
          ? _value.maxContextLength
          : maxContextLength // ignore: cast_nullable_to_non_nullable
              as int,
      aliases: null == aliases
          ? _value.aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of FTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FTModelCapabilitiesOutCopyWith<$Res> get capabilities {
    return $FTModelCapabilitiesOutCopyWith<$Res>(_value.capabilities, (value) {
      return _then(_value.copyWith(capabilities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FTModelOutImplCopyWith<$Res>
    implements $FTModelOutCopyWith<$Res> {
  factory _$$FTModelOutImplCopyWith(
          _$FTModelOutImpl value, $Res Function(_$FTModelOutImpl) then) =
      __$$FTModelOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      FTModelOutObject object,
      int created,
      @JsonKey(name: 'owned_by') String ownedBy,
      String root,
      bool archived,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? description,
      FTModelCapabilitiesOut capabilities,
      @JsonKey(name: 'max_context_length') int maxContextLength,
      List<String> aliases,
      String job});

  @override
  $FTModelCapabilitiesOutCopyWith<$Res> get capabilities;
}

/// @nodoc
class __$$FTModelOutImplCopyWithImpl<$Res>
    extends _$FTModelOutCopyWithImpl<$Res, _$FTModelOutImpl>
    implements _$$FTModelOutImplCopyWith<$Res> {
  __$$FTModelOutImplCopyWithImpl(
      _$FTModelOutImpl _value, $Res Function(_$FTModelOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of FTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? ownedBy = null,
    Object? root = null,
    Object? archived = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? capabilities = null,
    Object? maxContextLength = null,
    Object? aliases = null,
    Object? job = null,
  }) {
    return _then(_$FTModelOutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as FTModelOutObject,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      ownedBy: null == ownedBy
          ? _value.ownedBy
          : ownedBy // ignore: cast_nullable_to_non_nullable
              as String,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capabilities: null == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as FTModelCapabilitiesOut,
      maxContextLength: null == maxContextLength
          ? _value.maxContextLength
          : maxContextLength // ignore: cast_nullable_to_non_nullable
              as int,
      aliases: null == aliases
          ? _value._aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FTModelOutImpl extends _FTModelOut {
  const _$FTModelOutImpl(
      {required this.id,
      this.object = FTModelOutObject.model,
      required this.created,
      @JsonKey(name: 'owned_by') required this.ownedBy,
      required this.root,
      required this.archived,
      @JsonKey(includeIfNull: false) this.name,
      @JsonKey(includeIfNull: false) this.description,
      required this.capabilities,
      @JsonKey(name: 'max_context_length') this.maxContextLength = 32768,
      final List<String> aliases = const [],
      required this.job})
      : _aliases = aliases,
        super._();

  factory _$FTModelOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$FTModelOutImplFromJson(json);

  /// No Description
  @override
  final String id;

  ///
  @override
  @JsonKey()
  final FTModelOutObject object;

  /// No Description
  @override
  final int created;

  /// No Description
  @override
  @JsonKey(name: 'owned_by')
  final String ownedBy;

  /// No Description
  @override
  final String root;

  /// No Description
  @override
  final bool archived;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? name;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? description;

  /// No Description
  @override
  final FTModelCapabilitiesOut capabilities;

  /// No Description
  @override
  @JsonKey(name: 'max_context_length')
  final int maxContextLength;

  /// No Description
  final List<String> _aliases;

  /// No Description
  @override
  @JsonKey()
  List<String> get aliases {
    if (_aliases is EqualUnmodifiableListView) return _aliases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aliases);
  }

  /// No Description
  @override
  final String job;

  @override
  String toString() {
    return 'FTModelOut(id: $id, object: $object, created: $created, ownedBy: $ownedBy, root: $root, archived: $archived, name: $name, description: $description, capabilities: $capabilities, maxContextLength: $maxContextLength, aliases: $aliases, job: $job)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FTModelOutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.ownedBy, ownedBy) || other.ownedBy == ownedBy) &&
            (identical(other.root, root) || other.root == root) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.capabilities, capabilities) ||
                other.capabilities == capabilities) &&
            (identical(other.maxContextLength, maxContextLength) ||
                other.maxContextLength == maxContextLength) &&
            const DeepCollectionEquality().equals(other._aliases, _aliases) &&
            (identical(other.job, job) || other.job == job));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      object,
      created,
      ownedBy,
      root,
      archived,
      name,
      description,
      capabilities,
      maxContextLength,
      const DeepCollectionEquality().hash(_aliases),
      job);

  /// Create a copy of FTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FTModelOutImplCopyWith<_$FTModelOutImpl> get copyWith =>
      __$$FTModelOutImplCopyWithImpl<_$FTModelOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FTModelOutImplToJson(
      this,
    );
  }
}

abstract class _FTModelOut extends FTModelOut {
  const factory _FTModelOut(
      {required final String id,
      final FTModelOutObject object,
      required final int created,
      @JsonKey(name: 'owned_by') required final String ownedBy,
      required final String root,
      required final bool archived,
      @JsonKey(includeIfNull: false) final String? name,
      @JsonKey(includeIfNull: false) final String? description,
      required final FTModelCapabilitiesOut capabilities,
      @JsonKey(name: 'max_context_length') final int maxContextLength,
      final List<String> aliases,
      required final String job}) = _$FTModelOutImpl;
  const _FTModelOut._() : super._();

  factory _FTModelOut.fromJson(Map<String, dynamic> json) =
      _$FTModelOutImpl.fromJson;

  /// No Description
  @override
  String get id;

  ///
  @override
  FTModelOutObject get object;

  /// No Description
  @override
  int get created;

  /// No Description
  @override
  @JsonKey(name: 'owned_by')
  String get ownedBy;

  /// No Description
  @override
  String get root;

  /// No Description
  @override
  bool get archived;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get name;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get description;

  /// No Description
  @override
  FTModelCapabilitiesOut get capabilities;

  /// No Description
  @override
  @JsonKey(name: 'max_context_length')
  int get maxContextLength;

  /// No Description
  @override
  List<String> get aliases;

  /// No Description
  @override
  String get job;

  /// Create a copy of FTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FTModelOutImplCopyWith<_$FTModelOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateFTModelIn _$UpdateFTModelInFromJson(Map<String, dynamic> json) {
  return _UpdateFTModelIn.fromJson(json);
}

/// @nodoc
mixin _$UpdateFTModelIn {
  /// No Description
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this UpdateFTModelIn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFTModelIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFTModelInCopyWith<UpdateFTModelIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFTModelInCopyWith<$Res> {
  factory $UpdateFTModelInCopyWith(
          UpdateFTModelIn value, $Res Function(UpdateFTModelIn) then) =
      _$UpdateFTModelInCopyWithImpl<$Res, UpdateFTModelIn>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? description});
}

/// @nodoc
class _$UpdateFTModelInCopyWithImpl<$Res, $Val extends UpdateFTModelIn>
    implements $UpdateFTModelInCopyWith<$Res> {
  _$UpdateFTModelInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFTModelIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateFTModelInImplCopyWith<$Res>
    implements $UpdateFTModelInCopyWith<$Res> {
  factory _$$UpdateFTModelInImplCopyWith(_$UpdateFTModelInImpl value,
          $Res Function(_$UpdateFTModelInImpl) then) =
      __$$UpdateFTModelInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? description});
}

/// @nodoc
class __$$UpdateFTModelInImplCopyWithImpl<$Res>
    extends _$UpdateFTModelInCopyWithImpl<$Res, _$UpdateFTModelInImpl>
    implements _$$UpdateFTModelInImplCopyWith<$Res> {
  __$$UpdateFTModelInImplCopyWithImpl(
      _$UpdateFTModelInImpl _value, $Res Function(_$UpdateFTModelInImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateFTModelIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$UpdateFTModelInImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFTModelInImpl extends _UpdateFTModelIn {
  const _$UpdateFTModelInImpl(
      {@JsonKey(includeIfNull: false) this.name,
      @JsonKey(includeIfNull: false) this.description})
      : super._();

  factory _$UpdateFTModelInImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateFTModelInImplFromJson(json);

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? name;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? description;

  @override
  String toString() {
    return 'UpdateFTModelIn(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFTModelInImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of UpdateFTModelIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFTModelInImplCopyWith<_$UpdateFTModelInImpl> get copyWith =>
      __$$UpdateFTModelInImplCopyWithImpl<_$UpdateFTModelInImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFTModelInImplToJson(
      this,
    );
  }
}

abstract class _UpdateFTModelIn extends UpdateFTModelIn {
  const factory _UpdateFTModelIn(
          {@JsonKey(includeIfNull: false) final String? name,
          @JsonKey(includeIfNull: false) final String? description}) =
      _$UpdateFTModelInImpl;
  const _UpdateFTModelIn._() : super._();

  factory _UpdateFTModelIn.fromJson(Map<String, dynamic> json) =
      _$UpdateFTModelInImpl.fromJson;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get name;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get description;

  /// Create a copy of UpdateFTModelIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFTModelInImplCopyWith<_$UpdateFTModelInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArchiveFTModelOut _$ArchiveFTModelOutFromJson(Map<String, dynamic> json) {
  return _ArchiveFTModelOut.fromJson(json);
}

/// @nodoc
mixin _$ArchiveFTModelOut {
  /// No Description
  String get id => throw _privateConstructorUsedError;

  ///
  ArchiveFTModelOutObject get object => throw _privateConstructorUsedError;

  /// No Description
  bool get archived => throw _privateConstructorUsedError;

  /// Serializes this ArchiveFTModelOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArchiveFTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArchiveFTModelOutCopyWith<ArchiveFTModelOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchiveFTModelOutCopyWith<$Res> {
  factory $ArchiveFTModelOutCopyWith(
          ArchiveFTModelOut value, $Res Function(ArchiveFTModelOut) then) =
      _$ArchiveFTModelOutCopyWithImpl<$Res, ArchiveFTModelOut>;
  @useResult
  $Res call({String id, ArchiveFTModelOutObject object, bool archived});
}

/// @nodoc
class _$ArchiveFTModelOutCopyWithImpl<$Res, $Val extends ArchiveFTModelOut>
    implements $ArchiveFTModelOutCopyWith<$Res> {
  _$ArchiveFTModelOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArchiveFTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? archived = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as ArchiveFTModelOutObject,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArchiveFTModelOutImplCopyWith<$Res>
    implements $ArchiveFTModelOutCopyWith<$Res> {
  factory _$$ArchiveFTModelOutImplCopyWith(_$ArchiveFTModelOutImpl value,
          $Res Function(_$ArchiveFTModelOutImpl) then) =
      __$$ArchiveFTModelOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ArchiveFTModelOutObject object, bool archived});
}

/// @nodoc
class __$$ArchiveFTModelOutImplCopyWithImpl<$Res>
    extends _$ArchiveFTModelOutCopyWithImpl<$Res, _$ArchiveFTModelOutImpl>
    implements _$$ArchiveFTModelOutImplCopyWith<$Res> {
  __$$ArchiveFTModelOutImplCopyWithImpl(_$ArchiveFTModelOutImpl _value,
      $Res Function(_$ArchiveFTModelOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArchiveFTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? archived = null,
  }) {
    return _then(_$ArchiveFTModelOutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as ArchiveFTModelOutObject,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArchiveFTModelOutImpl extends _ArchiveFTModelOut {
  const _$ArchiveFTModelOutImpl(
      {required this.id,
      this.object = ArchiveFTModelOutObject.model,
      this.archived = true})
      : super._();

  factory _$ArchiveFTModelOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArchiveFTModelOutImplFromJson(json);

  /// No Description
  @override
  final String id;

  ///
  @override
  @JsonKey()
  final ArchiveFTModelOutObject object;

  /// No Description
  @override
  @JsonKey()
  final bool archived;

  @override
  String toString() {
    return 'ArchiveFTModelOut(id: $id, object: $object, archived: $archived)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArchiveFTModelOutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.archived, archived) ||
                other.archived == archived));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, archived);

  /// Create a copy of ArchiveFTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArchiveFTModelOutImplCopyWith<_$ArchiveFTModelOutImpl> get copyWith =>
      __$$ArchiveFTModelOutImplCopyWithImpl<_$ArchiveFTModelOutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArchiveFTModelOutImplToJson(
      this,
    );
  }
}

abstract class _ArchiveFTModelOut extends ArchiveFTModelOut {
  const factory _ArchiveFTModelOut(
      {required final String id,
      final ArchiveFTModelOutObject object,
      final bool archived}) = _$ArchiveFTModelOutImpl;
  const _ArchiveFTModelOut._() : super._();

  factory _ArchiveFTModelOut.fromJson(Map<String, dynamic> json) =
      _$ArchiveFTModelOutImpl.fromJson;

  /// No Description
  @override
  String get id;

  ///
  @override
  ArchiveFTModelOutObject get object;

  /// No Description
  @override
  bool get archived;

  /// Create a copy of ArchiveFTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArchiveFTModelOutImplCopyWith<_$ArchiveFTModelOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnarchiveFTModelOut _$UnarchiveFTModelOutFromJson(Map<String, dynamic> json) {
  return _UnarchiveFTModelOut.fromJson(json);
}

/// @nodoc
mixin _$UnarchiveFTModelOut {
  /// No Description
  String get id => throw _privateConstructorUsedError;

  ///
  UnarchiveFTModelOutObject get object => throw _privateConstructorUsedError;

  /// No Description
  bool get archived => throw _privateConstructorUsedError;

  /// Serializes this UnarchiveFTModelOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnarchiveFTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnarchiveFTModelOutCopyWith<UnarchiveFTModelOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnarchiveFTModelOutCopyWith<$Res> {
  factory $UnarchiveFTModelOutCopyWith(
          UnarchiveFTModelOut value, $Res Function(UnarchiveFTModelOut) then) =
      _$UnarchiveFTModelOutCopyWithImpl<$Res, UnarchiveFTModelOut>;
  @useResult
  $Res call({String id, UnarchiveFTModelOutObject object, bool archived});
}

/// @nodoc
class _$UnarchiveFTModelOutCopyWithImpl<$Res, $Val extends UnarchiveFTModelOut>
    implements $UnarchiveFTModelOutCopyWith<$Res> {
  _$UnarchiveFTModelOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnarchiveFTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? archived = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as UnarchiveFTModelOutObject,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnarchiveFTModelOutImplCopyWith<$Res>
    implements $UnarchiveFTModelOutCopyWith<$Res> {
  factory _$$UnarchiveFTModelOutImplCopyWith(_$UnarchiveFTModelOutImpl value,
          $Res Function(_$UnarchiveFTModelOutImpl) then) =
      __$$UnarchiveFTModelOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, UnarchiveFTModelOutObject object, bool archived});
}

/// @nodoc
class __$$UnarchiveFTModelOutImplCopyWithImpl<$Res>
    extends _$UnarchiveFTModelOutCopyWithImpl<$Res, _$UnarchiveFTModelOutImpl>
    implements _$$UnarchiveFTModelOutImplCopyWith<$Res> {
  __$$UnarchiveFTModelOutImplCopyWithImpl(_$UnarchiveFTModelOutImpl _value,
      $Res Function(_$UnarchiveFTModelOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnarchiveFTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? archived = null,
  }) {
    return _then(_$UnarchiveFTModelOutImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as UnarchiveFTModelOutObject,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnarchiveFTModelOutImpl extends _UnarchiveFTModelOut {
  const _$UnarchiveFTModelOutImpl(
      {required this.id,
      this.object = UnarchiveFTModelOutObject.model,
      this.archived = false})
      : super._();

  factory _$UnarchiveFTModelOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnarchiveFTModelOutImplFromJson(json);

  /// No Description
  @override
  final String id;

  ///
  @override
  @JsonKey()
  final UnarchiveFTModelOutObject object;

  /// No Description
  @override
  @JsonKey()
  final bool archived;

  @override
  String toString() {
    return 'UnarchiveFTModelOut(id: $id, object: $object, archived: $archived)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnarchiveFTModelOutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.archived, archived) ||
                other.archived == archived));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, archived);

  /// Create a copy of UnarchiveFTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnarchiveFTModelOutImplCopyWith<_$UnarchiveFTModelOutImpl> get copyWith =>
      __$$UnarchiveFTModelOutImplCopyWithImpl<_$UnarchiveFTModelOutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnarchiveFTModelOutImplToJson(
      this,
    );
  }
}

abstract class _UnarchiveFTModelOut extends UnarchiveFTModelOut {
  const factory _UnarchiveFTModelOut(
      {required final String id,
      final UnarchiveFTModelOutObject object,
      final bool archived}) = _$UnarchiveFTModelOutImpl;
  const _UnarchiveFTModelOut._() : super._();

  factory _UnarchiveFTModelOut.fromJson(Map<String, dynamic> json) =
      _$UnarchiveFTModelOutImpl.fromJson;

  /// No Description
  @override
  String get id;

  ///
  @override
  UnarchiveFTModelOutObject get object;

  /// No Description
  @override
  bool get archived;

  /// Create a copy of UnarchiveFTModelOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnarchiveFTModelOutImplCopyWith<_$UnarchiveFTModelOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssistantMessage _$AssistantMessageFromJson(Map<String, dynamic> json) {
  return _AssistantMessage.fromJson(json);
}

/// @nodoc
mixin _$AssistantMessage {
  /// No Description
  @JsonKey(includeIfNull: false)
  String? get content => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'tool_calls', includeIfNull: false)
  List<ToolCall>? get toolCalls => throw _privateConstructorUsedError;

  /// Set this to `true` when adding an assistant message as prefix to condition the model response. The role of the prefix message is to force the model to start its answer by the content of the message.
  bool get prefix => throw _privateConstructorUsedError;

  ///
  Role get role => throw _privateConstructorUsedError;

  /// Serializes this AssistantMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssistantMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssistantMessageCopyWith<AssistantMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistantMessageCopyWith<$Res> {
  factory $AssistantMessageCopyWith(
          AssistantMessage value, $Res Function(AssistantMessage) then) =
      _$AssistantMessageCopyWithImpl<$Res, AssistantMessage>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? content,
      @JsonKey(name: 'tool_calls', includeIfNull: false)
      List<ToolCall>? toolCalls,
      bool prefix,
      Role role});
}

/// @nodoc
class _$AssistantMessageCopyWithImpl<$Res, $Val extends AssistantMessage>
    implements $AssistantMessageCopyWith<$Res> {
  _$AssistantMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssistantMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? toolCalls = freezed,
    Object? prefix = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      toolCalls: freezed == toolCalls
          ? _value.toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<ToolCall>?,
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as bool,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssistantMessageImplCopyWith<$Res>
    implements $AssistantMessageCopyWith<$Res> {
  factory _$$AssistantMessageImplCopyWith(_$AssistantMessageImpl value,
          $Res Function(_$AssistantMessageImpl) then) =
      __$$AssistantMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? content,
      @JsonKey(name: 'tool_calls', includeIfNull: false)
      List<ToolCall>? toolCalls,
      bool prefix,
      Role role});
}

/// @nodoc
class __$$AssistantMessageImplCopyWithImpl<$Res>
    extends _$AssistantMessageCopyWithImpl<$Res, _$AssistantMessageImpl>
    implements _$$AssistantMessageImplCopyWith<$Res> {
  __$$AssistantMessageImplCopyWithImpl(_$AssistantMessageImpl _value,
      $Res Function(_$AssistantMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssistantMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? toolCalls = freezed,
    Object? prefix = null,
    Object? role = null,
  }) {
    return _then(_$AssistantMessageImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      toolCalls: freezed == toolCalls
          ? _value._toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<ToolCall>?,
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as bool,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssistantMessageImpl extends _AssistantMessage {
  const _$AssistantMessageImpl(
      {@JsonKey(includeIfNull: false) this.content,
      @JsonKey(name: 'tool_calls', includeIfNull: false)
      final List<ToolCall>? toolCalls,
      this.prefix = false,
      this.role = Role.assistant})
      : _toolCalls = toolCalls,
        super._();

  factory _$AssistantMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssistantMessageImplFromJson(json);

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? content;

  /// No Description
  final List<ToolCall>? _toolCalls;

  /// No Description
  @override
  @JsonKey(name: 'tool_calls', includeIfNull: false)
  List<ToolCall>? get toolCalls {
    final value = _toolCalls;
    if (value == null) return null;
    if (_toolCalls is EqualUnmodifiableListView) return _toolCalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Set this to `true` when adding an assistant message as prefix to condition the model response. The role of the prefix message is to force the model to start its answer by the content of the message.
  @override
  @JsonKey()
  final bool prefix;

  ///
  @override
  @JsonKey()
  final Role role;

  @override
  String toString() {
    return 'AssistantMessage(content: $content, toolCalls: $toolCalls, prefix: $prefix, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssistantMessageImpl &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._toolCalls, _toolCalls) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content,
      const DeepCollectionEquality().hash(_toolCalls), prefix, role);

  /// Create a copy of AssistantMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssistantMessageImplCopyWith<_$AssistantMessageImpl> get copyWith =>
      __$$AssistantMessageImplCopyWithImpl<_$AssistantMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssistantMessageImplToJson(
      this,
    );
  }
}

abstract class _AssistantMessage extends AssistantMessage {
  const factory _AssistantMessage(
      {@JsonKey(includeIfNull: false) final String? content,
      @JsonKey(name: 'tool_calls', includeIfNull: false)
      final List<ToolCall>? toolCalls,
      final bool prefix,
      final Role role}) = _$AssistantMessageImpl;
  const _AssistantMessage._() : super._();

  factory _AssistantMessage.fromJson(Map<String, dynamic> json) =
      _$AssistantMessageImpl.fromJson;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get content;

  /// No Description
  @override
  @JsonKey(name: 'tool_calls', includeIfNull: false)
  List<ToolCall>? get toolCalls;

  /// Set this to `true` when adding an assistant message as prefix to condition the model response. The role of the prefix message is to force the model to start its answer by the content of the message.
  @override
  bool get prefix;

  ///
  @override
  Role get role;

  /// Create a copy of AssistantMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssistantMessageImplCopyWith<_$AssistantMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatCompletionRequest _$ChatCompletionRequestFromJson(
    Map<String, dynamic> json) {
  return _ChatCompletionRequest.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionRequest {
  /// ID of the model to use. You can use the [List Available Models](/api#operation/listModels) API to see all of your available models, or see our [Model overview](/models) for model descriptions.
  String? get model => throw _privateConstructorUsedError;

  /// What sampling temperature to use, between 0.0 and 1.0. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or `top_p` but not both.
  double get temperature => throw _privateConstructorUsedError;

  /// Nucleus sampling, where the model considers the results of the tokens with `top_p` probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered. We generally recommend altering this or `temperature` but not both.
  @JsonKey(name: 'top_p')
  double get topP => throw _privateConstructorUsedError;

  /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
  @JsonKey(name: 'max_tokens', includeIfNull: false)
  int? get maxTokens => throw _privateConstructorUsedError;

  /// The minimum number of tokens to generate in the completion.
  @JsonKey(name: 'min_tokens', includeIfNull: false)
  int? get minTokens => throw _privateConstructorUsedError;

  /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
  bool get stream => throw _privateConstructorUsedError;

  /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
  @_StopConverter()
  @JsonKey(includeIfNull: false)
  Stop? get stop => throw _privateConstructorUsedError;

  /// The seed to use for random sampling. If set, different calls will generate deterministic results.
  @JsonKey(name: 'random_seed', includeIfNull: false)
  int? get randomSeed => throw _privateConstructorUsedError;

  /// The prompt(s) to generate completions for, encoded as a list of dict with role and content.
  /// You can pass only this types into to the list: [SystemMessage], [UserMessage], [AssistantMessage], [ToolMessage].
  List<dynamic> get messages => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'response_format', includeIfNull: false)
  ResponseFormat? get responseFormat => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  List<Tool>? get tools => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: 'tool_choice')
  ToolChoice get toolChoice => throw _privateConstructorUsedError;

  /// Whether to inject a safety prompt before all conversations.
  @JsonKey(name: 'safe_prompt')
  bool get safePrompt => throw _privateConstructorUsedError;

  /// Serializes this ChatCompletionRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatCompletionRequestCopyWith<ChatCompletionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionRequestCopyWith<$Res> {
  factory $ChatCompletionRequestCopyWith(ChatCompletionRequest value,
          $Res Function(ChatCompletionRequest) then) =
      _$ChatCompletionRequestCopyWithImpl<$Res, ChatCompletionRequest>;
  @useResult
  $Res call(
      {String? model,
      double temperature,
      @JsonKey(name: 'top_p') double topP,
      @JsonKey(name: 'max_tokens', includeIfNull: false) int? maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) int? minTokens,
      bool stream,
      @_StopConverter() @JsonKey(includeIfNull: false) Stop? stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) int? randomSeed,
      List<dynamic> messages,
      @JsonKey(name: 'response_format', includeIfNull: false)
      ResponseFormat? responseFormat,
      @JsonKey(includeIfNull: false) List<Tool>? tools,
      @JsonKey(name: 'tool_choice') ToolChoice toolChoice,
      @JsonKey(name: 'safe_prompt') bool safePrompt});

  $StopCopyWith<$Res>? get stop;
  $ResponseFormatCopyWith<$Res>? get responseFormat;
}

/// @nodoc
class _$ChatCompletionRequestCopyWithImpl<$Res,
        $Val extends ChatCompletionRequest>
    implements $ChatCompletionRequestCopyWith<$Res> {
  _$ChatCompletionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? temperature = null,
    Object? topP = null,
    Object? maxTokens = freezed,
    Object? minTokens = freezed,
    Object? stream = null,
    Object? stop = freezed,
    Object? randomSeed = freezed,
    Object? messages = null,
    Object? responseFormat = freezed,
    Object? tools = freezed,
    Object? toolChoice = null,
    Object? safePrompt = null,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      topP: null == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      minTokens: freezed == minTokens
          ? _value.minTokens
          : minTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool,
      stop: freezed == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as Stop?,
      randomSeed: freezed == randomSeed
          ? _value.randomSeed
          : randomSeed // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      responseFormat: freezed == responseFormat
          ? _value.responseFormat
          : responseFormat // ignore: cast_nullable_to_non_nullable
              as ResponseFormat?,
      tools: freezed == tools
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tool>?,
      toolChoice: null == toolChoice
          ? _value.toolChoice
          : toolChoice // ignore: cast_nullable_to_non_nullable
              as ToolChoice,
      safePrompt: null == safePrompt
          ? _value.safePrompt
          : safePrompt // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ChatCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StopCopyWith<$Res>? get stop {
    if (_value.stop == null) {
      return null;
    }

    return $StopCopyWith<$Res>(_value.stop!, (value) {
      return _then(_value.copyWith(stop: value) as $Val);
    });
  }

  /// Create a copy of ChatCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseFormatCopyWith<$Res>? get responseFormat {
    if (_value.responseFormat == null) {
      return null;
    }

    return $ResponseFormatCopyWith<$Res>(_value.responseFormat!, (value) {
      return _then(_value.copyWith(responseFormat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatCompletionRequestImplCopyWith<$Res>
    implements $ChatCompletionRequestCopyWith<$Res> {
  factory _$$ChatCompletionRequestImplCopyWith(
          _$ChatCompletionRequestImpl value,
          $Res Function(_$ChatCompletionRequestImpl) then) =
      __$$ChatCompletionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? model,
      double temperature,
      @JsonKey(name: 'top_p') double topP,
      @JsonKey(name: 'max_tokens', includeIfNull: false) int? maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) int? minTokens,
      bool stream,
      @_StopConverter() @JsonKey(includeIfNull: false) Stop? stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) int? randomSeed,
      List<dynamic> messages,
      @JsonKey(name: 'response_format', includeIfNull: false)
      ResponseFormat? responseFormat,
      @JsonKey(includeIfNull: false) List<Tool>? tools,
      @JsonKey(name: 'tool_choice') ToolChoice toolChoice,
      @JsonKey(name: 'safe_prompt') bool safePrompt});

  @override
  $StopCopyWith<$Res>? get stop;
  @override
  $ResponseFormatCopyWith<$Res>? get responseFormat;
}

/// @nodoc
class __$$ChatCompletionRequestImplCopyWithImpl<$Res>
    extends _$ChatCompletionRequestCopyWithImpl<$Res,
        _$ChatCompletionRequestImpl>
    implements _$$ChatCompletionRequestImplCopyWith<$Res> {
  __$$ChatCompletionRequestImplCopyWithImpl(_$ChatCompletionRequestImpl _value,
      $Res Function(_$ChatCompletionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? temperature = null,
    Object? topP = null,
    Object? maxTokens = freezed,
    Object? minTokens = freezed,
    Object? stream = null,
    Object? stop = freezed,
    Object? randomSeed = freezed,
    Object? messages = null,
    Object? responseFormat = freezed,
    Object? tools = freezed,
    Object? toolChoice = null,
    Object? safePrompt = null,
  }) {
    return _then(_$ChatCompletionRequestImpl(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      topP: null == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      minTokens: freezed == minTokens
          ? _value.minTokens
          : minTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool,
      stop: freezed == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as Stop?,
      randomSeed: freezed == randomSeed
          ? _value.randomSeed
          : randomSeed // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      responseFormat: freezed == responseFormat
          ? _value.responseFormat
          : responseFormat // ignore: cast_nullable_to_non_nullable
              as ResponseFormat?,
      tools: freezed == tools
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tool>?,
      toolChoice: null == toolChoice
          ? _value.toolChoice
          : toolChoice // ignore: cast_nullable_to_non_nullable
              as ToolChoice,
      safePrompt: null == safePrompt
          ? _value.safePrompt
          : safePrompt // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatCompletionRequestImpl extends _ChatCompletionRequest {
  const _$ChatCompletionRequestImpl(
      {required this.model,
      this.temperature = 0.7,
      @JsonKey(name: 'top_p') this.topP = 1.0,
      @JsonKey(name: 'max_tokens', includeIfNull: false) this.maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) this.minTokens,
      this.stream = false,
      @_StopConverter() @JsonKey(includeIfNull: false) this.stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) this.randomSeed,
      required final List<dynamic> messages,
      @JsonKey(name: 'response_format', includeIfNull: false)
      this.responseFormat,
      @JsonKey(includeIfNull: false) final List<Tool>? tools,
      @JsonKey(name: 'tool_choice') this.toolChoice = ToolChoice.auto,
      @JsonKey(name: 'safe_prompt') this.safePrompt = false})
      : _messages = messages,
        _tools = tools,
        super._();

  factory _$ChatCompletionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatCompletionRequestImplFromJson(json);

  /// ID of the model to use. You can use the [List Available Models](/api#operation/listModels) API to see all of your available models, or see our [Model overview](/models) for model descriptions.
  @override
  final String? model;

  /// What sampling temperature to use, between 0.0 and 1.0. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or `top_p` but not both.
  @override
  @JsonKey()
  final double temperature;

  /// Nucleus sampling, where the model considers the results of the tokens with `top_p` probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered. We generally recommend altering this or `temperature` but not both.
  @override
  @JsonKey(name: 'top_p')
  final double topP;

  /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
  @override
  @JsonKey(name: 'max_tokens', includeIfNull: false)
  final int? maxTokens;

  /// The minimum number of tokens to generate in the completion.
  @override
  @JsonKey(name: 'min_tokens', includeIfNull: false)
  final int? minTokens;

  /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
  @override
  @JsonKey()
  final bool stream;

  /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
  @override
  @_StopConverter()
  @JsonKey(includeIfNull: false)
  final Stop? stop;

  /// The seed to use for random sampling. If set, different calls will generate deterministic results.
  @override
  @JsonKey(name: 'random_seed', includeIfNull: false)
  final int? randomSeed;

  /// The prompt(s) to generate completions for, encoded as a list of dict with role and content.
  /// You can pass only this types into to the list: [SystemMessage], [UserMessage], [AssistantMessage], [ToolMessage].
  final List<dynamic> _messages;

  /// The prompt(s) to generate completions for, encoded as a list of dict with role and content.
  /// You can pass only this types into to the list: [SystemMessage], [UserMessage], [AssistantMessage], [ToolMessage].
  @override
  List<dynamic> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  /// No Description
  @override
  @JsonKey(name: 'response_format', includeIfNull: false)
  final ResponseFormat? responseFormat;

  /// No Description
  final List<Tool>? _tools;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<Tool>? get tools {
    final value = _tools;
    if (value == null) return null;
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  ///
  @override
  @JsonKey(name: 'tool_choice')
  final ToolChoice toolChoice;

  /// Whether to inject a safety prompt before all conversations.
  @override
  @JsonKey(name: 'safe_prompt')
  final bool safePrompt;

  @override
  String toString() {
    return 'ChatCompletionRequest(model: $model, temperature: $temperature, topP: $topP, maxTokens: $maxTokens, minTokens: $minTokens, stream: $stream, stop: $stop, randomSeed: $randomSeed, messages: $messages, responseFormat: $responseFormat, tools: $tools, toolChoice: $toolChoice, safePrompt: $safePrompt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatCompletionRequestImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.minTokens, minTokens) ||
                other.minTokens == minTokens) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.stop, stop) || other.stop == stop) &&
            (identical(other.randomSeed, randomSeed) ||
                other.randomSeed == randomSeed) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.responseFormat, responseFormat) ||
                other.responseFormat == responseFormat) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            (identical(other.toolChoice, toolChoice) ||
                other.toolChoice == toolChoice) &&
            (identical(other.safePrompt, safePrompt) ||
                other.safePrompt == safePrompt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      temperature,
      topP,
      maxTokens,
      minTokens,
      stream,
      stop,
      randomSeed,
      const DeepCollectionEquality().hash(_messages),
      responseFormat,
      const DeepCollectionEquality().hash(_tools),
      toolChoice,
      safePrompt);

  /// Create a copy of ChatCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatCompletionRequestImplCopyWith<_$ChatCompletionRequestImpl>
      get copyWith => __$$ChatCompletionRequestImplCopyWithImpl<
          _$ChatCompletionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatCompletionRequestImplToJson(
      this,
    );
  }
}

abstract class _ChatCompletionRequest extends ChatCompletionRequest {
  const factory _ChatCompletionRequest(
      {required final String? model,
      final double temperature,
      @JsonKey(name: 'top_p') final double topP,
      @JsonKey(name: 'max_tokens', includeIfNull: false) final int? maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) final int? minTokens,
      final bool stream,
      @_StopConverter() @JsonKey(includeIfNull: false) final Stop? stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) final int? randomSeed,
      required final List<dynamic> messages,
      @JsonKey(name: 'response_format', includeIfNull: false)
      final ResponseFormat? responseFormat,
      @JsonKey(includeIfNull: false) final List<Tool>? tools,
      @JsonKey(name: 'tool_choice') final ToolChoice toolChoice,
      @JsonKey(name: 'safe_prompt')
      final bool safePrompt}) = _$ChatCompletionRequestImpl;
  const _ChatCompletionRequest._() : super._();

  factory _ChatCompletionRequest.fromJson(Map<String, dynamic> json) =
      _$ChatCompletionRequestImpl.fromJson;

  /// ID of the model to use. You can use the [List Available Models](/api#operation/listModels) API to see all of your available models, or see our [Model overview](/models) for model descriptions.
  @override
  String? get model;

  /// What sampling temperature to use, between 0.0 and 1.0. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or `top_p` but not both.
  @override
  double get temperature;

  /// Nucleus sampling, where the model considers the results of the tokens with `top_p` probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered. We generally recommend altering this or `temperature` but not both.
  @override
  @JsonKey(name: 'top_p')
  double get topP;

  /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
  @override
  @JsonKey(name: 'max_tokens', includeIfNull: false)
  int? get maxTokens;

  /// The minimum number of tokens to generate in the completion.
  @override
  @JsonKey(name: 'min_tokens', includeIfNull: false)
  int? get minTokens;

  /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
  @override
  bool get stream;

  /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
  @override
  @_StopConverter()
  @JsonKey(includeIfNull: false)
  Stop? get stop;

  /// The seed to use for random sampling. If set, different calls will generate deterministic results.
  @override
  @JsonKey(name: 'random_seed', includeIfNull: false)
  int? get randomSeed;

  /// The prompt(s) to generate completions for, encoded as a list of dict with role and content.
  /// You can pass only this types into to the list: [SystemMessage], [UserMessage], [AssistantMessage], [ToolMessage].
  @override
  List<dynamic> get messages;

  /// No Description
  @override
  @JsonKey(name: 'response_format', includeIfNull: false)
  ResponseFormat? get responseFormat;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<Tool>? get tools;

  ///
  @override
  @JsonKey(name: 'tool_choice')
  ToolChoice get toolChoice;

  /// Whether to inject a safety prompt before all conversations.
  @override
  @JsonKey(name: 'safe_prompt')
  bool get safePrompt;

  /// Create a copy of ChatCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatCompletionRequestImplCopyWith<_$ChatCompletionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Stop _$StopFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'arrayString':
      return _UnionStopArrayString.fromJson(json);
    case 'string':
      return _UnionStopString.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Stop',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Stop {
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionStopArrayString value) arrayString,
    required TResult Function(_UnionStopString value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionStopArrayString value)? arrayString,
    TResult? Function(_UnionStopString value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionStopArrayString value)? arrayString,
    TResult Function(_UnionStopString value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Stop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopCopyWith<$Res> {
  factory $StopCopyWith(Stop value, $Res Function(Stop) then) =
      _$StopCopyWithImpl<$Res, Stop>;
}

/// @nodoc
class _$StopCopyWithImpl<$Res, $Val extends Stop>
    implements $StopCopyWith<$Res> {
  _$StopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnionStopArrayStringImplCopyWith<$Res> {
  factory _$$UnionStopArrayStringImplCopyWith(_$UnionStopArrayStringImpl value,
          $Res Function(_$UnionStopArrayStringImpl) then) =
      __$$UnionStopArrayStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> value});
}

/// @nodoc
class __$$UnionStopArrayStringImplCopyWithImpl<$Res>
    extends _$StopCopyWithImpl<$Res, _$UnionStopArrayStringImpl>
    implements _$$UnionStopArrayStringImplCopyWith<$Res> {
  __$$UnionStopArrayStringImplCopyWithImpl(_$UnionStopArrayStringImpl _value,
      $Res Function(_$UnionStopArrayStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionStopArrayStringImpl(
      null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionStopArrayStringImpl extends _UnionStopArrayString {
  const _$UnionStopArrayStringImpl(final List<String> value,
      {final String? $type})
      : _value = value,
        $type = $type ?? 'arrayString',
        super._();

  factory _$UnionStopArrayStringImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionStopArrayStringImplFromJson(json);

  final List<String> _value;
  @override
  List<String> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Stop.arrayString(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionStopArrayStringImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionStopArrayStringImplCopyWith<_$UnionStopArrayStringImpl>
      get copyWith =>
          __$$UnionStopArrayStringImplCopyWithImpl<_$UnionStopArrayStringImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) {
    return arrayString(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) {
    return arrayString?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (arrayString != null) {
      return arrayString(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionStopArrayString value) arrayString,
    required TResult Function(_UnionStopString value) string,
  }) {
    return arrayString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionStopArrayString value)? arrayString,
    TResult? Function(_UnionStopString value)? string,
  }) {
    return arrayString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionStopArrayString value)? arrayString,
    TResult Function(_UnionStopString value)? string,
    required TResult orElse(),
  }) {
    if (arrayString != null) {
      return arrayString(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionStopArrayStringImplToJson(
      this,
    );
  }
}

abstract class _UnionStopArrayString extends Stop {
  const factory _UnionStopArrayString(final List<String> value) =
      _$UnionStopArrayStringImpl;
  const _UnionStopArrayString._() : super._();

  factory _UnionStopArrayString.fromJson(Map<String, dynamic> json) =
      _$UnionStopArrayStringImpl.fromJson;

  @override
  List<String> get value;

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionStopArrayStringImplCopyWith<_$UnionStopArrayStringImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionStopStringImplCopyWith<$Res> {
  factory _$$UnionStopStringImplCopyWith(_$UnionStopStringImpl value,
          $Res Function(_$UnionStopStringImpl) then) =
      __$$UnionStopStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UnionStopStringImplCopyWithImpl<$Res>
    extends _$StopCopyWithImpl<$Res, _$UnionStopStringImpl>
    implements _$$UnionStopStringImplCopyWith<$Res> {
  __$$UnionStopStringImplCopyWithImpl(
      _$UnionStopStringImpl _value, $Res Function(_$UnionStopStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionStopStringImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionStopStringImpl extends _UnionStopString {
  const _$UnionStopStringImpl(this.value, {final String? $type})
      : $type = $type ?? 'string',
        super._();

  factory _$UnionStopStringImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionStopStringImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Stop.string(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionStopStringImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionStopStringImplCopyWith<_$UnionStopStringImpl> get copyWith =>
      __$$UnionStopStringImplCopyWithImpl<_$UnionStopStringImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) {
    return string(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) {
    return string?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionStopArrayString value) arrayString,
    required TResult Function(_UnionStopString value) string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionStopArrayString value)? arrayString,
    TResult? Function(_UnionStopString value)? string,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionStopArrayString value)? arrayString,
    TResult Function(_UnionStopString value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionStopStringImplToJson(
      this,
    );
  }
}

abstract class _UnionStopString extends Stop {
  const factory _UnionStopString(final String value) = _$UnionStopStringImpl;
  const _UnionStopString._() : super._();

  factory _UnionStopString.fromJson(Map<String, dynamic> json) =
      _$UnionStopStringImpl.fromJson;

  @override
  String get value;

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionStopStringImplCopyWith<_$UnionStopStringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentChunk _$ContentChunkFromJson(Map<String, dynamic> json) {
  return _ContentChunk.fromJson(json);
}

/// @nodoc
mixin _$ContentChunk {
  ///
  ChunkTypes get type => throw _privateConstructorUsedError;

  /// No Description
  String get text => throw _privateConstructorUsedError;

  /// Serializes this ContentChunk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentChunkCopyWith<ContentChunk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentChunkCopyWith<$Res> {
  factory $ContentChunkCopyWith(
          ContentChunk value, $Res Function(ContentChunk) then) =
      _$ContentChunkCopyWithImpl<$Res, ContentChunk>;
  @useResult
  $Res call({ChunkTypes type, String text});
}

/// @nodoc
class _$ContentChunkCopyWithImpl<$Res, $Val extends ContentChunk>
    implements $ContentChunkCopyWith<$Res> {
  _$ContentChunkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChunkTypes,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentChunkImplCopyWith<$Res>
    implements $ContentChunkCopyWith<$Res> {
  factory _$$ContentChunkImplCopyWith(
          _$ContentChunkImpl value, $Res Function(_$ContentChunkImpl) then) =
      __$$ContentChunkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChunkTypes type, String text});
}

/// @nodoc
class __$$ContentChunkImplCopyWithImpl<$Res>
    extends _$ContentChunkCopyWithImpl<$Res, _$ContentChunkImpl>
    implements _$$ContentChunkImplCopyWith<$Res> {
  __$$ContentChunkImplCopyWithImpl(
      _$ContentChunkImpl _value, $Res Function(_$ContentChunkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_$ContentChunkImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChunkTypes,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentChunkImpl extends _ContentChunk {
  const _$ContentChunkImpl({this.type = ChunkTypes.text, required this.text})
      : super._();

  factory _$ContentChunkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentChunkImplFromJson(json);

  ///
  @override
  @JsonKey()
  final ChunkTypes type;

  /// No Description
  @override
  final String text;

  @override
  String toString() {
    return 'ContentChunk(type: $type, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentChunkImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, text);

  /// Create a copy of ContentChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentChunkImplCopyWith<_$ContentChunkImpl> get copyWith =>
      __$$ContentChunkImplCopyWithImpl<_$ContentChunkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentChunkImplToJson(
      this,
    );
  }
}

abstract class _ContentChunk extends ContentChunk {
  const factory _ContentChunk(
      {final ChunkTypes type, required final String text}) = _$ContentChunkImpl;
  const _ContentChunk._() : super._();

  factory _ContentChunk.fromJson(Map<String, dynamic> json) =
      _$ContentChunkImpl.fromJson;

  ///
  @override
  ChunkTypes get type;

  /// No Description
  @override
  String get text;

  /// Create a copy of ContentChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentChunkImplCopyWith<_$ContentChunkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FIMCompletionRequest _$FIMCompletionRequestFromJson(Map<String, dynamic> json) {
  return _FIMCompletionRequest.fromJson(json);
}

/// @nodoc
mixin _$FIMCompletionRequest {
  /// ID of the model to use. Only compatible for now with:
  ///   - `codestral-2405`
  ///   - `codestral-latest`
  String? get model => throw _privateConstructorUsedError;

  /// What sampling temperature to use, between 0.0 and 1.0. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or `top_p` but not both.
  double get temperature => throw _privateConstructorUsedError;

  /// Nucleus sampling, where the model considers the results of the tokens with `top_p` probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered. We generally recommend altering this or `temperature` but not both.
  @JsonKey(name: 'top_p')
  double get topP => throw _privateConstructorUsedError;

  /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
  @JsonKey(name: 'max_tokens', includeIfNull: false)
  int? get maxTokens => throw _privateConstructorUsedError;

  /// The minimum number of tokens to generate in the completion.
  @JsonKey(name: 'min_tokens', includeIfNull: false)
  int? get minTokens => throw _privateConstructorUsedError;

  /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
  bool get stream => throw _privateConstructorUsedError;

  /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
  @_FIMCompletionRequestStopConverter()
  @JsonKey(includeIfNull: false)
  FIMCompletionRequestStop? get stop => throw _privateConstructorUsedError;

  /// The seed to use for random sampling. If set, different calls will generate deterministic results.
  @JsonKey(name: 'random_seed', includeIfNull: false)
  int? get randomSeed => throw _privateConstructorUsedError;

  /// The text/code to complete.
  String get prompt => throw _privateConstructorUsedError;

  /// Optional text/code that adds more context for the model. When given a `prompt` and a `suffix` the model will fill what is between them. When `suffix` is not provided, the model will simply execute completion starting with `prompt`.
  @JsonKey(includeIfNull: false)
  String? get suffix => throw _privateConstructorUsedError;

  /// Serializes this FIMCompletionRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FIMCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FIMCompletionRequestCopyWith<FIMCompletionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FIMCompletionRequestCopyWith<$Res> {
  factory $FIMCompletionRequestCopyWith(FIMCompletionRequest value,
          $Res Function(FIMCompletionRequest) then) =
      _$FIMCompletionRequestCopyWithImpl<$Res, FIMCompletionRequest>;
  @useResult
  $Res call(
      {String? model,
      double temperature,
      @JsonKey(name: 'top_p') double topP,
      @JsonKey(name: 'max_tokens', includeIfNull: false) int? maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) int? minTokens,
      bool stream,
      @_FIMCompletionRequestStopConverter()
      @JsonKey(includeIfNull: false)
      FIMCompletionRequestStop? stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) int? randomSeed,
      String prompt,
      @JsonKey(includeIfNull: false) String? suffix});

  $FIMCompletionRequestStopCopyWith<$Res>? get stop;
}

/// @nodoc
class _$FIMCompletionRequestCopyWithImpl<$Res,
        $Val extends FIMCompletionRequest>
    implements $FIMCompletionRequestCopyWith<$Res> {
  _$FIMCompletionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FIMCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? temperature = null,
    Object? topP = null,
    Object? maxTokens = freezed,
    Object? minTokens = freezed,
    Object? stream = null,
    Object? stop = freezed,
    Object? randomSeed = freezed,
    Object? prompt = null,
    Object? suffix = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      topP: null == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      minTokens: freezed == minTokens
          ? _value.minTokens
          : minTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool,
      stop: freezed == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as FIMCompletionRequestStop?,
      randomSeed: freezed == randomSeed
          ? _value.randomSeed
          : randomSeed // ignore: cast_nullable_to_non_nullable
              as int?,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of FIMCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FIMCompletionRequestStopCopyWith<$Res>? get stop {
    if (_value.stop == null) {
      return null;
    }

    return $FIMCompletionRequestStopCopyWith<$Res>(_value.stop!, (value) {
      return _then(_value.copyWith(stop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FIMCompletionRequestImplCopyWith<$Res>
    implements $FIMCompletionRequestCopyWith<$Res> {
  factory _$$FIMCompletionRequestImplCopyWith(_$FIMCompletionRequestImpl value,
          $Res Function(_$FIMCompletionRequestImpl) then) =
      __$$FIMCompletionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? model,
      double temperature,
      @JsonKey(name: 'top_p') double topP,
      @JsonKey(name: 'max_tokens', includeIfNull: false) int? maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) int? minTokens,
      bool stream,
      @_FIMCompletionRequestStopConverter()
      @JsonKey(includeIfNull: false)
      FIMCompletionRequestStop? stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) int? randomSeed,
      String prompt,
      @JsonKey(includeIfNull: false) String? suffix});

  @override
  $FIMCompletionRequestStopCopyWith<$Res>? get stop;
}

/// @nodoc
class __$$FIMCompletionRequestImplCopyWithImpl<$Res>
    extends _$FIMCompletionRequestCopyWithImpl<$Res, _$FIMCompletionRequestImpl>
    implements _$$FIMCompletionRequestImplCopyWith<$Res> {
  __$$FIMCompletionRequestImplCopyWithImpl(_$FIMCompletionRequestImpl _value,
      $Res Function(_$FIMCompletionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of FIMCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? temperature = null,
    Object? topP = null,
    Object? maxTokens = freezed,
    Object? minTokens = freezed,
    Object? stream = null,
    Object? stop = freezed,
    Object? randomSeed = freezed,
    Object? prompt = null,
    Object? suffix = freezed,
  }) {
    return _then(_$FIMCompletionRequestImpl(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      topP: null == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      minTokens: freezed == minTokens
          ? _value.minTokens
          : minTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool,
      stop: freezed == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as FIMCompletionRequestStop?,
      randomSeed: freezed == randomSeed
          ? _value.randomSeed
          : randomSeed // ignore: cast_nullable_to_non_nullable
              as int?,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FIMCompletionRequestImpl extends _FIMCompletionRequest {
  const _$FIMCompletionRequestImpl(
      {required this.model,
      this.temperature = 0.7,
      @JsonKey(name: 'top_p') this.topP = 1.0,
      @JsonKey(name: 'max_tokens', includeIfNull: false) this.maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) this.minTokens,
      this.stream = false,
      @_FIMCompletionRequestStopConverter()
      @JsonKey(includeIfNull: false)
      this.stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) this.randomSeed,
      required this.prompt,
      @JsonKey(includeIfNull: false) this.suffix = ''})
      : super._();

  factory _$FIMCompletionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FIMCompletionRequestImplFromJson(json);

  /// ID of the model to use. Only compatible for now with:
  ///   - `codestral-2405`
  ///   - `codestral-latest`
  @override
  final String? model;

  /// What sampling temperature to use, between 0.0 and 1.0. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or `top_p` but not both.
  @override
  @JsonKey()
  final double temperature;

  /// Nucleus sampling, where the model considers the results of the tokens with `top_p` probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered. We generally recommend altering this or `temperature` but not both.
  @override
  @JsonKey(name: 'top_p')
  final double topP;

  /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
  @override
  @JsonKey(name: 'max_tokens', includeIfNull: false)
  final int? maxTokens;

  /// The minimum number of tokens to generate in the completion.
  @override
  @JsonKey(name: 'min_tokens', includeIfNull: false)
  final int? minTokens;

  /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
  @override
  @JsonKey()
  final bool stream;

  /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
  @override
  @_FIMCompletionRequestStopConverter()
  @JsonKey(includeIfNull: false)
  final FIMCompletionRequestStop? stop;

  /// The seed to use for random sampling. If set, different calls will generate deterministic results.
  @override
  @JsonKey(name: 'random_seed', includeIfNull: false)
  final int? randomSeed;

  /// The text/code to complete.
  @override
  final String prompt;

  /// Optional text/code that adds more context for the model. When given a `prompt` and a `suffix` the model will fill what is between them. When `suffix` is not provided, the model will simply execute completion starting with `prompt`.
  @override
  @JsonKey(includeIfNull: false)
  final String? suffix;

  @override
  String toString() {
    return 'FIMCompletionRequest(model: $model, temperature: $temperature, topP: $topP, maxTokens: $maxTokens, minTokens: $minTokens, stream: $stream, stop: $stop, randomSeed: $randomSeed, prompt: $prompt, suffix: $suffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FIMCompletionRequestImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.minTokens, minTokens) ||
                other.minTokens == minTokens) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.stop, stop) || other.stop == stop) &&
            (identical(other.randomSeed, randomSeed) ||
                other.randomSeed == randomSeed) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.suffix, suffix) || other.suffix == suffix));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model, temperature, topP,
      maxTokens, minTokens, stream, stop, randomSeed, prompt, suffix);

  /// Create a copy of FIMCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FIMCompletionRequestImplCopyWith<_$FIMCompletionRequestImpl>
      get copyWith =>
          __$$FIMCompletionRequestImplCopyWithImpl<_$FIMCompletionRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FIMCompletionRequestImplToJson(
      this,
    );
  }
}

abstract class _FIMCompletionRequest extends FIMCompletionRequest {
  const factory _FIMCompletionRequest(
      {required final String? model,
      final double temperature,
      @JsonKey(name: 'top_p') final double topP,
      @JsonKey(name: 'max_tokens', includeIfNull: false) final int? maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) final int? minTokens,
      final bool stream,
      @_FIMCompletionRequestStopConverter()
      @JsonKey(includeIfNull: false)
      final FIMCompletionRequestStop? stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) final int? randomSeed,
      required final String prompt,
      @JsonKey(includeIfNull: false)
      final String? suffix}) = _$FIMCompletionRequestImpl;
  const _FIMCompletionRequest._() : super._();

  factory _FIMCompletionRequest.fromJson(Map<String, dynamic> json) =
      _$FIMCompletionRequestImpl.fromJson;

  /// ID of the model to use. Only compatible for now with:
  ///   - `codestral-2405`
  ///   - `codestral-latest`
  @override
  String? get model;

  /// What sampling temperature to use, between 0.0 and 1.0. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or `top_p` but not both.
  @override
  double get temperature;

  /// Nucleus sampling, where the model considers the results of the tokens with `top_p` probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered. We generally recommend altering this or `temperature` but not both.
  @override
  @JsonKey(name: 'top_p')
  double get topP;

  /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
  @override
  @JsonKey(name: 'max_tokens', includeIfNull: false)
  int? get maxTokens;

  /// The minimum number of tokens to generate in the completion.
  @override
  @JsonKey(name: 'min_tokens', includeIfNull: false)
  int? get minTokens;

  /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
  @override
  bool get stream;

  /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
  @override
  @_FIMCompletionRequestStopConverter()
  @JsonKey(includeIfNull: false)
  FIMCompletionRequestStop? get stop;

  /// The seed to use for random sampling. If set, different calls will generate deterministic results.
  @override
  @JsonKey(name: 'random_seed', includeIfNull: false)
  int? get randomSeed;

  /// The text/code to complete.
  @override
  String get prompt;

  /// Optional text/code that adds more context for the model. When given a `prompt` and a `suffix` the model will fill what is between them. When `suffix` is not provided, the model will simply execute completion starting with `prompt`.
  @override
  @JsonKey(includeIfNull: false)
  String? get suffix;

  /// Create a copy of FIMCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FIMCompletionRequestImplCopyWith<_$FIMCompletionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FIMCompletionRequestStop _$FIMCompletionRequestStopFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'arrayString':
      return _UnionFIMCompletionRequestStopArrayString.fromJson(json);
    case 'string':
      return _UnionFIMCompletionRequestStopString.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'FIMCompletionRequestStop',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FIMCompletionRequestStop {
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionFIMCompletionRequestStopArrayString value)
        arrayString,
    required TResult Function(_UnionFIMCompletionRequestStopString value)
        string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionFIMCompletionRequestStopArrayString value)?
        arrayString,
    TResult? Function(_UnionFIMCompletionRequestStopString value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionFIMCompletionRequestStopArrayString value)?
        arrayString,
    TResult Function(_UnionFIMCompletionRequestStopString value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this FIMCompletionRequestStop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FIMCompletionRequestStopCopyWith<$Res> {
  factory $FIMCompletionRequestStopCopyWith(FIMCompletionRequestStop value,
          $Res Function(FIMCompletionRequestStop) then) =
      _$FIMCompletionRequestStopCopyWithImpl<$Res, FIMCompletionRequestStop>;
}

/// @nodoc
class _$FIMCompletionRequestStopCopyWithImpl<$Res,
        $Val extends FIMCompletionRequestStop>
    implements $FIMCompletionRequestStopCopyWith<$Res> {
  _$FIMCompletionRequestStopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FIMCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnionFIMCompletionRequestStopArrayStringImplCopyWith<$Res> {
  factory _$$UnionFIMCompletionRequestStopArrayStringImplCopyWith(
          _$UnionFIMCompletionRequestStopArrayStringImpl value,
          $Res Function(_$UnionFIMCompletionRequestStopArrayStringImpl) then) =
      __$$UnionFIMCompletionRequestStopArrayStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> value});
}

/// @nodoc
class __$$UnionFIMCompletionRequestStopArrayStringImplCopyWithImpl<$Res>
    extends _$FIMCompletionRequestStopCopyWithImpl<$Res,
        _$UnionFIMCompletionRequestStopArrayStringImpl>
    implements _$$UnionFIMCompletionRequestStopArrayStringImplCopyWith<$Res> {
  __$$UnionFIMCompletionRequestStopArrayStringImplCopyWithImpl(
      _$UnionFIMCompletionRequestStopArrayStringImpl _value,
      $Res Function(_$UnionFIMCompletionRequestStopArrayStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of FIMCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionFIMCompletionRequestStopArrayStringImpl(
      null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionFIMCompletionRequestStopArrayStringImpl
    extends _UnionFIMCompletionRequestStopArrayString {
  const _$UnionFIMCompletionRequestStopArrayStringImpl(final List<String> value,
      {final String? $type})
      : _value = value,
        $type = $type ?? 'arrayString',
        super._();

  factory _$UnionFIMCompletionRequestStopArrayStringImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionFIMCompletionRequestStopArrayStringImplFromJson(json);

  final List<String> _value;
  @override
  List<String> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FIMCompletionRequestStop.arrayString(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionFIMCompletionRequestStopArrayStringImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of FIMCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionFIMCompletionRequestStopArrayStringImplCopyWith<
          _$UnionFIMCompletionRequestStopArrayStringImpl>
      get copyWith =>
          __$$UnionFIMCompletionRequestStopArrayStringImplCopyWithImpl<
              _$UnionFIMCompletionRequestStopArrayStringImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) {
    return arrayString(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) {
    return arrayString?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (arrayString != null) {
      return arrayString(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionFIMCompletionRequestStopArrayString value)
        arrayString,
    required TResult Function(_UnionFIMCompletionRequestStopString value)
        string,
  }) {
    return arrayString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionFIMCompletionRequestStopArrayString value)?
        arrayString,
    TResult? Function(_UnionFIMCompletionRequestStopString value)? string,
  }) {
    return arrayString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionFIMCompletionRequestStopArrayString value)?
        arrayString,
    TResult Function(_UnionFIMCompletionRequestStopString value)? string,
    required TResult orElse(),
  }) {
    if (arrayString != null) {
      return arrayString(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionFIMCompletionRequestStopArrayStringImplToJson(
      this,
    );
  }
}

abstract class _UnionFIMCompletionRequestStopArrayString
    extends FIMCompletionRequestStop {
  const factory _UnionFIMCompletionRequestStopArrayString(
          final List<String> value) =
      _$UnionFIMCompletionRequestStopArrayStringImpl;
  const _UnionFIMCompletionRequestStopArrayString._() : super._();

  factory _UnionFIMCompletionRequestStopArrayString.fromJson(
          Map<String, dynamic> json) =
      _$UnionFIMCompletionRequestStopArrayStringImpl.fromJson;

  @override
  List<String> get value;

  /// Create a copy of FIMCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionFIMCompletionRequestStopArrayStringImplCopyWith<
          _$UnionFIMCompletionRequestStopArrayStringImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionFIMCompletionRequestStopStringImplCopyWith<$Res> {
  factory _$$UnionFIMCompletionRequestStopStringImplCopyWith(
          _$UnionFIMCompletionRequestStopStringImpl value,
          $Res Function(_$UnionFIMCompletionRequestStopStringImpl) then) =
      __$$UnionFIMCompletionRequestStopStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UnionFIMCompletionRequestStopStringImplCopyWithImpl<$Res>
    extends _$FIMCompletionRequestStopCopyWithImpl<$Res,
        _$UnionFIMCompletionRequestStopStringImpl>
    implements _$$UnionFIMCompletionRequestStopStringImplCopyWith<$Res> {
  __$$UnionFIMCompletionRequestStopStringImplCopyWithImpl(
      _$UnionFIMCompletionRequestStopStringImpl _value,
      $Res Function(_$UnionFIMCompletionRequestStopStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of FIMCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionFIMCompletionRequestStopStringImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionFIMCompletionRequestStopStringImpl
    extends _UnionFIMCompletionRequestStopString {
  const _$UnionFIMCompletionRequestStopStringImpl(this.value,
      {final String? $type})
      : $type = $type ?? 'string',
        super._();

  factory _$UnionFIMCompletionRequestStopStringImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionFIMCompletionRequestStopStringImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FIMCompletionRequestStop.string(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionFIMCompletionRequestStopStringImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of FIMCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionFIMCompletionRequestStopStringImplCopyWith<
          _$UnionFIMCompletionRequestStopStringImpl>
      get copyWith => __$$UnionFIMCompletionRequestStopStringImplCopyWithImpl<
          _$UnionFIMCompletionRequestStopStringImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) {
    return string(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) {
    return string?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionFIMCompletionRequestStopArrayString value)
        arrayString,
    required TResult Function(_UnionFIMCompletionRequestStopString value)
        string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionFIMCompletionRequestStopArrayString value)?
        arrayString,
    TResult? Function(_UnionFIMCompletionRequestStopString value)? string,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionFIMCompletionRequestStopArrayString value)?
        arrayString,
    TResult Function(_UnionFIMCompletionRequestStopString value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionFIMCompletionRequestStopStringImplToJson(
      this,
    );
  }
}

abstract class _UnionFIMCompletionRequestStopString
    extends FIMCompletionRequestStop {
  const factory _UnionFIMCompletionRequestStopString(final String value) =
      _$UnionFIMCompletionRequestStopStringImpl;
  const _UnionFIMCompletionRequestStopString._() : super._();

  factory _UnionFIMCompletionRequestStopString.fromJson(
          Map<String, dynamic> json) =
      _$UnionFIMCompletionRequestStopStringImpl.fromJson;

  @override
  String get value;

  /// Create a copy of FIMCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionFIMCompletionRequestStopStringImplCopyWith<
          _$UnionFIMCompletionRequestStopStringImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FunctionDefinition _$FunctionDefinitionFromJson(Map<String, dynamic> json) {
  return _FunctionDefinition.fromJson(json);
}

/// @nodoc
mixin _$FunctionDefinition {
  /// No Description
  String get name => throw _privateConstructorUsedError;

  /// No Description
  String get description => throw _privateConstructorUsedError;

  /// No Description
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;

  /// Serializes this FunctionDefinition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FunctionDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FunctionDefinitionCopyWith<FunctionDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionDefinitionCopyWith<$Res> {
  factory $FunctionDefinitionCopyWith(
          FunctionDefinition value, $Res Function(FunctionDefinition) then) =
      _$FunctionDefinitionCopyWithImpl<$Res, FunctionDefinition>;
  @useResult
  $Res call({String name, String description, Map<String, dynamic> parameters});
}

/// @nodoc
class _$FunctionDefinitionCopyWithImpl<$Res, $Val extends FunctionDefinition>
    implements $FunctionDefinitionCopyWith<$Res> {
  _$FunctionDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FunctionDefinition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FunctionDefinitionImplCopyWith<$Res>
    implements $FunctionDefinitionCopyWith<$Res> {
  factory _$$FunctionDefinitionImplCopyWith(_$FunctionDefinitionImpl value,
          $Res Function(_$FunctionDefinitionImpl) then) =
      __$$FunctionDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, Map<String, dynamic> parameters});
}

/// @nodoc
class __$$FunctionDefinitionImplCopyWithImpl<$Res>
    extends _$FunctionDefinitionCopyWithImpl<$Res, _$FunctionDefinitionImpl>
    implements _$$FunctionDefinitionImplCopyWith<$Res> {
  __$$FunctionDefinitionImplCopyWithImpl(_$FunctionDefinitionImpl _value,
      $Res Function(_$FunctionDefinitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of FunctionDefinition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? parameters = null,
  }) {
    return _then(_$FunctionDefinitionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FunctionDefinitionImpl extends _FunctionDefinition {
  const _$FunctionDefinitionImpl(
      {required this.name,
      this.description = '',
      required final Map<String, dynamic> parameters})
      : _parameters = parameters,
        super._();

  factory _$FunctionDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FunctionDefinitionImplFromJson(json);

  /// No Description
  @override
  final String name;

  /// No Description
  @override
  @JsonKey()
  final String description;

  /// No Description
  final Map<String, dynamic> _parameters;

  /// No Description
  @override
  Map<String, dynamic> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  String toString() {
    return 'FunctionDefinition(name: $name, description: $description, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FunctionDefinitionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(_parameters));

  /// Create a copy of FunctionDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FunctionDefinitionImplCopyWith<_$FunctionDefinitionImpl> get copyWith =>
      __$$FunctionDefinitionImplCopyWithImpl<_$FunctionDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FunctionDefinitionImplToJson(
      this,
    );
  }
}

abstract class _FunctionDefinition extends FunctionDefinition {
  const factory _FunctionDefinition(
          {required final String name,
          final String description,
          required final Map<String, dynamic> parameters}) =
      _$FunctionDefinitionImpl;
  const _FunctionDefinition._() : super._();

  factory _FunctionDefinition.fromJson(Map<String, dynamic> json) =
      _$FunctionDefinitionImpl.fromJson;

  /// No Description
  @override
  String get name;

  /// No Description
  @override
  String get description;

  /// No Description
  @override
  Map<String, dynamic> get parameters;

  /// Create a copy of FunctionDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FunctionDefinitionImplCopyWith<_$FunctionDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FunctionCall _$FunctionCallFromJson(Map<String, dynamic> json) {
  return _FunctionCall.fromJson(json);
}

/// @nodoc
mixin _$FunctionCall {
  /// No Description
  String get name => throw _privateConstructorUsedError;

  /// No Description
  @_ArgumentsConverter()
  Arguments get arguments => throw _privateConstructorUsedError;

  /// Serializes this FunctionCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FunctionCallCopyWith<FunctionCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionCallCopyWith<$Res> {
  factory $FunctionCallCopyWith(
          FunctionCall value, $Res Function(FunctionCall) then) =
      _$FunctionCallCopyWithImpl<$Res, FunctionCall>;
  @useResult
  $Res call({String name, @_ArgumentsConverter() Arguments arguments});

  $ArgumentsCopyWith<$Res> get arguments;
}

/// @nodoc
class _$FunctionCallCopyWithImpl<$Res, $Val extends FunctionCall>
    implements $FunctionCallCopyWith<$Res> {
  _$FunctionCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Arguments,
    ) as $Val);
  }

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArgumentsCopyWith<$Res> get arguments {
    return $ArgumentsCopyWith<$Res>(_value.arguments, (value) {
      return _then(_value.copyWith(arguments: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FunctionCallImplCopyWith<$Res>
    implements $FunctionCallCopyWith<$Res> {
  factory _$$FunctionCallImplCopyWith(
          _$FunctionCallImpl value, $Res Function(_$FunctionCallImpl) then) =
      __$$FunctionCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @_ArgumentsConverter() Arguments arguments});

  @override
  $ArgumentsCopyWith<$Res> get arguments;
}

/// @nodoc
class __$$FunctionCallImplCopyWithImpl<$Res>
    extends _$FunctionCallCopyWithImpl<$Res, _$FunctionCallImpl>
    implements _$$FunctionCallImplCopyWith<$Res> {
  __$$FunctionCallImplCopyWithImpl(
      _$FunctionCallImpl _value, $Res Function(_$FunctionCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_$FunctionCallImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Arguments,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FunctionCallImpl extends _FunctionCall {
  const _$FunctionCallImpl(
      {required this.name, @_ArgumentsConverter() required this.arguments})
      : super._();

  factory _$FunctionCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$FunctionCallImplFromJson(json);

  /// No Description
  @override
  final String name;

  /// No Description
  @override
  @_ArgumentsConverter()
  final Arguments arguments;

  @override
  String toString() {
    return 'FunctionCall(name: $name, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FunctionCallImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.arguments, arguments) ||
                other.arguments == arguments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, arguments);

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FunctionCallImplCopyWith<_$FunctionCallImpl> get copyWith =>
      __$$FunctionCallImplCopyWithImpl<_$FunctionCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FunctionCallImplToJson(
      this,
    );
  }
}

abstract class _FunctionCall extends FunctionCall {
  const factory _FunctionCall(
          {required final String name,
          @_ArgumentsConverter() required final Arguments arguments}) =
      _$FunctionCallImpl;
  const _FunctionCall._() : super._();

  factory _FunctionCall.fromJson(Map<String, dynamic> json) =
      _$FunctionCallImpl.fromJson;

  /// No Description
  @override
  String get name;

  /// No Description
  @override
  @_ArgumentsConverter()
  Arguments get arguments;

  /// Create a copy of FunctionCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FunctionCallImplCopyWith<_$FunctionCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Arguments _$ArgumentsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'string':
      return _UnionArgumentsString.fromJson(json);
    case 'map':
      return _UnionArgumentsMap.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Arguments',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Arguments {
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(Map<String, dynamic> value) map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(Map<String, dynamic> value)? map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(Map<String, dynamic> value)? map,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionArgumentsString value) string,
    required TResult Function(_UnionArgumentsMap value) map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionArgumentsString value)? string,
    TResult? Function(_UnionArgumentsMap value)? map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionArgumentsString value)? string,
    TResult Function(_UnionArgumentsMap value)? map,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Arguments to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArgumentsCopyWith<$Res> {
  factory $ArgumentsCopyWith(Arguments value, $Res Function(Arguments) then) =
      _$ArgumentsCopyWithImpl<$Res, Arguments>;
}

/// @nodoc
class _$ArgumentsCopyWithImpl<$Res, $Val extends Arguments>
    implements $ArgumentsCopyWith<$Res> {
  _$ArgumentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Arguments
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnionArgumentsStringImplCopyWith<$Res> {
  factory _$$UnionArgumentsStringImplCopyWith(_$UnionArgumentsStringImpl value,
          $Res Function(_$UnionArgumentsStringImpl) then) =
      __$$UnionArgumentsStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UnionArgumentsStringImplCopyWithImpl<$Res>
    extends _$ArgumentsCopyWithImpl<$Res, _$UnionArgumentsStringImpl>
    implements _$$UnionArgumentsStringImplCopyWith<$Res> {
  __$$UnionArgumentsStringImplCopyWithImpl(_$UnionArgumentsStringImpl _value,
      $Res Function(_$UnionArgumentsStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of Arguments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionArgumentsStringImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionArgumentsStringImpl extends _UnionArgumentsString {
  const _$UnionArgumentsStringImpl(this.value, {final String? $type})
      : $type = $type ?? 'string',
        super._();

  factory _$UnionArgumentsStringImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionArgumentsStringImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Arguments.string(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionArgumentsStringImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of Arguments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionArgumentsStringImplCopyWith<_$UnionArgumentsStringImpl>
      get copyWith =>
          __$$UnionArgumentsStringImplCopyWithImpl<_$UnionArgumentsStringImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(Map<String, dynamic> value) map,
  }) {
    return string(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(Map<String, dynamic> value)? map,
  }) {
    return string?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(Map<String, dynamic> value)? map,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionArgumentsString value) string,
    required TResult Function(_UnionArgumentsMap value) map,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionArgumentsString value)? string,
    TResult? Function(_UnionArgumentsMap value)? map,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionArgumentsString value)? string,
    TResult Function(_UnionArgumentsMap value)? map,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionArgumentsStringImplToJson(
      this,
    );
  }
}

abstract class _UnionArgumentsString extends Arguments {
  const factory _UnionArgumentsString(final String value) =
      _$UnionArgumentsStringImpl;
  const _UnionArgumentsString._() : super._();

  factory _UnionArgumentsString.fromJson(Map<String, dynamic> json) =
      _$UnionArgumentsStringImpl.fromJson;

  @override
  String get value;

  /// Create a copy of Arguments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionArgumentsStringImplCopyWith<_$UnionArgumentsStringImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionArgumentsMapImplCopyWith<$Res> {
  factory _$$UnionArgumentsMapImplCopyWith(_$UnionArgumentsMapImpl value,
          $Res Function(_$UnionArgumentsMapImpl) then) =
      __$$UnionArgumentsMapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> value});
}

/// @nodoc
class __$$UnionArgumentsMapImplCopyWithImpl<$Res>
    extends _$ArgumentsCopyWithImpl<$Res, _$UnionArgumentsMapImpl>
    implements _$$UnionArgumentsMapImplCopyWith<$Res> {
  __$$UnionArgumentsMapImplCopyWithImpl(_$UnionArgumentsMapImpl _value,
      $Res Function(_$UnionArgumentsMapImpl) _then)
      : super(_value, _then);

  /// Create a copy of Arguments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionArgumentsMapImpl(
      null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionArgumentsMapImpl extends _UnionArgumentsMap {
  const _$UnionArgumentsMapImpl(final Map<String, dynamic> value,
      {final String? $type})
      : _value = value,
        $type = $type ?? 'map',
        super._();

  factory _$UnionArgumentsMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionArgumentsMapImplFromJson(json);

  final Map<String, dynamic> _value;
  @override
  Map<String, dynamic> get value {
    if (_value is EqualUnmodifiableMapView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Arguments.map(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionArgumentsMapImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of Arguments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionArgumentsMapImplCopyWith<_$UnionArgumentsMapImpl> get copyWith =>
      __$$UnionArgumentsMapImplCopyWithImpl<_$UnionArgumentsMapImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(Map<String, dynamic> value) map,
  }) {
    return map(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(Map<String, dynamic> value)? map,
  }) {
    return map?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(Map<String, dynamic> value)? map,
    required TResult orElse(),
  }) {
    if (map != null) {
      return map(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionArgumentsString value) string,
    required TResult Function(_UnionArgumentsMap value) map,
  }) {
    return map(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionArgumentsString value)? string,
    TResult? Function(_UnionArgumentsMap value)? map,
  }) {
    return map?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionArgumentsString value)? string,
    TResult Function(_UnionArgumentsMap value)? map,
    required TResult orElse(),
  }) {
    if (map != null) {
      return map(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionArgumentsMapImplToJson(
      this,
    );
  }
}

abstract class _UnionArgumentsMap extends Arguments {
  const factory _UnionArgumentsMap(final Map<String, dynamic> value) =
      _$UnionArgumentsMapImpl;
  const _UnionArgumentsMap._() : super._();

  factory _UnionArgumentsMap.fromJson(Map<String, dynamic> json) =
      _$UnionArgumentsMapImpl.fromJson;

  @override
  Map<String, dynamic> get value;

  /// Create a copy of Arguments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionArgumentsMapImplCopyWith<_$UnionArgumentsMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseFormat _$ResponseFormatFromJson(Map<String, dynamic> json) {
  return _ResponseFormat.fromJson(json);
}

/// @nodoc
mixin _$ResponseFormat {
  /// An object specifying the format that the model must output. Setting to `{ "type": "json_object" }` enables JSON mode, which guarantees the message the model generates is in JSON. When using JSON mode you MUST also instruct the model to produce JSON yourself with a system or a user message.
  ResponseFormats get type => throw _privateConstructorUsedError;

  /// Serializes this ResponseFormat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseFormat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseFormatCopyWith<ResponseFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseFormatCopyWith<$Res> {
  factory $ResponseFormatCopyWith(
          ResponseFormat value, $Res Function(ResponseFormat) then) =
      _$ResponseFormatCopyWithImpl<$Res, ResponseFormat>;
  @useResult
  $Res call({ResponseFormats type});
}

/// @nodoc
class _$ResponseFormatCopyWithImpl<$Res, $Val extends ResponseFormat>
    implements $ResponseFormatCopyWith<$Res> {
  _$ResponseFormatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseFormat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResponseFormats,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseFormatImplCopyWith<$Res>
    implements $ResponseFormatCopyWith<$Res> {
  factory _$$ResponseFormatImplCopyWith(_$ResponseFormatImpl value,
          $Res Function(_$ResponseFormatImpl) then) =
      __$$ResponseFormatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponseFormats type});
}

/// @nodoc
class __$$ResponseFormatImplCopyWithImpl<$Res>
    extends _$ResponseFormatCopyWithImpl<$Res, _$ResponseFormatImpl>
    implements _$$ResponseFormatImplCopyWith<$Res> {
  __$$ResponseFormatImplCopyWithImpl(
      _$ResponseFormatImpl _value, $Res Function(_$ResponseFormatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseFormat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ResponseFormatImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResponseFormats,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseFormatImpl extends _ResponseFormat {
  const _$ResponseFormatImpl({this.type = ResponseFormats.text}) : super._();

  factory _$ResponseFormatImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseFormatImplFromJson(json);

  /// An object specifying the format that the model must output. Setting to `{ "type": "json_object" }` enables JSON mode, which guarantees the message the model generates is in JSON. When using JSON mode you MUST also instruct the model to produce JSON yourself with a system or a user message.
  @override
  @JsonKey()
  final ResponseFormats type;

  @override
  String toString() {
    return 'ResponseFormat(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseFormatImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of ResponseFormat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseFormatImplCopyWith<_$ResponseFormatImpl> get copyWith =>
      __$$ResponseFormatImplCopyWithImpl<_$ResponseFormatImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseFormatImplToJson(
      this,
    );
  }
}

abstract class _ResponseFormat extends ResponseFormat {
  const factory _ResponseFormat({final ResponseFormats type}) =
      _$ResponseFormatImpl;
  const _ResponseFormat._() : super._();

  factory _ResponseFormat.fromJson(Map<String, dynamic> json) =
      _$ResponseFormatImpl.fromJson;

  /// An object specifying the format that the model must output. Setting to `{ "type": "json_object" }` enables JSON mode, which guarantees the message the model generates is in JSON. When using JSON mode you MUST also instruct the model to produce JSON yourself with a system or a user message.
  @override
  ResponseFormats get type;

  /// Create a copy of ResponseFormat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseFormatImplCopyWith<_$ResponseFormatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SystemMessage _$SystemMessageFromJson(Map<String, dynamic> json) {
  return _SystemMessage.fromJson(json);
}

/// @nodoc
mixin _$SystemMessage {
  /// No Description
  @_ContentConverter()
  Content get content => throw _privateConstructorUsedError;

  ///
  SystemMessageRole get role => throw _privateConstructorUsedError;

  /// Serializes this SystemMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemMessageCopyWith<SystemMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemMessageCopyWith<$Res> {
  factory $SystemMessageCopyWith(
          SystemMessage value, $Res Function(SystemMessage) then) =
      _$SystemMessageCopyWithImpl<$Res, SystemMessage>;
  @useResult
  $Res call({@_ContentConverter() Content content, SystemMessageRole role});

  $ContentCopyWith<$Res> get content;
}

/// @nodoc
class _$SystemMessageCopyWithImpl<$Res, $Val extends SystemMessage>
    implements $SystemMessageCopyWith<$Res> {
  _$SystemMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as SystemMessageRole,
    ) as $Val);
  }

  /// Create a copy of SystemMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res> get content {
    return $ContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SystemMessageImplCopyWith<$Res>
    implements $SystemMessageCopyWith<$Res> {
  factory _$$SystemMessageImplCopyWith(
          _$SystemMessageImpl value, $Res Function(_$SystemMessageImpl) then) =
      __$$SystemMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@_ContentConverter() Content content, SystemMessageRole role});

  @override
  $ContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$SystemMessageImplCopyWithImpl<$Res>
    extends _$SystemMessageCopyWithImpl<$Res, _$SystemMessageImpl>
    implements _$$SystemMessageImplCopyWith<$Res> {
  __$$SystemMessageImplCopyWithImpl(
      _$SystemMessageImpl _value, $Res Function(_$SystemMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? role = null,
  }) {
    return _then(_$SystemMessageImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as SystemMessageRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemMessageImpl extends _SystemMessage {
  const _$SystemMessageImpl(
      {@_ContentConverter() required this.content,
      this.role = SystemMessageRole.system})
      : super._();

  factory _$SystemMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemMessageImplFromJson(json);

  /// No Description
  @override
  @_ContentConverter()
  final Content content;

  ///
  @override
  @JsonKey()
  final SystemMessageRole role;

  @override
  String toString() {
    return 'SystemMessage(content: $content, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemMessageImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, role);

  /// Create a copy of SystemMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemMessageImplCopyWith<_$SystemMessageImpl> get copyWith =>
      __$$SystemMessageImplCopyWithImpl<_$SystemMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemMessageImplToJson(
      this,
    );
  }
}

abstract class _SystemMessage extends SystemMessage {
  const factory _SystemMessage(
      {@_ContentConverter() required final Content content,
      final SystemMessageRole role}) = _$SystemMessageImpl;
  const _SystemMessage._() : super._();

  factory _SystemMessage.fromJson(Map<String, dynamic> json) =
      _$SystemMessageImpl.fromJson;

  /// No Description
  @override
  @_ContentConverter()
  Content get content;

  ///
  @override
  SystemMessageRole get role;

  /// Create a copy of SystemMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemMessageImplCopyWith<_$SystemMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Content _$ContentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'array':
      return _UnionContentArray.fromJson(json);
    case 'string':
      return _UnionContentString.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Content',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Content {
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ContentChunk> value) array,
    required TResult Function(String value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ContentChunk> value)? array,
    TResult? Function(String value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ContentChunk> value)? array,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionContentArray value) array,
    required TResult Function(_UnionContentString value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionContentArray value)? array,
    TResult? Function(_UnionContentString value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionContentArray value)? array,
    TResult Function(_UnionContentString value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Content to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnionContentArrayImplCopyWith<$Res> {
  factory _$$UnionContentArrayImplCopyWith(_$UnionContentArrayImpl value,
          $Res Function(_$UnionContentArrayImpl) then) =
      __$$UnionContentArrayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContentChunk> value});
}

/// @nodoc
class __$$UnionContentArrayImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$UnionContentArrayImpl>
    implements _$$UnionContentArrayImplCopyWith<$Res> {
  __$$UnionContentArrayImplCopyWithImpl(_$UnionContentArrayImpl _value,
      $Res Function(_$UnionContentArrayImpl) _then)
      : super(_value, _then);

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionContentArrayImpl(
      null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<ContentChunk>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionContentArrayImpl extends _UnionContentArray {
  const _$UnionContentArrayImpl(final List<ContentChunk> value,
      {final String? $type})
      : _value = value,
        $type = $type ?? 'array',
        super._();

  factory _$UnionContentArrayImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionContentArrayImplFromJson(json);

  final List<ContentChunk> _value;
  @override
  List<ContentChunk> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Content.array(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionContentArrayImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionContentArrayImplCopyWith<_$UnionContentArrayImpl> get copyWith =>
      __$$UnionContentArrayImplCopyWithImpl<_$UnionContentArrayImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ContentChunk> value) array,
    required TResult Function(String value) string,
  }) {
    return array(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ContentChunk> value)? array,
    TResult? Function(String value)? string,
  }) {
    return array?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ContentChunk> value)? array,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (array != null) {
      return array(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionContentArray value) array,
    required TResult Function(_UnionContentString value) string,
  }) {
    return array(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionContentArray value)? array,
    TResult? Function(_UnionContentString value)? string,
  }) {
    return array?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionContentArray value)? array,
    TResult Function(_UnionContentString value)? string,
    required TResult orElse(),
  }) {
    if (array != null) {
      return array(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionContentArrayImplToJson(
      this,
    );
  }
}

abstract class _UnionContentArray extends Content {
  const factory _UnionContentArray(final List<ContentChunk> value) =
      _$UnionContentArrayImpl;
  const _UnionContentArray._() : super._();

  factory _UnionContentArray.fromJson(Map<String, dynamic> json) =
      _$UnionContentArrayImpl.fromJson;

  @override
  List<ContentChunk> get value;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionContentArrayImplCopyWith<_$UnionContentArrayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionContentStringImplCopyWith<$Res> {
  factory _$$UnionContentStringImplCopyWith(_$UnionContentStringImpl value,
          $Res Function(_$UnionContentStringImpl) then) =
      __$$UnionContentStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UnionContentStringImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$UnionContentStringImpl>
    implements _$$UnionContentStringImplCopyWith<$Res> {
  __$$UnionContentStringImplCopyWithImpl(_$UnionContentStringImpl _value,
      $Res Function(_$UnionContentStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionContentStringImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionContentStringImpl extends _UnionContentString {
  const _$UnionContentStringImpl(this.value, {final String? $type})
      : $type = $type ?? 'string',
        super._();

  factory _$UnionContentStringImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionContentStringImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Content.string(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionContentStringImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionContentStringImplCopyWith<_$UnionContentStringImpl> get copyWith =>
      __$$UnionContentStringImplCopyWithImpl<_$UnionContentStringImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ContentChunk> value) array,
    required TResult Function(String value) string,
  }) {
    return string(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ContentChunk> value)? array,
    TResult? Function(String value)? string,
  }) {
    return string?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ContentChunk> value)? array,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionContentArray value) array,
    required TResult Function(_UnionContentString value) string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionContentArray value)? array,
    TResult? Function(_UnionContentString value)? string,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionContentArray value)? array,
    TResult Function(_UnionContentString value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionContentStringImplToJson(
      this,
    );
  }
}

abstract class _UnionContentString extends Content {
  const factory _UnionContentString(final String value) =
      _$UnionContentStringImpl;
  const _UnionContentString._() : super._();

  factory _UnionContentString.fromJson(Map<String, dynamic> json) =
      _$UnionContentStringImpl.fromJson;

  @override
  String get value;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionContentStringImplCopyWith<_$UnionContentStringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TextChunk _$TextChunkFromJson(Map<String, dynamic> json) {
  return _TextChunk.fromJson(json);
}

/// @nodoc
mixin _$TextChunk {
  ///
  TextChunkType get type => throw _privateConstructorUsedError;

  /// No Description
  String get text => throw _privateConstructorUsedError;

  /// Serializes this TextChunk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextChunkCopyWith<TextChunk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextChunkCopyWith<$Res> {
  factory $TextChunkCopyWith(TextChunk value, $Res Function(TextChunk) then) =
      _$TextChunkCopyWithImpl<$Res, TextChunk>;
  @useResult
  $Res call({TextChunkType type, String text});
}

/// @nodoc
class _$TextChunkCopyWithImpl<$Res, $Val extends TextChunk>
    implements $TextChunkCopyWith<$Res> {
  _$TextChunkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TextChunkType,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextChunkImplCopyWith<$Res>
    implements $TextChunkCopyWith<$Res> {
  factory _$$TextChunkImplCopyWith(
          _$TextChunkImpl value, $Res Function(_$TextChunkImpl) then) =
      __$$TextChunkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextChunkType type, String text});
}

/// @nodoc
class __$$TextChunkImplCopyWithImpl<$Res>
    extends _$TextChunkCopyWithImpl<$Res, _$TextChunkImpl>
    implements _$$TextChunkImplCopyWith<$Res> {
  __$$TextChunkImplCopyWithImpl(
      _$TextChunkImpl _value, $Res Function(_$TextChunkImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_$TextChunkImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TextChunkType,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextChunkImpl extends _TextChunk {
  const _$TextChunkImpl({this.type = TextChunkType.text, required this.text})
      : super._();

  factory _$TextChunkImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextChunkImplFromJson(json);

  ///
  @override
  @JsonKey()
  final TextChunkType type;

  /// No Description
  @override
  final String text;

  @override
  String toString() {
    return 'TextChunk(type: $type, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextChunkImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, text);

  /// Create a copy of TextChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextChunkImplCopyWith<_$TextChunkImpl> get copyWith =>
      __$$TextChunkImplCopyWithImpl<_$TextChunkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextChunkImplToJson(
      this,
    );
  }
}

abstract class _TextChunk extends TextChunk {
  const factory _TextChunk(
      {final TextChunkType type, required final String text}) = _$TextChunkImpl;
  const _TextChunk._() : super._();

  factory _TextChunk.fromJson(Map<String, dynamic> json) =
      _$TextChunkImpl.fromJson;

  ///
  @override
  TextChunkType get type;

  /// No Description
  @override
  String get text;

  /// Create a copy of TextChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextChunkImplCopyWith<_$TextChunkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tool _$ToolFromJson(Map<String, dynamic> json) {
  return _Tool.fromJson(json);
}

/// @nodoc
mixin _$Tool {
  ///
  ToolTypes get type => throw _privateConstructorUsedError;

  /// No Description
  FunctionDefinition get function => throw _privateConstructorUsedError;

  /// Serializes this Tool to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToolCopyWith<Tool> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolCopyWith<$Res> {
  factory $ToolCopyWith(Tool value, $Res Function(Tool) then) =
      _$ToolCopyWithImpl<$Res, Tool>;
  @useResult
  $Res call({ToolTypes type, FunctionDefinition function});

  $FunctionDefinitionCopyWith<$Res> get function;
}

/// @nodoc
class _$ToolCopyWithImpl<$Res, $Val extends Tool>
    implements $ToolCopyWith<$Res> {
  _$ToolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? function = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ToolTypes,
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as FunctionDefinition,
    ) as $Val);
  }

  /// Create a copy of Tool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FunctionDefinitionCopyWith<$Res> get function {
    return $FunctionDefinitionCopyWith<$Res>(_value.function, (value) {
      return _then(_value.copyWith(function: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToolImplCopyWith<$Res> implements $ToolCopyWith<$Res> {
  factory _$$ToolImplCopyWith(
          _$ToolImpl value, $Res Function(_$ToolImpl) then) =
      __$$ToolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ToolTypes type, FunctionDefinition function});

  @override
  $FunctionDefinitionCopyWith<$Res> get function;
}

/// @nodoc
class __$$ToolImplCopyWithImpl<$Res>
    extends _$ToolCopyWithImpl<$Res, _$ToolImpl>
    implements _$$ToolImplCopyWith<$Res> {
  __$$ToolImplCopyWithImpl(_$ToolImpl _value, $Res Function(_$ToolImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? function = null,
  }) {
    return _then(_$ToolImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ToolTypes,
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as FunctionDefinition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToolImpl extends _Tool {
  const _$ToolImpl({this.type = ToolTypes.function, required this.function})
      : super._();

  factory _$ToolImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToolImplFromJson(json);

  ///
  @override
  @JsonKey()
  final ToolTypes type;

  /// No Description
  @override
  final FunctionDefinition function;

  @override
  String toString() {
    return 'Tool(type: $type, function: $function)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToolImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.function, function) ||
                other.function == function));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, function);

  /// Create a copy of Tool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToolImplCopyWith<_$ToolImpl> get copyWith =>
      __$$ToolImplCopyWithImpl<_$ToolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToolImplToJson(
      this,
    );
  }
}

abstract class _Tool extends Tool {
  const factory _Tool(
      {final ToolTypes type,
      required final FunctionDefinition function}) = _$ToolImpl;
  const _Tool._() : super._();

  factory _Tool.fromJson(Map<String, dynamic> json) = _$ToolImpl.fromJson;

  ///
  @override
  ToolTypes get type;

  /// No Description
  @override
  FunctionDefinition get function;

  /// Create a copy of Tool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToolImplCopyWith<_$ToolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ToolCall _$ToolCallFromJson(Map<String, dynamic> json) {
  return _ToolCall.fromJson(json);
}

/// @nodoc
mixin _$ToolCall {
  /// No Description
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;

  ///
  ToolTypes get type => throw _privateConstructorUsedError;

  /// No Description
  FunctionCall get function => throw _privateConstructorUsedError;

  /// Serializes this ToolCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToolCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToolCallCopyWith<ToolCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolCallCopyWith<$Res> {
  factory $ToolCallCopyWith(ToolCall value, $Res Function(ToolCall) then) =
      _$ToolCallCopyWithImpl<$Res, ToolCall>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      ToolTypes type,
      FunctionCall function});

  $FunctionCallCopyWith<$Res> get function;
}

/// @nodoc
class _$ToolCallCopyWithImpl<$Res, $Val extends ToolCall>
    implements $ToolCallCopyWith<$Res> {
  _$ToolCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToolCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = null,
    Object? function = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ToolTypes,
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as FunctionCall,
    ) as $Val);
  }

  /// Create a copy of ToolCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FunctionCallCopyWith<$Res> get function {
    return $FunctionCallCopyWith<$Res>(_value.function, (value) {
      return _then(_value.copyWith(function: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToolCallImplCopyWith<$Res>
    implements $ToolCallCopyWith<$Res> {
  factory _$$ToolCallImplCopyWith(
          _$ToolCallImpl value, $Res Function(_$ToolCallImpl) then) =
      __$$ToolCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      ToolTypes type,
      FunctionCall function});

  @override
  $FunctionCallCopyWith<$Res> get function;
}

/// @nodoc
class __$$ToolCallImplCopyWithImpl<$Res>
    extends _$ToolCallCopyWithImpl<$Res, _$ToolCallImpl>
    implements _$$ToolCallImplCopyWith<$Res> {
  __$$ToolCallImplCopyWithImpl(
      _$ToolCallImpl _value, $Res Function(_$ToolCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToolCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = null,
    Object? function = null,
  }) {
    return _then(_$ToolCallImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ToolTypes,
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as FunctionCall,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToolCallImpl extends _ToolCall {
  const _$ToolCallImpl(
      {@JsonKey(includeIfNull: false) this.id,
      this.type = ToolTypes.function,
      required this.function})
      : super._();

  factory _$ToolCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToolCallImplFromJson(json);

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? id;

  ///
  @override
  @JsonKey()
  final ToolTypes type;

  /// No Description
  @override
  final FunctionCall function;

  @override
  String toString() {
    return 'ToolCall(id: $id, type: $type, function: $function)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToolCallImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.function, function) ||
                other.function == function));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, function);

  /// Create a copy of ToolCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToolCallImplCopyWith<_$ToolCallImpl> get copyWith =>
      __$$ToolCallImplCopyWithImpl<_$ToolCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToolCallImplToJson(
      this,
    );
  }
}

abstract class _ToolCall extends ToolCall {
  const factory _ToolCall(
      {@JsonKey(includeIfNull: false) final String? id,
      final ToolTypes type,
      required final FunctionCall function}) = _$ToolCallImpl;
  const _ToolCall._() : super._();

  factory _ToolCall.fromJson(Map<String, dynamic> json) =
      _$ToolCallImpl.fromJson;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get id;

  ///
  @override
  ToolTypes get type;

  /// No Description
  @override
  FunctionCall get function;

  /// Create a copy of ToolCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToolCallImplCopyWith<_$ToolCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ToolMessage _$ToolMessageFromJson(Map<String, dynamic> json) {
  return _ToolMessage.fromJson(json);
}

/// @nodoc
mixin _$ToolMessage {
  /// No Description
  String get content => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'tool_call_id', includeIfNull: false)
  String? get toolCallId => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;

  ///
  ToolMessageRole get role => throw _privateConstructorUsedError;

  /// Serializes this ToolMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToolMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToolMessageCopyWith<ToolMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolMessageCopyWith<$Res> {
  factory $ToolMessageCopyWith(
          ToolMessage value, $Res Function(ToolMessage) then) =
      _$ToolMessageCopyWithImpl<$Res, ToolMessage>;
  @useResult
  $Res call(
      {String content,
      @JsonKey(name: 'tool_call_id', includeIfNull: false) String? toolCallId,
      @JsonKey(includeIfNull: false) String? name,
      ToolMessageRole role});
}

/// @nodoc
class _$ToolMessageCopyWithImpl<$Res, $Val extends ToolMessage>
    implements $ToolMessageCopyWith<$Res> {
  _$ToolMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToolMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? toolCallId = freezed,
    Object? name = freezed,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      toolCallId: freezed == toolCallId
          ? _value.toolCallId
          : toolCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ToolMessageRole,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToolMessageImplCopyWith<$Res>
    implements $ToolMessageCopyWith<$Res> {
  factory _$$ToolMessageImplCopyWith(
          _$ToolMessageImpl value, $Res Function(_$ToolMessageImpl) then) =
      __$$ToolMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      @JsonKey(name: 'tool_call_id', includeIfNull: false) String? toolCallId,
      @JsonKey(includeIfNull: false) String? name,
      ToolMessageRole role});
}

/// @nodoc
class __$$ToolMessageImplCopyWithImpl<$Res>
    extends _$ToolMessageCopyWithImpl<$Res, _$ToolMessageImpl>
    implements _$$ToolMessageImplCopyWith<$Res> {
  __$$ToolMessageImplCopyWithImpl(
      _$ToolMessageImpl _value, $Res Function(_$ToolMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToolMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? toolCallId = freezed,
    Object? name = freezed,
    Object? role = null,
  }) {
    return _then(_$ToolMessageImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      toolCallId: freezed == toolCallId
          ? _value.toolCallId
          : toolCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ToolMessageRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToolMessageImpl extends _ToolMessage {
  const _$ToolMessageImpl(
      {required this.content,
      @JsonKey(name: 'tool_call_id', includeIfNull: false) this.toolCallId,
      @JsonKey(includeIfNull: false) this.name,
      this.role = ToolMessageRole.tool})
      : super._();

  factory _$ToolMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToolMessageImplFromJson(json);

  /// No Description
  @override
  final String content;

  /// No Description
  @override
  @JsonKey(name: 'tool_call_id', includeIfNull: false)
  final String? toolCallId;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? name;

  ///
  @override
  @JsonKey()
  final ToolMessageRole role;

  @override
  String toString() {
    return 'ToolMessage(content: $content, toolCallId: $toolCallId, name: $name, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToolMessageImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.toolCallId, toolCallId) ||
                other.toolCallId == toolCallId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, toolCallId, name, role);

  /// Create a copy of ToolMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToolMessageImplCopyWith<_$ToolMessageImpl> get copyWith =>
      __$$ToolMessageImplCopyWithImpl<_$ToolMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToolMessageImplToJson(
      this,
    );
  }
}

abstract class _ToolMessage extends ToolMessage {
  const factory _ToolMessage(
      {required final String content,
      @JsonKey(name: 'tool_call_id', includeIfNull: false)
      final String? toolCallId,
      @JsonKey(includeIfNull: false) final String? name,
      final ToolMessageRole role}) = _$ToolMessageImpl;
  const _ToolMessage._() : super._();

  factory _ToolMessage.fromJson(Map<String, dynamic> json) =
      _$ToolMessageImpl.fromJson;

  /// No Description
  @override
  String get content;

  /// No Description
  @override
  @JsonKey(name: 'tool_call_id', includeIfNull: false)
  String? get toolCallId;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get name;

  ///
  @override
  ToolMessageRole get role;

  /// Create a copy of ToolMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToolMessageImplCopyWith<_$ToolMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserMessage _$UserMessageFromJson(Map<String, dynamic> json) {
  return _UserMessage.fromJson(json);
}

/// @nodoc
mixin _$UserMessage {
  /// No Description
  @_UserMessageContentConverter()
  UserMessageContent get content => throw _privateConstructorUsedError;

  ///
  UserMessageRole get role => throw _privateConstructorUsedError;

  /// Serializes this UserMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserMessageCopyWith<UserMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMessageCopyWith<$Res> {
  factory $UserMessageCopyWith(
          UserMessage value, $Res Function(UserMessage) then) =
      _$UserMessageCopyWithImpl<$Res, UserMessage>;
  @useResult
  $Res call(
      {@_UserMessageContentConverter() UserMessageContent content,
      UserMessageRole role});

  $UserMessageContentCopyWith<$Res> get content;
}

/// @nodoc
class _$UserMessageCopyWithImpl<$Res, $Val extends UserMessage>
    implements $UserMessageCopyWith<$Res> {
  _$UserMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as UserMessageContent,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserMessageRole,
    ) as $Val);
  }

  /// Create a copy of UserMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserMessageContentCopyWith<$Res> get content {
    return $UserMessageContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserMessageImplCopyWith<$Res>
    implements $UserMessageCopyWith<$Res> {
  factory _$$UserMessageImplCopyWith(
          _$UserMessageImpl value, $Res Function(_$UserMessageImpl) then) =
      __$$UserMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@_UserMessageContentConverter() UserMessageContent content,
      UserMessageRole role});

  @override
  $UserMessageContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$UserMessageImplCopyWithImpl<$Res>
    extends _$UserMessageCopyWithImpl<$Res, _$UserMessageImpl>
    implements _$$UserMessageImplCopyWith<$Res> {
  __$$UserMessageImplCopyWithImpl(
      _$UserMessageImpl _value, $Res Function(_$UserMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? role = null,
  }) {
    return _then(_$UserMessageImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as UserMessageContent,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserMessageRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserMessageImpl extends _UserMessage {
  const _$UserMessageImpl(
      {@_UserMessageContentConverter() required this.content,
      this.role = UserMessageRole.user})
      : super._();

  factory _$UserMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserMessageImplFromJson(json);

  /// No Description
  @override
  @_UserMessageContentConverter()
  final UserMessageContent content;

  ///
  @override
  @JsonKey()
  final UserMessageRole role;

  @override
  String toString() {
    return 'UserMessage(content: $content, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMessageImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, role);

  /// Create a copy of UserMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMessageImplCopyWith<_$UserMessageImpl> get copyWith =>
      __$$UserMessageImplCopyWithImpl<_$UserMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMessageImplToJson(
      this,
    );
  }
}

abstract class _UserMessage extends UserMessage {
  const factory _UserMessage(
      {@_UserMessageContentConverter()
      required final UserMessageContent content,
      final UserMessageRole role}) = _$UserMessageImpl;
  const _UserMessage._() : super._();

  factory _UserMessage.fromJson(Map<String, dynamic> json) =
      _$UserMessageImpl.fromJson;

  /// No Description
  @override
  @_UserMessageContentConverter()
  UserMessageContent get content;

  ///
  @override
  UserMessageRole get role;

  /// Create a copy of UserMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserMessageImplCopyWith<_$UserMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserMessageContent _$UserMessageContentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'array':
      return _UnionUserMessageContentArray.fromJson(json);
    case 'string':
      return _UnionUserMessageContentString.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserMessageContent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserMessageContent {
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextChunk> value) array,
    required TResult Function(String value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextChunk> value)? array,
    TResult? Function(String value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextChunk> value)? array,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionUserMessageContentArray value) array,
    required TResult Function(_UnionUserMessageContentString value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionUserMessageContentArray value)? array,
    TResult? Function(_UnionUserMessageContentString value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionUserMessageContentArray value)? array,
    TResult Function(_UnionUserMessageContentString value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UserMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMessageContentCopyWith<$Res> {
  factory $UserMessageContentCopyWith(
          UserMessageContent value, $Res Function(UserMessageContent) then) =
      _$UserMessageContentCopyWithImpl<$Res, UserMessageContent>;
}

/// @nodoc
class _$UserMessageContentCopyWithImpl<$Res, $Val extends UserMessageContent>
    implements $UserMessageContentCopyWith<$Res> {
  _$UserMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMessageContent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnionUserMessageContentArrayImplCopyWith<$Res> {
  factory _$$UnionUserMessageContentArrayImplCopyWith(
          _$UnionUserMessageContentArrayImpl value,
          $Res Function(_$UnionUserMessageContentArrayImpl) then) =
      __$$UnionUserMessageContentArrayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TextChunk> value});
}

/// @nodoc
class __$$UnionUserMessageContentArrayImplCopyWithImpl<$Res>
    extends _$UserMessageContentCopyWithImpl<$Res,
        _$UnionUserMessageContentArrayImpl>
    implements _$$UnionUserMessageContentArrayImplCopyWith<$Res> {
  __$$UnionUserMessageContentArrayImplCopyWithImpl(
      _$UnionUserMessageContentArrayImpl _value,
      $Res Function(_$UnionUserMessageContentArrayImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionUserMessageContentArrayImpl(
      null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<TextChunk>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionUserMessageContentArrayImpl extends _UnionUserMessageContentArray {
  const _$UnionUserMessageContentArrayImpl(final List<TextChunk> value,
      {final String? $type})
      : _value = value,
        $type = $type ?? 'array',
        super._();

  factory _$UnionUserMessageContentArrayImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionUserMessageContentArrayImplFromJson(json);

  final List<TextChunk> _value;
  @override
  List<TextChunk> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserMessageContent.array(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionUserMessageContentArrayImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of UserMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionUserMessageContentArrayImplCopyWith<
          _$UnionUserMessageContentArrayImpl>
      get copyWith => __$$UnionUserMessageContentArrayImplCopyWithImpl<
          _$UnionUserMessageContentArrayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextChunk> value) array,
    required TResult Function(String value) string,
  }) {
    return array(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextChunk> value)? array,
    TResult? Function(String value)? string,
  }) {
    return array?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextChunk> value)? array,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (array != null) {
      return array(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionUserMessageContentArray value) array,
    required TResult Function(_UnionUserMessageContentString value) string,
  }) {
    return array(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionUserMessageContentArray value)? array,
    TResult? Function(_UnionUserMessageContentString value)? string,
  }) {
    return array?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionUserMessageContentArray value)? array,
    TResult Function(_UnionUserMessageContentString value)? string,
    required TResult orElse(),
  }) {
    if (array != null) {
      return array(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionUserMessageContentArrayImplToJson(
      this,
    );
  }
}

abstract class _UnionUserMessageContentArray extends UserMessageContent {
  const factory _UnionUserMessageContentArray(final List<TextChunk> value) =
      _$UnionUserMessageContentArrayImpl;
  const _UnionUserMessageContentArray._() : super._();

  factory _UnionUserMessageContentArray.fromJson(Map<String, dynamic> json) =
      _$UnionUserMessageContentArrayImpl.fromJson;

  @override
  List<TextChunk> get value;

  /// Create a copy of UserMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionUserMessageContentArrayImplCopyWith<
          _$UnionUserMessageContentArrayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionUserMessageContentStringImplCopyWith<$Res> {
  factory _$$UnionUserMessageContentStringImplCopyWith(
          _$UnionUserMessageContentStringImpl value,
          $Res Function(_$UnionUserMessageContentStringImpl) then) =
      __$$UnionUserMessageContentStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UnionUserMessageContentStringImplCopyWithImpl<$Res>
    extends _$UserMessageContentCopyWithImpl<$Res,
        _$UnionUserMessageContentStringImpl>
    implements _$$UnionUserMessageContentStringImplCopyWith<$Res> {
  __$$UnionUserMessageContentStringImplCopyWithImpl(
      _$UnionUserMessageContentStringImpl _value,
      $Res Function(_$UnionUserMessageContentStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionUserMessageContentStringImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionUserMessageContentStringImpl
    extends _UnionUserMessageContentString {
  const _$UnionUserMessageContentStringImpl(this.value, {final String? $type})
      : $type = $type ?? 'string',
        super._();

  factory _$UnionUserMessageContentStringImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionUserMessageContentStringImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserMessageContent.string(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionUserMessageContentStringImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of UserMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionUserMessageContentStringImplCopyWith<
          _$UnionUserMessageContentStringImpl>
      get copyWith => __$$UnionUserMessageContentStringImplCopyWithImpl<
          _$UnionUserMessageContentStringImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextChunk> value) array,
    required TResult Function(String value) string,
  }) {
    return string(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextChunk> value)? array,
    TResult? Function(String value)? string,
  }) {
    return string?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextChunk> value)? array,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionUserMessageContentArray value) array,
    required TResult Function(_UnionUserMessageContentString value) string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionUserMessageContentArray value)? array,
    TResult? Function(_UnionUserMessageContentString value)? string,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionUserMessageContentArray value)? array,
    TResult Function(_UnionUserMessageContentString value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionUserMessageContentStringImplToJson(
      this,
    );
  }
}

abstract class _UnionUserMessageContentString extends UserMessageContent {
  const factory _UnionUserMessageContentString(final String value) =
      _$UnionUserMessageContentStringImpl;
  const _UnionUserMessageContentString._() : super._();

  factory _UnionUserMessageContentString.fromJson(Map<String, dynamic> json) =
      _$UnionUserMessageContentStringImpl.fromJson;

  @override
  String get value;

  /// Create a copy of UserMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionUserMessageContentStringImplCopyWith<
          _$UnionUserMessageContentStringImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgentsCompletionRequest _$AgentsCompletionRequestFromJson(
    Map<String, dynamic> json) {
  return _AgentsCompletionRequest.fromJson(json);
}

/// @nodoc
mixin _$AgentsCompletionRequest {
  /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
  @JsonKey(name: 'max_tokens', includeIfNull: false)
  int? get maxTokens => throw _privateConstructorUsedError;

  /// The minimum number of tokens to generate in the completion.
  @JsonKey(name: 'min_tokens', includeIfNull: false)
  int? get minTokens => throw _privateConstructorUsedError;

  /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
  bool get stream => throw _privateConstructorUsedError;

  /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
  @_AgentsCompletionRequestStopConverter()
  @JsonKey(includeIfNull: false)
  AgentsCompletionRequestStop? get stop => throw _privateConstructorUsedError;

  /// The seed to use for random sampling. If set, different calls will generate deterministic results.
  @JsonKey(name: 'random_seed', includeIfNull: false)
  int? get randomSeed => throw _privateConstructorUsedError;

  /// The prompt(s) to generate completions for, encoded as a list of dict with role and content.
  /// You can pass only this types into to the list [UserMessage],  [AssistantMessage], [ToolMessage].
  List<dynamic> get messages => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'response_format', includeIfNull: false)
  ResponseFormat? get responseFormat => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  List<Tool>? get tools => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: 'tool_choice')
  ToolChoice get toolChoice => throw _privateConstructorUsedError;

  /// The ID of the agent to use for this completion.
  @JsonKey(name: 'agent_id')
  String get agentId => throw _privateConstructorUsedError;

  /// Serializes this AgentsCompletionRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AgentsCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgentsCompletionRequestCopyWith<AgentsCompletionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentsCompletionRequestCopyWith<$Res> {
  factory $AgentsCompletionRequestCopyWith(AgentsCompletionRequest value,
          $Res Function(AgentsCompletionRequest) then) =
      _$AgentsCompletionRequestCopyWithImpl<$Res, AgentsCompletionRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'max_tokens', includeIfNull: false) int? maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) int? minTokens,
      bool stream,
      @_AgentsCompletionRequestStopConverter()
      @JsonKey(includeIfNull: false)
      AgentsCompletionRequestStop? stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) int? randomSeed,
      List<dynamic> messages,
      @JsonKey(name: 'response_format', includeIfNull: false)
      ResponseFormat? responseFormat,
      @JsonKey(includeIfNull: false) List<Tool>? tools,
      @JsonKey(name: 'tool_choice') ToolChoice toolChoice,
      @JsonKey(name: 'agent_id') String agentId});

  $AgentsCompletionRequestStopCopyWith<$Res>? get stop;
  $ResponseFormatCopyWith<$Res>? get responseFormat;
}

/// @nodoc
class _$AgentsCompletionRequestCopyWithImpl<$Res,
        $Val extends AgentsCompletionRequest>
    implements $AgentsCompletionRequestCopyWith<$Res> {
  _$AgentsCompletionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgentsCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTokens = freezed,
    Object? minTokens = freezed,
    Object? stream = null,
    Object? stop = freezed,
    Object? randomSeed = freezed,
    Object? messages = null,
    Object? responseFormat = freezed,
    Object? tools = freezed,
    Object? toolChoice = null,
    Object? agentId = null,
  }) {
    return _then(_value.copyWith(
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      minTokens: freezed == minTokens
          ? _value.minTokens
          : minTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool,
      stop: freezed == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as AgentsCompletionRequestStop?,
      randomSeed: freezed == randomSeed
          ? _value.randomSeed
          : randomSeed // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      responseFormat: freezed == responseFormat
          ? _value.responseFormat
          : responseFormat // ignore: cast_nullable_to_non_nullable
              as ResponseFormat?,
      tools: freezed == tools
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tool>?,
      toolChoice: null == toolChoice
          ? _value.toolChoice
          : toolChoice // ignore: cast_nullable_to_non_nullable
              as ToolChoice,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of AgentsCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgentsCompletionRequestStopCopyWith<$Res>? get stop {
    if (_value.stop == null) {
      return null;
    }

    return $AgentsCompletionRequestStopCopyWith<$Res>(_value.stop!, (value) {
      return _then(_value.copyWith(stop: value) as $Val);
    });
  }

  /// Create a copy of AgentsCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseFormatCopyWith<$Res>? get responseFormat {
    if (_value.responseFormat == null) {
      return null;
    }

    return $ResponseFormatCopyWith<$Res>(_value.responseFormat!, (value) {
      return _then(_value.copyWith(responseFormat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgentsCompletionRequestImplCopyWith<$Res>
    implements $AgentsCompletionRequestCopyWith<$Res> {
  factory _$$AgentsCompletionRequestImplCopyWith(
          _$AgentsCompletionRequestImpl value,
          $Res Function(_$AgentsCompletionRequestImpl) then) =
      __$$AgentsCompletionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'max_tokens', includeIfNull: false) int? maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) int? minTokens,
      bool stream,
      @_AgentsCompletionRequestStopConverter()
      @JsonKey(includeIfNull: false)
      AgentsCompletionRequestStop? stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) int? randomSeed,
      List<dynamic> messages,
      @JsonKey(name: 'response_format', includeIfNull: false)
      ResponseFormat? responseFormat,
      @JsonKey(includeIfNull: false) List<Tool>? tools,
      @JsonKey(name: 'tool_choice') ToolChoice toolChoice,
      @JsonKey(name: 'agent_id') String agentId});

  @override
  $AgentsCompletionRequestStopCopyWith<$Res>? get stop;
  @override
  $ResponseFormatCopyWith<$Res>? get responseFormat;
}

/// @nodoc
class __$$AgentsCompletionRequestImplCopyWithImpl<$Res>
    extends _$AgentsCompletionRequestCopyWithImpl<$Res,
        _$AgentsCompletionRequestImpl>
    implements _$$AgentsCompletionRequestImplCopyWith<$Res> {
  __$$AgentsCompletionRequestImplCopyWithImpl(
      _$AgentsCompletionRequestImpl _value,
      $Res Function(_$AgentsCompletionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgentsCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTokens = freezed,
    Object? minTokens = freezed,
    Object? stream = null,
    Object? stop = freezed,
    Object? randomSeed = freezed,
    Object? messages = null,
    Object? responseFormat = freezed,
    Object? tools = freezed,
    Object? toolChoice = null,
    Object? agentId = null,
  }) {
    return _then(_$AgentsCompletionRequestImpl(
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      minTokens: freezed == minTokens
          ? _value.minTokens
          : minTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool,
      stop: freezed == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as AgentsCompletionRequestStop?,
      randomSeed: freezed == randomSeed
          ? _value.randomSeed
          : randomSeed // ignore: cast_nullable_to_non_nullable
              as int?,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      responseFormat: freezed == responseFormat
          ? _value.responseFormat
          : responseFormat // ignore: cast_nullable_to_non_nullable
              as ResponseFormat?,
      tools: freezed == tools
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tool>?,
      toolChoice: null == toolChoice
          ? _value.toolChoice
          : toolChoice // ignore: cast_nullable_to_non_nullable
              as ToolChoice,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentsCompletionRequestImpl extends _AgentsCompletionRequest {
  const _$AgentsCompletionRequestImpl(
      {@JsonKey(name: 'max_tokens', includeIfNull: false) this.maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) this.minTokens,
      this.stream = false,
      @_AgentsCompletionRequestStopConverter()
      @JsonKey(includeIfNull: false)
      this.stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) this.randomSeed,
      required final List<dynamic> messages,
      @JsonKey(name: 'response_format', includeIfNull: false)
      this.responseFormat,
      @JsonKey(includeIfNull: false) final List<Tool>? tools,
      @JsonKey(name: 'tool_choice') this.toolChoice = ToolChoice.auto,
      @JsonKey(name: 'agent_id') required this.agentId})
      : _messages = messages,
        _tools = tools,
        super._();

  factory _$AgentsCompletionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentsCompletionRequestImplFromJson(json);

  /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
  @override
  @JsonKey(name: 'max_tokens', includeIfNull: false)
  final int? maxTokens;

  /// The minimum number of tokens to generate in the completion.
  @override
  @JsonKey(name: 'min_tokens', includeIfNull: false)
  final int? minTokens;

  /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
  @override
  @JsonKey()
  final bool stream;

  /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
  @override
  @_AgentsCompletionRequestStopConverter()
  @JsonKey(includeIfNull: false)
  final AgentsCompletionRequestStop? stop;

  /// The seed to use for random sampling. If set, different calls will generate deterministic results.
  @override
  @JsonKey(name: 'random_seed', includeIfNull: false)
  final int? randomSeed;

  /// The prompt(s) to generate completions for, encoded as a list of dict with role and content.
  /// You can pass only this types into to the list [UserMessage],  [AssistantMessage], [ToolMessage].
  final List<dynamic> _messages;

  /// The prompt(s) to generate completions for, encoded as a list of dict with role and content.
  /// You can pass only this types into to the list [UserMessage],  [AssistantMessage], [ToolMessage].
  @override
  List<dynamic> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  /// No Description
  @override
  @JsonKey(name: 'response_format', includeIfNull: false)
  final ResponseFormat? responseFormat;

  /// No Description
  final List<Tool>? _tools;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<Tool>? get tools {
    final value = _tools;
    if (value == null) return null;
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  ///
  @override
  @JsonKey(name: 'tool_choice')
  final ToolChoice toolChoice;

  /// The ID of the agent to use for this completion.
  @override
  @JsonKey(name: 'agent_id')
  final String agentId;

  @override
  String toString() {
    return 'AgentsCompletionRequest(maxTokens: $maxTokens, minTokens: $minTokens, stream: $stream, stop: $stop, randomSeed: $randomSeed, messages: $messages, responseFormat: $responseFormat, tools: $tools, toolChoice: $toolChoice, agentId: $agentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentsCompletionRequestImpl &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.minTokens, minTokens) ||
                other.minTokens == minTokens) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.stop, stop) || other.stop == stop) &&
            (identical(other.randomSeed, randomSeed) ||
                other.randomSeed == randomSeed) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.responseFormat, responseFormat) ||
                other.responseFormat == responseFormat) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            (identical(other.toolChoice, toolChoice) ||
                other.toolChoice == toolChoice) &&
            (identical(other.agentId, agentId) || other.agentId == agentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      maxTokens,
      minTokens,
      stream,
      stop,
      randomSeed,
      const DeepCollectionEquality().hash(_messages),
      responseFormat,
      const DeepCollectionEquality().hash(_tools),
      toolChoice,
      agentId);

  /// Create a copy of AgentsCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentsCompletionRequestImplCopyWith<_$AgentsCompletionRequestImpl>
      get copyWith => __$$AgentsCompletionRequestImplCopyWithImpl<
          _$AgentsCompletionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentsCompletionRequestImplToJson(
      this,
    );
  }
}

abstract class _AgentsCompletionRequest extends AgentsCompletionRequest {
  const factory _AgentsCompletionRequest(
      {@JsonKey(name: 'max_tokens', includeIfNull: false) final int? maxTokens,
      @JsonKey(name: 'min_tokens', includeIfNull: false) final int? minTokens,
      final bool stream,
      @_AgentsCompletionRequestStopConverter()
      @JsonKey(includeIfNull: false)
      final AgentsCompletionRequestStop? stop,
      @JsonKey(name: 'random_seed', includeIfNull: false) final int? randomSeed,
      required final List<dynamic> messages,
      @JsonKey(name: 'response_format', includeIfNull: false)
      final ResponseFormat? responseFormat,
      @JsonKey(includeIfNull: false) final List<Tool>? tools,
      @JsonKey(name: 'tool_choice') final ToolChoice toolChoice,
      @JsonKey(name: 'agent_id')
      required final String agentId}) = _$AgentsCompletionRequestImpl;
  const _AgentsCompletionRequest._() : super._();

  factory _AgentsCompletionRequest.fromJson(Map<String, dynamic> json) =
      _$AgentsCompletionRequestImpl.fromJson;

  /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
  @override
  @JsonKey(name: 'max_tokens', includeIfNull: false)
  int? get maxTokens;

  /// The minimum number of tokens to generate in the completion.
  @override
  @JsonKey(name: 'min_tokens', includeIfNull: false)
  int? get minTokens;

  /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
  @override
  bool get stream;

  /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
  @override
  @_AgentsCompletionRequestStopConverter()
  @JsonKey(includeIfNull: false)
  AgentsCompletionRequestStop? get stop;

  /// The seed to use for random sampling. If set, different calls will generate deterministic results.
  @override
  @JsonKey(name: 'random_seed', includeIfNull: false)
  int? get randomSeed;

  /// The prompt(s) to generate completions for, encoded as a list of dict with role and content.
  /// You can pass only this types into to the list [UserMessage],  [AssistantMessage], [ToolMessage].
  @override
  List<dynamic> get messages;

  /// No Description
  @override
  @JsonKey(name: 'response_format', includeIfNull: false)
  ResponseFormat? get responseFormat;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<Tool>? get tools;

  ///
  @override
  @JsonKey(name: 'tool_choice')
  ToolChoice get toolChoice;

  /// The ID of the agent to use for this completion.
  @override
  @JsonKey(name: 'agent_id')
  String get agentId;

  /// Create a copy of AgentsCompletionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgentsCompletionRequestImplCopyWith<_$AgentsCompletionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgentsCompletionRequestStop _$AgentsCompletionRequestStopFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'arrayString':
      return _UnionAgentsCompletionRequestStopArrayString.fromJson(json);
    case 'string':
      return _UnionAgentsCompletionRequestStopString.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'AgentsCompletionRequestStop',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AgentsCompletionRequestStop {
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _UnionAgentsCompletionRequestStopArrayString value)
        arrayString,
    required TResult Function(_UnionAgentsCompletionRequestStopString value)
        string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionAgentsCompletionRequestStopArrayString value)?
        arrayString,
    TResult? Function(_UnionAgentsCompletionRequestStopString value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionAgentsCompletionRequestStopArrayString value)?
        arrayString,
    TResult Function(_UnionAgentsCompletionRequestStopString value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AgentsCompletionRequestStop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentsCompletionRequestStopCopyWith<$Res> {
  factory $AgentsCompletionRequestStopCopyWith(
          AgentsCompletionRequestStop value,
          $Res Function(AgentsCompletionRequestStop) then) =
      _$AgentsCompletionRequestStopCopyWithImpl<$Res,
          AgentsCompletionRequestStop>;
}

/// @nodoc
class _$AgentsCompletionRequestStopCopyWithImpl<$Res,
        $Val extends AgentsCompletionRequestStop>
    implements $AgentsCompletionRequestStopCopyWith<$Res> {
  _$AgentsCompletionRequestStopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgentsCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnionAgentsCompletionRequestStopArrayStringImplCopyWith<
    $Res> {
  factory _$$UnionAgentsCompletionRequestStopArrayStringImplCopyWith(
          _$UnionAgentsCompletionRequestStopArrayStringImpl value,
          $Res Function(_$UnionAgentsCompletionRequestStopArrayStringImpl)
              then) =
      __$$UnionAgentsCompletionRequestStopArrayStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> value});
}

/// @nodoc
class __$$UnionAgentsCompletionRequestStopArrayStringImplCopyWithImpl<$Res>
    extends _$AgentsCompletionRequestStopCopyWithImpl<$Res,
        _$UnionAgentsCompletionRequestStopArrayStringImpl>
    implements
        _$$UnionAgentsCompletionRequestStopArrayStringImplCopyWith<$Res> {
  __$$UnionAgentsCompletionRequestStopArrayStringImplCopyWithImpl(
      _$UnionAgentsCompletionRequestStopArrayStringImpl _value,
      $Res Function(_$UnionAgentsCompletionRequestStopArrayStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgentsCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionAgentsCompletionRequestStopArrayStringImpl(
      null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionAgentsCompletionRequestStopArrayStringImpl
    extends _UnionAgentsCompletionRequestStopArrayString {
  const _$UnionAgentsCompletionRequestStopArrayStringImpl(
      final List<String> value,
      {final String? $type})
      : _value = value,
        $type = $type ?? 'arrayString',
        super._();

  factory _$UnionAgentsCompletionRequestStopArrayStringImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionAgentsCompletionRequestStopArrayStringImplFromJson(json);

  final List<String> _value;
  @override
  List<String> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AgentsCompletionRequestStop.arrayString(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionAgentsCompletionRequestStopArrayStringImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of AgentsCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionAgentsCompletionRequestStopArrayStringImplCopyWith<
          _$UnionAgentsCompletionRequestStopArrayStringImpl>
      get copyWith =>
          __$$UnionAgentsCompletionRequestStopArrayStringImplCopyWithImpl<
                  _$UnionAgentsCompletionRequestStopArrayStringImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) {
    return arrayString(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) {
    return arrayString?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (arrayString != null) {
      return arrayString(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _UnionAgentsCompletionRequestStopArrayString value)
        arrayString,
    required TResult Function(_UnionAgentsCompletionRequestStopString value)
        string,
  }) {
    return arrayString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionAgentsCompletionRequestStopArrayString value)?
        arrayString,
    TResult? Function(_UnionAgentsCompletionRequestStopString value)? string,
  }) {
    return arrayString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionAgentsCompletionRequestStopArrayString value)?
        arrayString,
    TResult Function(_UnionAgentsCompletionRequestStopString value)? string,
    required TResult orElse(),
  }) {
    if (arrayString != null) {
      return arrayString(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionAgentsCompletionRequestStopArrayStringImplToJson(
      this,
    );
  }
}

abstract class _UnionAgentsCompletionRequestStopArrayString
    extends AgentsCompletionRequestStop {
  const factory _UnionAgentsCompletionRequestStopArrayString(
          final List<String> value) =
      _$UnionAgentsCompletionRequestStopArrayStringImpl;
  const _UnionAgentsCompletionRequestStopArrayString._() : super._();

  factory _UnionAgentsCompletionRequestStopArrayString.fromJson(
          Map<String, dynamic> json) =
      _$UnionAgentsCompletionRequestStopArrayStringImpl.fromJson;

  @override
  List<String> get value;

  /// Create a copy of AgentsCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionAgentsCompletionRequestStopArrayStringImplCopyWith<
          _$UnionAgentsCompletionRequestStopArrayStringImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionAgentsCompletionRequestStopStringImplCopyWith<$Res> {
  factory _$$UnionAgentsCompletionRequestStopStringImplCopyWith(
          _$UnionAgentsCompletionRequestStopStringImpl value,
          $Res Function(_$UnionAgentsCompletionRequestStopStringImpl) then) =
      __$$UnionAgentsCompletionRequestStopStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UnionAgentsCompletionRequestStopStringImplCopyWithImpl<$Res>
    extends _$AgentsCompletionRequestStopCopyWithImpl<$Res,
        _$UnionAgentsCompletionRequestStopStringImpl>
    implements _$$UnionAgentsCompletionRequestStopStringImplCopyWith<$Res> {
  __$$UnionAgentsCompletionRequestStopStringImplCopyWithImpl(
      _$UnionAgentsCompletionRequestStopStringImpl _value,
      $Res Function(_$UnionAgentsCompletionRequestStopStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgentsCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionAgentsCompletionRequestStopStringImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionAgentsCompletionRequestStopStringImpl
    extends _UnionAgentsCompletionRequestStopString {
  const _$UnionAgentsCompletionRequestStopStringImpl(this.value,
      {final String? $type})
      : $type = $type ?? 'string',
        super._();

  factory _$UnionAgentsCompletionRequestStopStringImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionAgentsCompletionRequestStopStringImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AgentsCompletionRequestStop.string(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionAgentsCompletionRequestStopStringImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of AgentsCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionAgentsCompletionRequestStopStringImplCopyWith<
          _$UnionAgentsCompletionRequestStopStringImpl>
      get copyWith =>
          __$$UnionAgentsCompletionRequestStopStringImplCopyWithImpl<
              _$UnionAgentsCompletionRequestStopStringImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) {
    return string(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) {
    return string?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _UnionAgentsCompletionRequestStopArrayString value)
        arrayString,
    required TResult Function(_UnionAgentsCompletionRequestStopString value)
        string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionAgentsCompletionRequestStopArrayString value)?
        arrayString,
    TResult? Function(_UnionAgentsCompletionRequestStopString value)? string,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionAgentsCompletionRequestStopArrayString value)?
        arrayString,
    TResult Function(_UnionAgentsCompletionRequestStopString value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionAgentsCompletionRequestStopStringImplToJson(
      this,
    );
  }
}

abstract class _UnionAgentsCompletionRequestStopString
    extends AgentsCompletionRequestStop {
  const factory _UnionAgentsCompletionRequestStopString(final String value) =
      _$UnionAgentsCompletionRequestStopStringImpl;
  const _UnionAgentsCompletionRequestStopString._() : super._();

  factory _UnionAgentsCompletionRequestStopString.fromJson(
          Map<String, dynamic> json) =
      _$UnionAgentsCompletionRequestStopStringImpl.fromJson;

  @override
  String get value;

  /// Create a copy of AgentsCompletionRequestStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionAgentsCompletionRequestStopStringImplCopyWith<
          _$UnionAgentsCompletionRequestStopStringImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EmbeddingRequest _$EmbeddingRequestFromJson(Map<String, dynamic> json) {
  return _EmbeddingRequest.fromJson(json);
}

/// @nodoc
mixin _$EmbeddingRequest {
  /// Text to embed.
  @_InputConverter()
  Input get input => throw _privateConstructorUsedError;

  /// ID of the model to use.
  String get model => throw _privateConstructorUsedError;

  /// The format to return the embeddings in.
  @JsonKey(name: 'encoding_format', includeIfNull: false)
  String? get encodingFormat => throw _privateConstructorUsedError;

  /// Serializes this EmbeddingRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmbeddingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbeddingRequestCopyWith<EmbeddingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbeddingRequestCopyWith<$Res> {
  factory $EmbeddingRequestCopyWith(
          EmbeddingRequest value, $Res Function(EmbeddingRequest) then) =
      _$EmbeddingRequestCopyWithImpl<$Res, EmbeddingRequest>;
  @useResult
  $Res call(
      {@_InputConverter() Input input,
      String model,
      @JsonKey(name: 'encoding_format', includeIfNull: false)
      String? encodingFormat});

  $InputCopyWith<$Res> get input;
}

/// @nodoc
class _$EmbeddingRequestCopyWithImpl<$Res, $Val extends EmbeddingRequest>
    implements $EmbeddingRequestCopyWith<$Res> {
  _$EmbeddingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmbeddingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? model = null,
    Object? encodingFormat = freezed,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as Input,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      encodingFormat: freezed == encodingFormat
          ? _value.encodingFormat
          : encodingFormat // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of EmbeddingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputCopyWith<$Res> get input {
    return $InputCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmbeddingRequestImplCopyWith<$Res>
    implements $EmbeddingRequestCopyWith<$Res> {
  factory _$$EmbeddingRequestImplCopyWith(_$EmbeddingRequestImpl value,
          $Res Function(_$EmbeddingRequestImpl) then) =
      __$$EmbeddingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@_InputConverter() Input input,
      String model,
      @JsonKey(name: 'encoding_format', includeIfNull: false)
      String? encodingFormat});

  @override
  $InputCopyWith<$Res> get input;
}

/// @nodoc
class __$$EmbeddingRequestImplCopyWithImpl<$Res>
    extends _$EmbeddingRequestCopyWithImpl<$Res, _$EmbeddingRequestImpl>
    implements _$$EmbeddingRequestImplCopyWith<$Res> {
  __$$EmbeddingRequestImplCopyWithImpl(_$EmbeddingRequestImpl _value,
      $Res Function(_$EmbeddingRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmbeddingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? model = null,
    Object? encodingFormat = freezed,
  }) {
    return _then(_$EmbeddingRequestImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as Input,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      encodingFormat: freezed == encodingFormat
          ? _value.encodingFormat
          : encodingFormat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbeddingRequestImpl extends _EmbeddingRequest {
  const _$EmbeddingRequestImpl(
      {@_InputConverter() required this.input,
      required this.model,
      @JsonKey(name: 'encoding_format', includeIfNull: false)
      this.encodingFormat = 'float'})
      : super._();

  factory _$EmbeddingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbeddingRequestImplFromJson(json);

  /// Text to embed.
  @override
  @_InputConverter()
  final Input input;

  /// ID of the model to use.
  @override
  final String model;

  /// The format to return the embeddings in.
  @override
  @JsonKey(name: 'encoding_format', includeIfNull: false)
  final String? encodingFormat;

  @override
  String toString() {
    return 'EmbeddingRequest(input: $input, model: $model, encodingFormat: $encodingFormat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbeddingRequestImpl &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.encodingFormat, encodingFormat) ||
                other.encodingFormat == encodingFormat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, input, model, encodingFormat);

  /// Create a copy of EmbeddingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbeddingRequestImplCopyWith<_$EmbeddingRequestImpl> get copyWith =>
      __$$EmbeddingRequestImplCopyWithImpl<_$EmbeddingRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbeddingRequestImplToJson(
      this,
    );
  }
}

abstract class _EmbeddingRequest extends EmbeddingRequest {
  const factory _EmbeddingRequest(
      {@_InputConverter() required final Input input,
      required final String model,
      @JsonKey(name: 'encoding_format', includeIfNull: false)
      final String? encodingFormat}) = _$EmbeddingRequestImpl;
  const _EmbeddingRequest._() : super._();

  factory _EmbeddingRequest.fromJson(Map<String, dynamic> json) =
      _$EmbeddingRequestImpl.fromJson;

  /// Text to embed.
  @override
  @_InputConverter()
  Input get input;

  /// ID of the model to use.
  @override
  String get model;

  /// The format to return the embeddings in.
  @override
  @JsonKey(name: 'encoding_format', includeIfNull: false)
  String? get encodingFormat;

  /// Create a copy of EmbeddingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbeddingRequestImplCopyWith<_$EmbeddingRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Input _$InputFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'arrayString':
      return _UnionInputArrayString.fromJson(json);
    case 'string':
      return _UnionInputString.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Input',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Input {
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionInputArrayString value) arrayString,
    required TResult Function(_UnionInputString value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionInputArrayString value)? arrayString,
    TResult? Function(_UnionInputString value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionInputArrayString value)? arrayString,
    TResult Function(_UnionInputString value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Input to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputCopyWith<$Res> {
  factory $InputCopyWith(Input value, $Res Function(Input) then) =
      _$InputCopyWithImpl<$Res, Input>;
}

/// @nodoc
class _$InputCopyWithImpl<$Res, $Val extends Input>
    implements $InputCopyWith<$Res> {
  _$InputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Input
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnionInputArrayStringImplCopyWith<$Res> {
  factory _$$UnionInputArrayStringImplCopyWith(
          _$UnionInputArrayStringImpl value,
          $Res Function(_$UnionInputArrayStringImpl) then) =
      __$$UnionInputArrayStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> value});
}

/// @nodoc
class __$$UnionInputArrayStringImplCopyWithImpl<$Res>
    extends _$InputCopyWithImpl<$Res, _$UnionInputArrayStringImpl>
    implements _$$UnionInputArrayStringImplCopyWith<$Res> {
  __$$UnionInputArrayStringImplCopyWithImpl(_$UnionInputArrayStringImpl _value,
      $Res Function(_$UnionInputArrayStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of Input
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionInputArrayStringImpl(
      null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionInputArrayStringImpl extends _UnionInputArrayString {
  const _$UnionInputArrayStringImpl(final List<String> value,
      {final String? $type})
      : _value = value,
        $type = $type ?? 'arrayString',
        super._();

  factory _$UnionInputArrayStringImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionInputArrayStringImplFromJson(json);

  final List<String> _value;
  @override
  List<String> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Input.arrayString(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionInputArrayStringImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of Input
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionInputArrayStringImplCopyWith<_$UnionInputArrayStringImpl>
      get copyWith => __$$UnionInputArrayStringImplCopyWithImpl<
          _$UnionInputArrayStringImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) {
    return arrayString(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) {
    return arrayString?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (arrayString != null) {
      return arrayString(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionInputArrayString value) arrayString,
    required TResult Function(_UnionInputString value) string,
  }) {
    return arrayString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionInputArrayString value)? arrayString,
    TResult? Function(_UnionInputString value)? string,
  }) {
    return arrayString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionInputArrayString value)? arrayString,
    TResult Function(_UnionInputString value)? string,
    required TResult orElse(),
  }) {
    if (arrayString != null) {
      return arrayString(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionInputArrayStringImplToJson(
      this,
    );
  }
}

abstract class _UnionInputArrayString extends Input {
  const factory _UnionInputArrayString(final List<String> value) =
      _$UnionInputArrayStringImpl;
  const _UnionInputArrayString._() : super._();

  factory _UnionInputArrayString.fromJson(Map<String, dynamic> json) =
      _$UnionInputArrayStringImpl.fromJson;

  @override
  List<String> get value;

  /// Create a copy of Input
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionInputArrayStringImplCopyWith<_$UnionInputArrayStringImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionInputStringImplCopyWith<$Res> {
  factory _$$UnionInputStringImplCopyWith(_$UnionInputStringImpl value,
          $Res Function(_$UnionInputStringImpl) then) =
      __$$UnionInputStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UnionInputStringImplCopyWithImpl<$Res>
    extends _$InputCopyWithImpl<$Res, _$UnionInputStringImpl>
    implements _$$UnionInputStringImplCopyWith<$Res> {
  __$$UnionInputStringImplCopyWithImpl(_$UnionInputStringImpl _value,
      $Res Function(_$UnionInputStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of Input
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UnionInputStringImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionInputStringImpl extends _UnionInputString {
  const _$UnionInputStringImpl(this.value, {final String? $type})
      : $type = $type ?? 'string',
        super._();

  factory _$UnionInputStringImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionInputStringImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Input.string(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionInputStringImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of Input
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionInputStringImplCopyWith<_$UnionInputStringImpl> get copyWith =>
      __$$UnionInputStringImplCopyWithImpl<_$UnionInputStringImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> value) arrayString,
    required TResult Function(String value) string,
  }) {
    return string(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> value)? arrayString,
    TResult? Function(String value)? string,
  }) {
    return string?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> value)? arrayString,
    TResult Function(String value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionInputArrayString value) arrayString,
    required TResult Function(_UnionInputString value) string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionInputArrayString value)? arrayString,
    TResult? Function(_UnionInputString value)? string,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionInputArrayString value)? arrayString,
    TResult Function(_UnionInputString value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionInputStringImplToJson(
      this,
    );
  }
}

abstract class _UnionInputString extends Input {
  const factory _UnionInputString(final String value) = _$UnionInputStringImpl;
  const _UnionInputString._() : super._();

  factory _UnionInputString.fromJson(Map<String, dynamic> json) =
      _$UnionInputStringImpl.fromJson;

  @override
  String get value;

  /// Create a copy of Input
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionInputStringImplCopyWith<_$UnionInputStringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UsageInfo _$UsageInfoFromJson(Map<String, dynamic> json) {
  return _UsageInfo.fromJson(json);
}

/// @nodoc
mixin _$UsageInfo {
  /// No Description
  @JsonKey(name: 'prompt_tokens')
  int get promptTokens => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'completion_tokens')
  int get completionTokens => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'total_tokens')
  int get totalTokens => throw _privateConstructorUsedError;

  /// Serializes this UsageInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsageInfoCopyWith<UsageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageInfoCopyWith<$Res> {
  factory $UsageInfoCopyWith(UsageInfo value, $Res Function(UsageInfo) then) =
      _$UsageInfoCopyWithImpl<$Res, UsageInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'prompt_tokens') int promptTokens,
      @JsonKey(name: 'completion_tokens') int completionTokens,
      @JsonKey(name: 'total_tokens') int totalTokens});
}

/// @nodoc
class _$UsageInfoCopyWithImpl<$Res, $Val extends UsageInfo>
    implements $UsageInfoCopyWith<$Res> {
  _$UsageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = null,
    Object? completionTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_value.copyWith(
      promptTokens: null == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      completionTokens: null == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsageInfoImplCopyWith<$Res>
    implements $UsageInfoCopyWith<$Res> {
  factory _$$UsageInfoImplCopyWith(
          _$UsageInfoImpl value, $Res Function(_$UsageInfoImpl) then) =
      __$$UsageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'prompt_tokens') int promptTokens,
      @JsonKey(name: 'completion_tokens') int completionTokens,
      @JsonKey(name: 'total_tokens') int totalTokens});
}

/// @nodoc
class __$$UsageInfoImplCopyWithImpl<$Res>
    extends _$UsageInfoCopyWithImpl<$Res, _$UsageInfoImpl>
    implements _$$UsageInfoImplCopyWith<$Res> {
  __$$UsageInfoImplCopyWithImpl(
      _$UsageInfoImpl _value, $Res Function(_$UsageInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = null,
    Object? completionTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_$UsageInfoImpl(
      promptTokens: null == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      completionTokens: null == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsageInfoImpl extends _UsageInfo {
  const _$UsageInfoImpl(
      {@JsonKey(name: 'prompt_tokens') required this.promptTokens,
      @JsonKey(name: 'completion_tokens') required this.completionTokens,
      @JsonKey(name: 'total_tokens') required this.totalTokens})
      : super._();

  factory _$UsageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsageInfoImplFromJson(json);

  /// No Description
  @override
  @JsonKey(name: 'prompt_tokens')
  final int promptTokens;

  /// No Description
  @override
  @JsonKey(name: 'completion_tokens')
  final int completionTokens;

  /// No Description
  @override
  @JsonKey(name: 'total_tokens')
  final int totalTokens;

  @override
  String toString() {
    return 'UsageInfo(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsageInfoImpl &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, promptTokens, completionTokens, totalTokens);

  /// Create a copy of UsageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsageInfoImplCopyWith<_$UsageInfoImpl> get copyWith =>
      __$$UsageInfoImplCopyWithImpl<_$UsageInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsageInfoImplToJson(
      this,
    );
  }
}

abstract class _UsageInfo extends UsageInfo {
  const factory _UsageInfo(
      {@JsonKey(name: 'prompt_tokens') required final int promptTokens,
      @JsonKey(name: 'completion_tokens') required final int completionTokens,
      @JsonKey(name: 'total_tokens')
      required final int totalTokens}) = _$UsageInfoImpl;
  const _UsageInfo._() : super._();

  factory _UsageInfo.fromJson(Map<String, dynamic> json) =
      _$UsageInfoImpl.fromJson;

  /// No Description
  @override
  @JsonKey(name: 'prompt_tokens')
  int get promptTokens;

  /// No Description
  @override
  @JsonKey(name: 'completion_tokens')
  int get completionTokens;

  /// No Description
  @override
  @JsonKey(name: 'total_tokens')
  int get totalTokens;

  /// Create a copy of UsageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsageInfoImplCopyWith<_$UsageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseBase _$ResponseBaseFromJson(Map<String, dynamic> json) {
  return _ResponseBase.fromJson(json);
}

/// @nodoc
mixin _$ResponseBase {
  /// No Description
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get object => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get model => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  UsageInfo? get usage => throw _privateConstructorUsedError;

  /// Serializes this ResponseBase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseBaseCopyWith<ResponseBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBaseCopyWith<$Res> {
  factory $ResponseBaseCopyWith(
          ResponseBase value, $Res Function(ResponseBase) then) =
      _$ResponseBaseCopyWithImpl<$Res, ResponseBase>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(includeIfNull: false) String? object,
      @JsonKey(includeIfNull: false) String? model,
      @JsonKey(includeIfNull: false) UsageInfo? usage});

  $UsageInfoCopyWith<$Res>? get usage;
}

/// @nodoc
class _$ResponseBaseCopyWithImpl<$Res, $Val extends ResponseBase>
    implements $ResponseBaseCopyWith<$Res> {
  _$ResponseBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? model = freezed,
    Object? usage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo?,
    ) as $Val);
  }

  /// Create a copy of ResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageInfoCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $UsageInfoCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseBaseImplCopyWith<$Res>
    implements $ResponseBaseCopyWith<$Res> {
  factory _$$ResponseBaseImplCopyWith(
          _$ResponseBaseImpl value, $Res Function(_$ResponseBaseImpl) then) =
      __$$ResponseBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(includeIfNull: false) String? object,
      @JsonKey(includeIfNull: false) String? model,
      @JsonKey(includeIfNull: false) UsageInfo? usage});

  @override
  $UsageInfoCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$ResponseBaseImplCopyWithImpl<$Res>
    extends _$ResponseBaseCopyWithImpl<$Res, _$ResponseBaseImpl>
    implements _$$ResponseBaseImplCopyWith<$Res> {
  __$$ResponseBaseImplCopyWithImpl(
      _$ResponseBaseImpl _value, $Res Function(_$ResponseBaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? model = freezed,
    Object? usage = freezed,
  }) {
    return _then(_$ResponseBaseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBaseImpl extends _ResponseBase {
  const _$ResponseBaseImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) this.object,
      @JsonKey(includeIfNull: false) this.model,
      @JsonKey(includeIfNull: false) this.usage})
      : super._();

  factory _$ResponseBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseBaseImplFromJson(json);

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? id;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? object;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? model;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final UsageInfo? usage;

  @override
  String toString() {
    return 'ResponseBase(id: $id, object: $object, model: $model, usage: $usage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, model, usage);

  /// Create a copy of ResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBaseImplCopyWith<_$ResponseBaseImpl> get copyWith =>
      __$$ResponseBaseImplCopyWithImpl<_$ResponseBaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBaseImplToJson(
      this,
    );
  }
}

abstract class _ResponseBase extends ResponseBase {
  const factory _ResponseBase(
          {@JsonKey(includeIfNull: false) final String? id,
          @JsonKey(includeIfNull: false) final String? object,
          @JsonKey(includeIfNull: false) final String? model,
          @JsonKey(includeIfNull: false) final UsageInfo? usage}) =
      _$ResponseBaseImpl;
  const _ResponseBase._() : super._();

  factory _ResponseBase.fromJson(Map<String, dynamic> json) =
      _$ResponseBaseImpl.fromJson;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get id;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get object;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get model;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  UsageInfo? get usage;

  /// Create a copy of ResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseBaseImplCopyWith<_$ResponseBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatCompletionChoice _$ChatCompletionChoiceFromJson(Map<String, dynamic> json) {
  return _ChatCompletionChoice.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionChoice {
  /// No Description
  int get index => throw _privateConstructorUsedError;

  /// No Description
  AssistantMessage get message => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: 'finish_reason')
  ChatCompletionChoiceFinishReason get finishReason =>
      throw _privateConstructorUsedError;

  /// Serializes this ChatCompletionChoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatCompletionChoiceCopyWith<ChatCompletionChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionChoiceCopyWith<$Res> {
  factory $ChatCompletionChoiceCopyWith(ChatCompletionChoice value,
          $Res Function(ChatCompletionChoice) then) =
      _$ChatCompletionChoiceCopyWithImpl<$Res, ChatCompletionChoice>;
  @useResult
  $Res call(
      {int index,
      AssistantMessage message,
      @JsonKey(name: 'finish_reason')
      ChatCompletionChoiceFinishReason finishReason});

  $AssistantMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ChatCompletionChoiceCopyWithImpl<$Res,
        $Val extends ChatCompletionChoice>
    implements $ChatCompletionChoiceCopyWith<$Res> {
  _$ChatCompletionChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AssistantMessage,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as ChatCompletionChoiceFinishReason,
    ) as $Val);
  }

  /// Create a copy of ChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssistantMessageCopyWith<$Res> get message {
    return $AssistantMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatCompletionChoiceImplCopyWith<$Res>
    implements $ChatCompletionChoiceCopyWith<$Res> {
  factory _$$ChatCompletionChoiceImplCopyWith(_$ChatCompletionChoiceImpl value,
          $Res Function(_$ChatCompletionChoiceImpl) then) =
      __$$ChatCompletionChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      AssistantMessage message,
      @JsonKey(name: 'finish_reason')
      ChatCompletionChoiceFinishReason finishReason});

  @override
  $AssistantMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$ChatCompletionChoiceImplCopyWithImpl<$Res>
    extends _$ChatCompletionChoiceCopyWithImpl<$Res, _$ChatCompletionChoiceImpl>
    implements _$$ChatCompletionChoiceImplCopyWith<$Res> {
  __$$ChatCompletionChoiceImplCopyWithImpl(_$ChatCompletionChoiceImpl _value,
      $Res Function(_$ChatCompletionChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = null,
  }) {
    return _then(_$ChatCompletionChoiceImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AssistantMessage,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as ChatCompletionChoiceFinishReason,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatCompletionChoiceImpl extends _ChatCompletionChoice {
  const _$ChatCompletionChoiceImpl(
      {required this.index,
      required this.message,
      @JsonKey(name: 'finish_reason') required this.finishReason})
      : super._();

  factory _$ChatCompletionChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatCompletionChoiceImplFromJson(json);

  /// No Description
  @override
  final int index;

  /// No Description
  @override
  final AssistantMessage message;

  ///
  @override
  @JsonKey(name: 'finish_reason')
  final ChatCompletionChoiceFinishReason finishReason;

  @override
  String toString() {
    return 'ChatCompletionChoice(index: $index, message: $message, finishReason: $finishReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatCompletionChoiceImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finishReason);

  /// Create a copy of ChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatCompletionChoiceImplCopyWith<_$ChatCompletionChoiceImpl>
      get copyWith =>
          __$$ChatCompletionChoiceImplCopyWithImpl<_$ChatCompletionChoiceImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatCompletionChoiceImplToJson(
      this,
    );
  }
}

abstract class _ChatCompletionChoice extends ChatCompletionChoice {
  const factory _ChatCompletionChoice(
          {required final int index,
          required final AssistantMessage message,
          @JsonKey(name: 'finish_reason')
          required final ChatCompletionChoiceFinishReason finishReason}) =
      _$ChatCompletionChoiceImpl;
  const _ChatCompletionChoice._() : super._();

  factory _ChatCompletionChoice.fromJson(Map<String, dynamic> json) =
      _$ChatCompletionChoiceImpl.fromJson;

  /// No Description
  @override
  int get index;

  /// No Description
  @override
  AssistantMessage get message;

  ///
  @override
  @JsonKey(name: 'finish_reason')
  ChatCompletionChoiceFinishReason get finishReason;

  /// Create a copy of ChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatCompletionChoiceImplCopyWith<_$ChatCompletionChoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChatCompletionResponseBase _$ChatCompletionResponseBaseFromJson(
    Map<String, dynamic> json) {
  return _ChatCompletionResponseBase.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionResponseBase {
  /// No Description
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get object => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get model => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  UsageInfo? get usage => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  int? get created => throw _privateConstructorUsedError;

  /// Serializes this ChatCompletionResponseBase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatCompletionResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatCompletionResponseBaseCopyWith<ChatCompletionResponseBase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionResponseBaseCopyWith<$Res> {
  factory $ChatCompletionResponseBaseCopyWith(ChatCompletionResponseBase value,
          $Res Function(ChatCompletionResponseBase) then) =
      _$ChatCompletionResponseBaseCopyWithImpl<$Res,
          ChatCompletionResponseBase>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(includeIfNull: false) String? object,
      @JsonKey(includeIfNull: false) String? model,
      @JsonKey(includeIfNull: false) UsageInfo? usage,
      @JsonKey(includeIfNull: false) int? created});

  $UsageInfoCopyWith<$Res>? get usage;
}

/// @nodoc
class _$ChatCompletionResponseBaseCopyWithImpl<$Res,
        $Val extends ChatCompletionResponseBase>
    implements $ChatCompletionResponseBaseCopyWith<$Res> {
  _$ChatCompletionResponseBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatCompletionResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? model = freezed,
    Object? usage = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ChatCompletionResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageInfoCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $UsageInfoCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatCompletionResponseBaseImplCopyWith<$Res>
    implements $ChatCompletionResponseBaseCopyWith<$Res> {
  factory _$$ChatCompletionResponseBaseImplCopyWith(
          _$ChatCompletionResponseBaseImpl value,
          $Res Function(_$ChatCompletionResponseBaseImpl) then) =
      __$$ChatCompletionResponseBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(includeIfNull: false) String? object,
      @JsonKey(includeIfNull: false) String? model,
      @JsonKey(includeIfNull: false) UsageInfo? usage,
      @JsonKey(includeIfNull: false) int? created});

  @override
  $UsageInfoCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$ChatCompletionResponseBaseImplCopyWithImpl<$Res>
    extends _$ChatCompletionResponseBaseCopyWithImpl<$Res,
        _$ChatCompletionResponseBaseImpl>
    implements _$$ChatCompletionResponseBaseImplCopyWith<$Res> {
  __$$ChatCompletionResponseBaseImplCopyWithImpl(
      _$ChatCompletionResponseBaseImpl _value,
      $Res Function(_$ChatCompletionResponseBaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatCompletionResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? model = freezed,
    Object? usage = freezed,
    Object? created = freezed,
  }) {
    return _then(_$ChatCompletionResponseBaseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatCompletionResponseBaseImpl extends _ChatCompletionResponseBase {
  const _$ChatCompletionResponseBaseImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) this.object,
      @JsonKey(includeIfNull: false) this.model,
      @JsonKey(includeIfNull: false) this.usage,
      @JsonKey(includeIfNull: false) this.created})
      : super._();

  factory _$ChatCompletionResponseBaseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChatCompletionResponseBaseImplFromJson(json);

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? id;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? object;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? model;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final UsageInfo? usage;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final int? created;

  @override
  String toString() {
    return 'ChatCompletionResponseBase(id: $id, object: $object, model: $model, usage: $usage, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatCompletionResponseBaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, object, model, usage, created);

  /// Create a copy of ChatCompletionResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatCompletionResponseBaseImplCopyWith<_$ChatCompletionResponseBaseImpl>
      get copyWith => __$$ChatCompletionResponseBaseImplCopyWithImpl<
          _$ChatCompletionResponseBaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatCompletionResponseBaseImplToJson(
      this,
    );
  }
}

abstract class _ChatCompletionResponseBase extends ChatCompletionResponseBase {
  const factory _ChatCompletionResponseBase(
          {@JsonKey(includeIfNull: false) final String? id,
          @JsonKey(includeIfNull: false) final String? object,
          @JsonKey(includeIfNull: false) final String? model,
          @JsonKey(includeIfNull: false) final UsageInfo? usage,
          @JsonKey(includeIfNull: false) final int? created}) =
      _$ChatCompletionResponseBaseImpl;
  const _ChatCompletionResponseBase._() : super._();

  factory _ChatCompletionResponseBase.fromJson(Map<String, dynamic> json) =
      _$ChatCompletionResponseBaseImpl.fromJson;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get id;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get object;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get model;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  UsageInfo? get usage;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  int? get created;

  /// Create a copy of ChatCompletionResponseBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatCompletionResponseBaseImplCopyWith<_$ChatCompletionResponseBaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChatCompletionResponse _$ChatCompletionResponseFromJson(
    Map<String, dynamic> json) {
  return _ChatCompletionResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionResponse {
  /// No Description
  String get id => throw _privateConstructorUsedError;

  /// No Description
  String get object => throw _privateConstructorUsedError;

  /// No Description
  String get model => throw _privateConstructorUsedError;

  /// No Description
  UsageInfo get usage => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  int? get created => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  List<ChatCompletionChoice>? get choices => throw _privateConstructorUsedError;

  /// Serializes this ChatCompletionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatCompletionResponseCopyWith<ChatCompletionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionResponseCopyWith<$Res> {
  factory $ChatCompletionResponseCopyWith(ChatCompletionResponse value,
          $Res Function(ChatCompletionResponse) then) =
      _$ChatCompletionResponseCopyWithImpl<$Res, ChatCompletionResponse>;
  @useResult
  $Res call(
      {String id,
      String object,
      String model,
      UsageInfo usage,
      @JsonKey(includeIfNull: false) int? created,
      @JsonKey(includeIfNull: false) List<ChatCompletionChoice>? choices});

  $UsageInfoCopyWith<$Res> get usage;
}

/// @nodoc
class _$ChatCompletionResponseCopyWithImpl<$Res,
        $Val extends ChatCompletionResponse>
    implements $ChatCompletionResponseCopyWith<$Res> {
  _$ChatCompletionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? model = null,
    Object? usage = null,
    Object? created = freezed,
    Object? choices = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionChoice>?,
    ) as $Val);
  }

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageInfoCopyWith<$Res> get usage {
    return $UsageInfoCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatCompletionResponseImplCopyWith<$Res>
    implements $ChatCompletionResponseCopyWith<$Res> {
  factory _$$ChatCompletionResponseImplCopyWith(
          _$ChatCompletionResponseImpl value,
          $Res Function(_$ChatCompletionResponseImpl) then) =
      __$$ChatCompletionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      String model,
      UsageInfo usage,
      @JsonKey(includeIfNull: false) int? created,
      @JsonKey(includeIfNull: false) List<ChatCompletionChoice>? choices});

  @override
  $UsageInfoCopyWith<$Res> get usage;
}

/// @nodoc
class __$$ChatCompletionResponseImplCopyWithImpl<$Res>
    extends _$ChatCompletionResponseCopyWithImpl<$Res,
        _$ChatCompletionResponseImpl>
    implements _$$ChatCompletionResponseImplCopyWith<$Res> {
  __$$ChatCompletionResponseImplCopyWithImpl(
      _$ChatCompletionResponseImpl _value,
      $Res Function(_$ChatCompletionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? model = null,
    Object? usage = null,
    Object? created = freezed,
    Object? choices = freezed,
  }) {
    return _then(_$ChatCompletionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionChoice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatCompletionResponseImpl extends _ChatCompletionResponse {
  const _$ChatCompletionResponseImpl(
      {required this.id,
      required this.object,
      required this.model,
      required this.usage,
      @JsonKey(includeIfNull: false) this.created,
      @JsonKey(includeIfNull: false) final List<ChatCompletionChoice>? choices})
      : _choices = choices,
        super._();

  factory _$ChatCompletionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatCompletionResponseImplFromJson(json);

  /// No Description
  @override
  final String id;

  /// No Description
  @override
  final String object;

  /// No Description
  @override
  final String model;

  /// No Description
  @override
  final UsageInfo usage;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final int? created;

  /// No Description
  final List<ChatCompletionChoice>? _choices;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<ChatCompletionChoice>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatCompletionResponse(id: $id, object: $object, model: $model, usage: $usage, created: $created, choices: $choices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatCompletionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, model, usage,
      created, const DeepCollectionEquality().hash(_choices));

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatCompletionResponseImplCopyWith<_$ChatCompletionResponseImpl>
      get copyWith => __$$ChatCompletionResponseImplCopyWithImpl<
          _$ChatCompletionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatCompletionResponseImplToJson(
      this,
    );
  }
}

abstract class _ChatCompletionResponse extends ChatCompletionResponse {
  const factory _ChatCompletionResponse(
          {required final String id,
          required final String object,
          required final String model,
          required final UsageInfo usage,
          @JsonKey(includeIfNull: false) final int? created,
          @JsonKey(includeIfNull: false)
          final List<ChatCompletionChoice>? choices}) =
      _$ChatCompletionResponseImpl;
  const _ChatCompletionResponse._() : super._();

  factory _ChatCompletionResponse.fromJson(Map<String, dynamic> json) =
      _$ChatCompletionResponseImpl.fromJson;

  /// No Description
  @override
  String get id;

  /// No Description
  @override
  String get object;

  /// No Description
  @override
  String get model;

  /// No Description
  @override
  UsageInfo get usage;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  int? get created;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<ChatCompletionChoice>? get choices;

  /// Create a copy of ChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatCompletionResponseImplCopyWith<_$ChatCompletionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FIMCompletionResponse _$FIMCompletionResponseFromJson(
    Map<String, dynamic> json) {
  return _FIMCompletionResponse.fromJson(json);
}

/// @nodoc
mixin _$FIMCompletionResponse {
  /// No Description
  String get id => throw _privateConstructorUsedError;

  /// No Description
  String get object => throw _privateConstructorUsedError;

  /// No Description
  String get model => throw _privateConstructorUsedError;

  /// No Description
  UsageInfo get usage => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  int? get created => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  List<ChatCompletionChoice>? get choices => throw _privateConstructorUsedError;

  /// Serializes this FIMCompletionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FIMCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FIMCompletionResponseCopyWith<FIMCompletionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FIMCompletionResponseCopyWith<$Res> {
  factory $FIMCompletionResponseCopyWith(FIMCompletionResponse value,
          $Res Function(FIMCompletionResponse) then) =
      _$FIMCompletionResponseCopyWithImpl<$Res, FIMCompletionResponse>;
  @useResult
  $Res call(
      {String id,
      String object,
      String model,
      UsageInfo usage,
      @JsonKey(includeIfNull: false) int? created,
      @JsonKey(includeIfNull: false) List<ChatCompletionChoice>? choices});

  $UsageInfoCopyWith<$Res> get usage;
}

/// @nodoc
class _$FIMCompletionResponseCopyWithImpl<$Res,
        $Val extends FIMCompletionResponse>
    implements $FIMCompletionResponseCopyWith<$Res> {
  _$FIMCompletionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FIMCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? model = null,
    Object? usage = null,
    Object? created = freezed,
    Object? choices = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionChoice>?,
    ) as $Val);
  }

  /// Create a copy of FIMCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageInfoCopyWith<$Res> get usage {
    return $UsageInfoCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FIMCompletionResponseImplCopyWith<$Res>
    implements $FIMCompletionResponseCopyWith<$Res> {
  factory _$$FIMCompletionResponseImplCopyWith(
          _$FIMCompletionResponseImpl value,
          $Res Function(_$FIMCompletionResponseImpl) then) =
      __$$FIMCompletionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      String model,
      UsageInfo usage,
      @JsonKey(includeIfNull: false) int? created,
      @JsonKey(includeIfNull: false) List<ChatCompletionChoice>? choices});

  @override
  $UsageInfoCopyWith<$Res> get usage;
}

/// @nodoc
class __$$FIMCompletionResponseImplCopyWithImpl<$Res>
    extends _$FIMCompletionResponseCopyWithImpl<$Res,
        _$FIMCompletionResponseImpl>
    implements _$$FIMCompletionResponseImplCopyWith<$Res> {
  __$$FIMCompletionResponseImplCopyWithImpl(_$FIMCompletionResponseImpl _value,
      $Res Function(_$FIMCompletionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FIMCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? model = null,
    Object? usage = null,
    Object? created = freezed,
    Object? choices = freezed,
  }) {
    return _then(_$FIMCompletionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionChoice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FIMCompletionResponseImpl extends _FIMCompletionResponse {
  const _$FIMCompletionResponseImpl(
      {required this.id,
      required this.object,
      required this.model,
      required this.usage,
      @JsonKey(includeIfNull: false) this.created,
      @JsonKey(includeIfNull: false) final List<ChatCompletionChoice>? choices})
      : _choices = choices,
        super._();

  factory _$FIMCompletionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FIMCompletionResponseImplFromJson(json);

  /// No Description
  @override
  final String id;

  /// No Description
  @override
  final String object;

  /// No Description
  @override
  final String model;

  /// No Description
  @override
  final UsageInfo usage;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final int? created;

  /// No Description
  final List<ChatCompletionChoice>? _choices;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<ChatCompletionChoice>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FIMCompletionResponse(id: $id, object: $object, model: $model, usage: $usage, created: $created, choices: $choices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FIMCompletionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, model, usage,
      created, const DeepCollectionEquality().hash(_choices));

  /// Create a copy of FIMCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FIMCompletionResponseImplCopyWith<_$FIMCompletionResponseImpl>
      get copyWith => __$$FIMCompletionResponseImplCopyWithImpl<
          _$FIMCompletionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FIMCompletionResponseImplToJson(
      this,
    );
  }
}

abstract class _FIMCompletionResponse extends FIMCompletionResponse {
  const factory _FIMCompletionResponse(
      {required final String id,
      required final String object,
      required final String model,
      required final UsageInfo usage,
      @JsonKey(includeIfNull: false) final int? created,
      @JsonKey(includeIfNull: false)
      final List<ChatCompletionChoice>? choices}) = _$FIMCompletionResponseImpl;
  const _FIMCompletionResponse._() : super._();

  factory _FIMCompletionResponse.fromJson(Map<String, dynamic> json) =
      _$FIMCompletionResponseImpl.fromJson;

  /// No Description
  @override
  String get id;

  /// No Description
  @override
  String get object;

  /// No Description
  @override
  String get model;

  /// No Description
  @override
  UsageInfo get usage;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  int? get created;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<ChatCompletionChoice>? get choices;

  /// Create a copy of FIMCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FIMCompletionResponseImplCopyWith<_$FIMCompletionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EmbeddingResponseData _$EmbeddingResponseDataFromJson(
    Map<String, dynamic> json) {
  return _EmbeddingResponseData.fromJson(json);
}

/// @nodoc
mixin _$EmbeddingResponseData {
  /// No Description
  @JsonKey(includeIfNull: false)
  String? get object => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  List<double>? get embedding => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  int? get index => throw _privateConstructorUsedError;

  /// Serializes this EmbeddingResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmbeddingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbeddingResponseDataCopyWith<EmbeddingResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbeddingResponseDataCopyWith<$Res> {
  factory $EmbeddingResponseDataCopyWith(EmbeddingResponseData value,
          $Res Function(EmbeddingResponseData) then) =
      _$EmbeddingResponseDataCopyWithImpl<$Res, EmbeddingResponseData>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? object,
      @JsonKey(includeIfNull: false) List<double>? embedding,
      @JsonKey(includeIfNull: false) int? index});
}

/// @nodoc
class _$EmbeddingResponseDataCopyWithImpl<$Res,
        $Val extends EmbeddingResponseData>
    implements $EmbeddingResponseDataCopyWith<$Res> {
  _$EmbeddingResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmbeddingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = freezed,
    Object? embedding = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      embedding: freezed == embedding
          ? _value.embedding
          : embedding // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmbeddingResponseDataImplCopyWith<$Res>
    implements $EmbeddingResponseDataCopyWith<$Res> {
  factory _$$EmbeddingResponseDataImplCopyWith(
          _$EmbeddingResponseDataImpl value,
          $Res Function(_$EmbeddingResponseDataImpl) then) =
      __$$EmbeddingResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? object,
      @JsonKey(includeIfNull: false) List<double>? embedding,
      @JsonKey(includeIfNull: false) int? index});
}

/// @nodoc
class __$$EmbeddingResponseDataImplCopyWithImpl<$Res>
    extends _$EmbeddingResponseDataCopyWithImpl<$Res,
        _$EmbeddingResponseDataImpl>
    implements _$$EmbeddingResponseDataImplCopyWith<$Res> {
  __$$EmbeddingResponseDataImplCopyWithImpl(_$EmbeddingResponseDataImpl _value,
      $Res Function(_$EmbeddingResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmbeddingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = freezed,
    Object? embedding = freezed,
    Object? index = freezed,
  }) {
    return _then(_$EmbeddingResponseDataImpl(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      embedding: freezed == embedding
          ? _value._embedding
          : embedding // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbeddingResponseDataImpl extends _EmbeddingResponseData {
  const _$EmbeddingResponseDataImpl(
      {@JsonKey(includeIfNull: false) this.object,
      @JsonKey(includeIfNull: false) final List<double>? embedding,
      @JsonKey(includeIfNull: false) this.index})
      : _embedding = embedding,
        super._();

  factory _$EmbeddingResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbeddingResponseDataImplFromJson(json);

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? object;

  /// No Description
  final List<double>? _embedding;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<double>? get embedding {
    final value = _embedding;
    if (value == null) return null;
    if (_embedding is EqualUnmodifiableListView) return _embedding;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final int? index;

  @override
  String toString() {
    return 'EmbeddingResponseData(object: $object, embedding: $embedding, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbeddingResponseDataImpl &&
            (identical(other.object, object) || other.object == object) &&
            const DeepCollectionEquality()
                .equals(other._embedding, _embedding) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, object,
      const DeepCollectionEquality().hash(_embedding), index);

  /// Create a copy of EmbeddingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbeddingResponseDataImplCopyWith<_$EmbeddingResponseDataImpl>
      get copyWith => __$$EmbeddingResponseDataImplCopyWithImpl<
          _$EmbeddingResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbeddingResponseDataImplToJson(
      this,
    );
  }
}

abstract class _EmbeddingResponseData extends EmbeddingResponseData {
  const factory _EmbeddingResponseData(
          {@JsonKey(includeIfNull: false) final String? object,
          @JsonKey(includeIfNull: false) final List<double>? embedding,
          @JsonKey(includeIfNull: false) final int? index}) =
      _$EmbeddingResponseDataImpl;
  const _EmbeddingResponseData._() : super._();

  factory _EmbeddingResponseData.fromJson(Map<String, dynamic> json) =
      _$EmbeddingResponseDataImpl.fromJson;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get object;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  List<double>? get embedding;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  int? get index;

  /// Create a copy of EmbeddingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbeddingResponseDataImplCopyWith<_$EmbeddingResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EmbeddingResponse _$EmbeddingResponseFromJson(Map<String, dynamic> json) {
  return _EmbeddingResponse.fromJson(json);
}

/// @nodoc
mixin _$EmbeddingResponse {
  /// No Description
  String get id => throw _privateConstructorUsedError;

  /// No Description
  String get object => throw _privateConstructorUsedError;

  /// No Description
  String get model => throw _privateConstructorUsedError;

  /// No Description
  UsageInfo get usage => throw _privateConstructorUsedError;

  /// No Description
  List<EmbeddingResponseData> get data => throw _privateConstructorUsedError;

  /// Serializes this EmbeddingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmbeddingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbeddingResponseCopyWith<EmbeddingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbeddingResponseCopyWith<$Res> {
  factory $EmbeddingResponseCopyWith(
          EmbeddingResponse value, $Res Function(EmbeddingResponse) then) =
      _$EmbeddingResponseCopyWithImpl<$Res, EmbeddingResponse>;
  @useResult
  $Res call(
      {String id,
      String object,
      String model,
      UsageInfo usage,
      List<EmbeddingResponseData> data});

  $UsageInfoCopyWith<$Res> get usage;
}

/// @nodoc
class _$EmbeddingResponseCopyWithImpl<$Res, $Val extends EmbeddingResponse>
    implements $EmbeddingResponseCopyWith<$Res> {
  _$EmbeddingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmbeddingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? model = null,
    Object? usage = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EmbeddingResponseData>,
    ) as $Val);
  }

  /// Create a copy of EmbeddingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageInfoCopyWith<$Res> get usage {
    return $UsageInfoCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmbeddingResponseImplCopyWith<$Res>
    implements $EmbeddingResponseCopyWith<$Res> {
  factory _$$EmbeddingResponseImplCopyWith(_$EmbeddingResponseImpl value,
          $Res Function(_$EmbeddingResponseImpl) then) =
      __$$EmbeddingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      String model,
      UsageInfo usage,
      List<EmbeddingResponseData> data});

  @override
  $UsageInfoCopyWith<$Res> get usage;
}

/// @nodoc
class __$$EmbeddingResponseImplCopyWithImpl<$Res>
    extends _$EmbeddingResponseCopyWithImpl<$Res, _$EmbeddingResponseImpl>
    implements _$$EmbeddingResponseImplCopyWith<$Res> {
  __$$EmbeddingResponseImplCopyWithImpl(_$EmbeddingResponseImpl _value,
      $Res Function(_$EmbeddingResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmbeddingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? model = null,
    Object? usage = null,
    Object? data = null,
  }) {
    return _then(_$EmbeddingResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EmbeddingResponseData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbeddingResponseImpl extends _EmbeddingResponse {
  const _$EmbeddingResponseImpl(
      {required this.id,
      required this.object,
      required this.model,
      required this.usage,
      required final List<EmbeddingResponseData> data})
      : _data = data,
        super._();

  factory _$EmbeddingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbeddingResponseImplFromJson(json);

  /// No Description
  @override
  final String id;

  /// No Description
  @override
  final String object;

  /// No Description
  @override
  final String model;

  /// No Description
  @override
  final UsageInfo usage;

  /// No Description
  final List<EmbeddingResponseData> _data;

  /// No Description
  @override
  List<EmbeddingResponseData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'EmbeddingResponse(id: $id, object: $object, model: $model, usage: $usage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbeddingResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, model, usage,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of EmbeddingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbeddingResponseImplCopyWith<_$EmbeddingResponseImpl> get copyWith =>
      __$$EmbeddingResponseImplCopyWithImpl<_$EmbeddingResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbeddingResponseImplToJson(
      this,
    );
  }
}

abstract class _EmbeddingResponse extends EmbeddingResponse {
  const factory _EmbeddingResponse(
          {required final String id,
          required final String object,
          required final String model,
          required final UsageInfo usage,
          required final List<EmbeddingResponseData> data}) =
      _$EmbeddingResponseImpl;
  const _EmbeddingResponse._() : super._();

  factory _EmbeddingResponse.fromJson(Map<String, dynamic> json) =
      _$EmbeddingResponseImpl.fromJson;

  /// No Description
  @override
  String get id;

  /// No Description
  @override
  String get object;

  /// No Description
  @override
  String get model;

  /// No Description
  @override
  UsageInfo get usage;

  /// No Description
  @override
  List<EmbeddingResponseData> get data;

  /// Create a copy of EmbeddingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbeddingResponseImplCopyWith<_$EmbeddingResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletionEvent _$CompletionEventFromJson(Map<String, dynamic> json) {
  return _CompletionEvent.fromJson(json);
}

/// @nodoc
mixin _$CompletionEvent {
  /// No Description
  CompletionChunk get data => throw _privateConstructorUsedError;

  /// Serializes this CompletionEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletionEventCopyWith<CompletionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionEventCopyWith<$Res> {
  factory $CompletionEventCopyWith(
          CompletionEvent value, $Res Function(CompletionEvent) then) =
      _$CompletionEventCopyWithImpl<$Res, CompletionEvent>;
  @useResult
  $Res call({CompletionChunk data});

  $CompletionChunkCopyWith<$Res> get data;
}

/// @nodoc
class _$CompletionEventCopyWithImpl<$Res, $Val extends CompletionEvent>
    implements $CompletionEventCopyWith<$Res> {
  _$CompletionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompletionChunk,
    ) as $Val);
  }

  /// Create a copy of CompletionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompletionChunkCopyWith<$Res> get data {
    return $CompletionChunkCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletionEventImplCopyWith<$Res>
    implements $CompletionEventCopyWith<$Res> {
  factory _$$CompletionEventImplCopyWith(_$CompletionEventImpl value,
          $Res Function(_$CompletionEventImpl) then) =
      __$$CompletionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CompletionChunk data});

  @override
  $CompletionChunkCopyWith<$Res> get data;
}

/// @nodoc
class __$$CompletionEventImplCopyWithImpl<$Res>
    extends _$CompletionEventCopyWithImpl<$Res, _$CompletionEventImpl>
    implements _$$CompletionEventImplCopyWith<$Res> {
  __$$CompletionEventImplCopyWithImpl(
      _$CompletionEventImpl _value, $Res Function(_$CompletionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CompletionEventImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompletionChunk,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionEventImpl extends _CompletionEvent {
  const _$CompletionEventImpl({required this.data}) : super._();

  factory _$CompletionEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletionEventImplFromJson(json);

  /// No Description
  @override
  final CompletionChunk data;

  @override
  String toString() {
    return 'CompletionEvent(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionEventImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CompletionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionEventImplCopyWith<_$CompletionEventImpl> get copyWith =>
      __$$CompletionEventImplCopyWithImpl<_$CompletionEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionEventImplToJson(
      this,
    );
  }
}

abstract class _CompletionEvent extends CompletionEvent {
  const factory _CompletionEvent({required final CompletionChunk data}) =
      _$CompletionEventImpl;
  const _CompletionEvent._() : super._();

  factory _CompletionEvent.fromJson(Map<String, dynamic> json) =
      _$CompletionEventImpl.fromJson;

  /// No Description
  @override
  CompletionChunk get data;

  /// Create a copy of CompletionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletionEventImplCopyWith<_$CompletionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletionChunk _$CompletionChunkFromJson(Map<String, dynamic> json) {
  return _CompletionChunk.fromJson(json);
}

/// @nodoc
mixin _$CompletionChunk {
  /// No Description
  String get id => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get object => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  int? get created => throw _privateConstructorUsedError;

  /// No Description
  String get model => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  UsageInfo? get usage => throw _privateConstructorUsedError;

  /// No Description
  List<CompletionResponseStreamChoice> get choices =>
      throw _privateConstructorUsedError;

  /// Serializes this CompletionChunk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletionChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletionChunkCopyWith<CompletionChunk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionChunkCopyWith<$Res> {
  factory $CompletionChunkCopyWith(
          CompletionChunk value, $Res Function(CompletionChunk) then) =
      _$CompletionChunkCopyWithImpl<$Res, CompletionChunk>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeIfNull: false) String? object,
      @JsonKey(includeIfNull: false) int? created,
      String model,
      @JsonKey(includeIfNull: false) UsageInfo? usage,
      List<CompletionResponseStreamChoice> choices});

  $UsageInfoCopyWith<$Res>? get usage;
}

/// @nodoc
class _$CompletionChunkCopyWithImpl<$Res, $Val extends CompletionChunk>
    implements $CompletionChunkCopyWith<$Res> {
  _$CompletionChunkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletionChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = freezed,
    Object? created = freezed,
    Object? model = null,
    Object? usage = freezed,
    Object? choices = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo?,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<CompletionResponseStreamChoice>,
    ) as $Val);
  }

  /// Create a copy of CompletionChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageInfoCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $UsageInfoCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletionChunkImplCopyWith<$Res>
    implements $CompletionChunkCopyWith<$Res> {
  factory _$$CompletionChunkImplCopyWith(_$CompletionChunkImpl value,
          $Res Function(_$CompletionChunkImpl) then) =
      __$$CompletionChunkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeIfNull: false) String? object,
      @JsonKey(includeIfNull: false) int? created,
      String model,
      @JsonKey(includeIfNull: false) UsageInfo? usage,
      List<CompletionResponseStreamChoice> choices});

  @override
  $UsageInfoCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$CompletionChunkImplCopyWithImpl<$Res>
    extends _$CompletionChunkCopyWithImpl<$Res, _$CompletionChunkImpl>
    implements _$$CompletionChunkImplCopyWith<$Res> {
  __$$CompletionChunkImplCopyWithImpl(
      _$CompletionChunkImpl _value, $Res Function(_$CompletionChunkImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletionChunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = freezed,
    Object? created = freezed,
    Object? model = null,
    Object? usage = freezed,
    Object? choices = null,
  }) {
    return _then(_$CompletionChunkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageInfo?,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<CompletionResponseStreamChoice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionChunkImpl extends _CompletionChunk {
  const _$CompletionChunkImpl(
      {required this.id,
      @JsonKey(includeIfNull: false) this.object,
      @JsonKey(includeIfNull: false) this.created,
      required this.model,
      @JsonKey(includeIfNull: false) this.usage,
      required final List<CompletionResponseStreamChoice> choices})
      : _choices = choices,
        super._();

  factory _$CompletionChunkImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletionChunkImplFromJson(json);

  /// No Description
  @override
  final String id;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? object;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final int? created;

  /// No Description
  @override
  final String model;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final UsageInfo? usage;

  /// No Description
  final List<CompletionResponseStreamChoice> _choices;

  /// No Description
  @override
  List<CompletionResponseStreamChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  String toString() {
    return 'CompletionChunk(id: $id, object: $object, created: $created, model: $model, usage: $usage, choices: $choices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionChunkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created, model,
      usage, const DeepCollectionEquality().hash(_choices));

  /// Create a copy of CompletionChunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionChunkImplCopyWith<_$CompletionChunkImpl> get copyWith =>
      __$$CompletionChunkImplCopyWithImpl<_$CompletionChunkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionChunkImplToJson(
      this,
    );
  }
}

abstract class _CompletionChunk extends CompletionChunk {
  const factory _CompletionChunk(
          {required final String id,
          @JsonKey(includeIfNull: false) final String? object,
          @JsonKey(includeIfNull: false) final int? created,
          required final String model,
          @JsonKey(includeIfNull: false) final UsageInfo? usage,
          required final List<CompletionResponseStreamChoice> choices}) =
      _$CompletionChunkImpl;
  const _CompletionChunk._() : super._();

  factory _CompletionChunk.fromJson(Map<String, dynamic> json) =
      _$CompletionChunkImpl.fromJson;

  /// No Description
  @override
  String get id;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get object;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  int? get created;

  /// No Description
  @override
  String get model;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  UsageInfo? get usage;

  /// No Description
  @override
  List<CompletionResponseStreamChoice> get choices;

  /// Create a copy of CompletionChunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletionChunkImplCopyWith<_$CompletionChunkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletionResponseStreamChoice _$CompletionResponseStreamChoiceFromJson(
    Map<String, dynamic> json) {
  return _CompletionResponseStreamChoice.fromJson(json);
}

/// @nodoc
mixin _$CompletionResponseStreamChoice {
  /// No Description
  int get index => throw _privateConstructorUsedError;

  /// No Description
  DeltaMessage get delta => throw _privateConstructorUsedError;

  ///
  @JsonKey(
      name: 'finish_reason',
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  CompletionResponseStreamChoiceFinishReason? get finishReason =>
      throw _privateConstructorUsedError;

  /// Serializes this CompletionResponseStreamChoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletionResponseStreamChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletionResponseStreamChoiceCopyWith<CompletionResponseStreamChoice>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionResponseStreamChoiceCopyWith<$Res> {
  factory $CompletionResponseStreamChoiceCopyWith(
          CompletionResponseStreamChoice value,
          $Res Function(CompletionResponseStreamChoice) then) =
      _$CompletionResponseStreamChoiceCopyWithImpl<$Res,
          CompletionResponseStreamChoice>;
  @useResult
  $Res call(
      {int index,
      DeltaMessage delta,
      @JsonKey(
          name: 'finish_reason',
          unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      CompletionResponseStreamChoiceFinishReason? finishReason});

  $DeltaMessageCopyWith<$Res> get delta;
}

/// @nodoc
class _$CompletionResponseStreamChoiceCopyWithImpl<$Res,
        $Val extends CompletionResponseStreamChoice>
    implements $CompletionResponseStreamChoiceCopyWith<$Res> {
  _$CompletionResponseStreamChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletionResponseStreamChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? delta = null,
    Object? finishReason = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as DeltaMessage,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as CompletionResponseStreamChoiceFinishReason?,
    ) as $Val);
  }

  /// Create a copy of CompletionResponseStreamChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaMessageCopyWith<$Res> get delta {
    return $DeltaMessageCopyWith<$Res>(_value.delta, (value) {
      return _then(_value.copyWith(delta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletionResponseStreamChoiceImplCopyWith<$Res>
    implements $CompletionResponseStreamChoiceCopyWith<$Res> {
  factory _$$CompletionResponseStreamChoiceImplCopyWith(
          _$CompletionResponseStreamChoiceImpl value,
          $Res Function(_$CompletionResponseStreamChoiceImpl) then) =
      __$$CompletionResponseStreamChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      DeltaMessage delta,
      @JsonKey(
          name: 'finish_reason',
          unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      CompletionResponseStreamChoiceFinishReason? finishReason});

  @override
  $DeltaMessageCopyWith<$Res> get delta;
}

/// @nodoc
class __$$CompletionResponseStreamChoiceImplCopyWithImpl<$Res>
    extends _$CompletionResponseStreamChoiceCopyWithImpl<$Res,
        _$CompletionResponseStreamChoiceImpl>
    implements _$$CompletionResponseStreamChoiceImplCopyWith<$Res> {
  __$$CompletionResponseStreamChoiceImplCopyWithImpl(
      _$CompletionResponseStreamChoiceImpl _value,
      $Res Function(_$CompletionResponseStreamChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletionResponseStreamChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? delta = null,
    Object? finishReason = freezed,
  }) {
    return _then(_$CompletionResponseStreamChoiceImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as DeltaMessage,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as CompletionResponseStreamChoiceFinishReason?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionResponseStreamChoiceImpl
    extends _CompletionResponseStreamChoice {
  const _$CompletionResponseStreamChoiceImpl(
      {required this.index,
      required this.delta,
      @JsonKey(
          name: 'finish_reason',
          unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      required this.finishReason})
      : super._();

  factory _$CompletionResponseStreamChoiceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CompletionResponseStreamChoiceImplFromJson(json);

  /// No Description
  @override
  final int index;

  /// No Description
  @override
  final DeltaMessage delta;

  ///
  @override
  @JsonKey(
      name: 'finish_reason',
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final CompletionResponseStreamChoiceFinishReason? finishReason;

  @override
  String toString() {
    return 'CompletionResponseStreamChoice(index: $index, delta: $delta, finishReason: $finishReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionResponseStreamChoiceImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.delta, delta) || other.delta == delta) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, delta, finishReason);

  /// Create a copy of CompletionResponseStreamChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionResponseStreamChoiceImplCopyWith<
          _$CompletionResponseStreamChoiceImpl>
      get copyWith => __$$CompletionResponseStreamChoiceImplCopyWithImpl<
          _$CompletionResponseStreamChoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionResponseStreamChoiceImplToJson(
      this,
    );
  }
}

abstract class _CompletionResponseStreamChoice
    extends CompletionResponseStreamChoice {
  const factory _CompletionResponseStreamChoice(
      {required final int index,
      required final DeltaMessage delta,
      @JsonKey(
          name: 'finish_reason',
          unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      required final CompletionResponseStreamChoiceFinishReason?
          finishReason}) = _$CompletionResponseStreamChoiceImpl;
  const _CompletionResponseStreamChoice._() : super._();

  factory _CompletionResponseStreamChoice.fromJson(Map<String, dynamic> json) =
      _$CompletionResponseStreamChoiceImpl.fromJson;

  /// No Description
  @override
  int get index;

  /// No Description
  @override
  DeltaMessage get delta;

  ///
  @override
  @JsonKey(
      name: 'finish_reason',
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  CompletionResponseStreamChoiceFinishReason? get finishReason;

  /// Create a copy of CompletionResponseStreamChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletionResponseStreamChoiceImplCopyWith<
          _$CompletionResponseStreamChoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeltaMessage _$DeltaMessageFromJson(Map<String, dynamic> json) {
  return _DeltaMessage.fromJson(json);
}

/// @nodoc
mixin _$DeltaMessage {
  /// No Description
  @JsonKey(includeIfNull: false)
  String? get role => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(includeIfNull: false)
  String? get content => throw _privateConstructorUsedError;

  /// No Description
  @JsonKey(name: 'tool_calls', includeIfNull: false)
  List<ToolCall>? get toolCalls => throw _privateConstructorUsedError;

  /// Serializes this DeltaMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeltaMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeltaMessageCopyWith<DeltaMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeltaMessageCopyWith<$Res> {
  factory $DeltaMessageCopyWith(
          DeltaMessage value, $Res Function(DeltaMessage) then) =
      _$DeltaMessageCopyWithImpl<$Res, DeltaMessage>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? role,
      @JsonKey(includeIfNull: false) String? content,
      @JsonKey(name: 'tool_calls', includeIfNull: false)
      List<ToolCall>? toolCalls});
}

/// @nodoc
class _$DeltaMessageCopyWithImpl<$Res, $Val extends DeltaMessage>
    implements $DeltaMessageCopyWith<$Res> {
  _$DeltaMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeltaMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? content = freezed,
    Object? toolCalls = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      toolCalls: freezed == toolCalls
          ? _value.toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<ToolCall>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeltaMessageImplCopyWith<$Res>
    implements $DeltaMessageCopyWith<$Res> {
  factory _$$DeltaMessageImplCopyWith(
          _$DeltaMessageImpl value, $Res Function(_$DeltaMessageImpl) then) =
      __$$DeltaMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? role,
      @JsonKey(includeIfNull: false) String? content,
      @JsonKey(name: 'tool_calls', includeIfNull: false)
      List<ToolCall>? toolCalls});
}

/// @nodoc
class __$$DeltaMessageImplCopyWithImpl<$Res>
    extends _$DeltaMessageCopyWithImpl<$Res, _$DeltaMessageImpl>
    implements _$$DeltaMessageImplCopyWith<$Res> {
  __$$DeltaMessageImplCopyWithImpl(
      _$DeltaMessageImpl _value, $Res Function(_$DeltaMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeltaMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? content = freezed,
    Object? toolCalls = freezed,
  }) {
    return _then(_$DeltaMessageImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      toolCalls: freezed == toolCalls
          ? _value._toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<ToolCall>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeltaMessageImpl extends _DeltaMessage {
  const _$DeltaMessageImpl(
      {@JsonKey(includeIfNull: false) this.role,
      @JsonKey(includeIfNull: false) this.content,
      @JsonKey(name: 'tool_calls', includeIfNull: false)
      final List<ToolCall>? toolCalls})
      : _toolCalls = toolCalls,
        super._();

  factory _$DeltaMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeltaMessageImplFromJson(json);

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? role;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  final String? content;

  /// No Description
  final List<ToolCall>? _toolCalls;

  /// No Description
  @override
  @JsonKey(name: 'tool_calls', includeIfNull: false)
  List<ToolCall>? get toolCalls {
    final value = _toolCalls;
    if (value == null) return null;
    if (_toolCalls is EqualUnmodifiableListView) return _toolCalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeltaMessage(role: $role, content: $content, toolCalls: $toolCalls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeltaMessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._toolCalls, _toolCalls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content,
      const DeepCollectionEquality().hash(_toolCalls));

  /// Create a copy of DeltaMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeltaMessageImplCopyWith<_$DeltaMessageImpl> get copyWith =>
      __$$DeltaMessageImplCopyWithImpl<_$DeltaMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeltaMessageImplToJson(
      this,
    );
  }
}

abstract class _DeltaMessage extends DeltaMessage {
  const factory _DeltaMessage(
      {@JsonKey(includeIfNull: false) final String? role,
      @JsonKey(includeIfNull: false) final String? content,
      @JsonKey(name: 'tool_calls', includeIfNull: false)
      final List<ToolCall>? toolCalls}) = _$DeltaMessageImpl;
  const _DeltaMessage._() : super._();

  factory _DeltaMessage.fromJson(Map<String, dynamic> json) =
      _$DeltaMessageImpl.fromJson;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get role;

  /// No Description
  @override
  @JsonKey(includeIfNull: false)
  String? get content;

  /// No Description
  @override
  @JsonKey(name: 'tool_calls', includeIfNull: false)
  List<ToolCall>? get toolCalls;

  /// Create a copy of DeltaMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeltaMessageImplCopyWith<_$DeltaMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
