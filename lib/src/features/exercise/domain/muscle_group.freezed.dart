// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muscle_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MuscleGroup _$MuscleGroupFromJson(Map<String, dynamic> json) {
  return _MuscleGroup.fromJson(json);
}

/// @nodoc
mixin _$MuscleGroup {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MuscleGroupCopyWith<MuscleGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleGroupCopyWith<$Res> {
  factory $MuscleGroupCopyWith(
          MuscleGroup value, $Res Function(MuscleGroup) then) =
      _$MuscleGroupCopyWithImpl<$Res, MuscleGroup>;
  @useResult
  $Res call(
      {int id,
      String name,
      String slug,
      String? description,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$MuscleGroupCopyWithImpl<$Res, $Val extends MuscleGroup>
    implements $MuscleGroupCopyWith<$Res> {
  _$MuscleGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MuscleGroupImplCopyWith<$Res>
    implements $MuscleGroupCopyWith<$Res> {
  factory _$$MuscleGroupImplCopyWith(
          _$MuscleGroupImpl value, $Res Function(_$MuscleGroupImpl) then) =
      __$$MuscleGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String slug,
      String? description,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$MuscleGroupImplCopyWithImpl<$Res>
    extends _$MuscleGroupCopyWithImpl<$Res, _$MuscleGroupImpl>
    implements _$$MuscleGroupImplCopyWith<$Res> {
  __$$MuscleGroupImplCopyWithImpl(
      _$MuscleGroupImpl _value, $Res Function(_$MuscleGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MuscleGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MuscleGroupImpl implements _MuscleGroup {
  const _$MuscleGroupImpl(
      {required this.id,
      required this.name,
      required this.slug,
      required this.description,
      required this.createdAt,
      required this.updatedAt});

  factory _$MuscleGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuscleGroupImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? description;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'MuscleGroup(id: $id, name: $name, slug: $slug, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuscleGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, slug, description, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MuscleGroupImplCopyWith<_$MuscleGroupImpl> get copyWith =>
      __$$MuscleGroupImplCopyWithImpl<_$MuscleGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MuscleGroupImplToJson(
      this,
    );
  }
}

abstract class _MuscleGroup implements MuscleGroup {
  const factory _MuscleGroup(
      {required final int id,
      required final String name,
      required final String slug,
      required final String? description,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$MuscleGroupImpl;

  factory _MuscleGroup.fromJson(Map<String, dynamic> json) =
      _$MuscleGroupImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get description;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$MuscleGroupImplCopyWith<_$MuscleGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
