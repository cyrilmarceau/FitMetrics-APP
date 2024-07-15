// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Jwt _$JwtFromJson(Map<String, dynamic> json) {
  return _Jwt.fromJson(json);
}

/// @nodoc
mixin _$Jwt {
  String get access => throw _privateConstructorUsedError;
  String get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JwtCopyWith<Jwt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtCopyWith<$Res> {
  factory $JwtCopyWith(Jwt value, $Res Function(Jwt) then) =
      _$JwtCopyWithImpl<$Res, Jwt>;
  @useResult
  $Res call({String access, String refresh});
}

/// @nodoc
class _$JwtCopyWithImpl<$Res, $Val extends Jwt> implements $JwtCopyWith<$Res> {
  _$JwtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JwtImplCopyWith<$Res> implements $JwtCopyWith<$Res> {
  factory _$$JwtImplCopyWith(_$JwtImpl value, $Res Function(_$JwtImpl) then) =
      __$$JwtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access, String refresh});
}

/// @nodoc
class __$$JwtImplCopyWithImpl<$Res> extends _$JwtCopyWithImpl<$Res, _$JwtImpl>
    implements _$$JwtImplCopyWith<$Res> {
  __$$JwtImplCopyWithImpl(_$JwtImpl _value, $Res Function(_$JwtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_$JwtImpl(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JwtImpl implements _Jwt {
  const _$JwtImpl({required this.access, required this.refresh});

  factory _$JwtImpl.fromJson(Map<String, dynamic> json) =>
      _$$JwtImplFromJson(json);

  @override
  final String access;
  @override
  final String refresh;

  @override
  String toString() {
    return 'Jwt(access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtImpl &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtImplCopyWith<_$JwtImpl> get copyWith =>
      __$$JwtImplCopyWithImpl<_$JwtImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JwtImplToJson(
      this,
    );
  }
}

abstract class _Jwt implements Jwt {
  const factory _Jwt(
      {required final String access,
      required final String refresh}) = _$JwtImpl;

  factory _Jwt.fromJson(Map<String, dynamic> json) = _$JwtImpl.fromJson;

  @override
  String get access;
  @override
  String get refresh;
  @override
  @JsonKey(ignore: true)
  _$$JwtImplCopyWith<_$JwtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
