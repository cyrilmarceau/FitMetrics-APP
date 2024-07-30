// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  bool get success => throw _privateConstructorUsedError;
  MessagesAPI get messages => throw _privateConstructorUsedError;
  User get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call({bool success, MessagesAPI messages, User data});

  $MessagesAPICopyWith<$Res> get messages;
  $UserCopyWith<$Res> get data;
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? messages = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as MessagesAPI,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessagesAPICopyWith<$Res> get messages {
    return $MessagesAPICopyWith<$Res>(_value.messages, (value) {
      return _then(_value.copyWith(messages: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get data {
    return $UserCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResponseImplCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseImplCopyWith(
          _$UserResponseImpl value, $Res Function(_$UserResponseImpl) then) =
      __$$UserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, MessagesAPI messages, User data});

  @override
  $MessagesAPICopyWith<$Res> get messages;
  @override
  $UserCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserResponseImplCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$UserResponseImpl>
    implements _$$UserResponseImplCopyWith<$Res> {
  __$$UserResponseImplCopyWithImpl(
      _$UserResponseImpl _value, $Res Function(_$UserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? messages = null,
    Object? data = null,
  }) {
    return _then(_$UserResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as MessagesAPI,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseImpl implements _UserResponse {
  const _$UserResponseImpl(
      {required this.success, required this.messages, required this.data});

  factory _$UserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final MessagesAPI messages;
  @override
  final User data;

  @override
  String toString() {
    return 'UserResponse(success: $success, messages: $messages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, messages, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      __$$UserResponseImplCopyWithImpl<_$UserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseImplToJson(
      this,
    );
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse(
      {required final bool success,
      required final MessagesAPI messages,
      required final User data}) = _$UserResponseImpl;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$UserResponseImpl.fromJson;

  @override
  bool get success;
  @override
  MessagesAPI get messages;
  @override
  User get data;
  @override
  @JsonKey(ignore: true)
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileError _$UserProfileErrorFromJson(Map<String, dynamic> json) {
  return _UserProfileError.fromJson(json);
}

/// @nodoc
mixin _$UserProfileError {
  List<String>? get nonFieldErrors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileErrorCopyWith<UserProfileError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileErrorCopyWith<$Res> {
  factory $UserProfileErrorCopyWith(
          UserProfileError value, $Res Function(UserProfileError) then) =
      _$UserProfileErrorCopyWithImpl<$Res, UserProfileError>;
  @useResult
  $Res call({List<String>? nonFieldErrors});
}

/// @nodoc
class _$UserProfileErrorCopyWithImpl<$Res, $Val extends UserProfileError>
    implements $UserProfileErrorCopyWith<$Res> {
  _$UserProfileErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_value.copyWith(
      nonFieldErrors: freezed == nonFieldErrors
          ? _value.nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileErrorImplCopyWith<$Res>
    implements $UserProfileErrorCopyWith<$Res> {
  factory _$$UserProfileErrorImplCopyWith(_$UserProfileErrorImpl value,
          $Res Function(_$UserProfileErrorImpl) then) =
      __$$UserProfileErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? nonFieldErrors});
}

/// @nodoc
class __$$UserProfileErrorImplCopyWithImpl<$Res>
    extends _$UserProfileErrorCopyWithImpl<$Res, _$UserProfileErrorImpl>
    implements _$$UserProfileErrorImplCopyWith<$Res> {
  __$$UserProfileErrorImplCopyWithImpl(_$UserProfileErrorImpl _value,
      $Res Function(_$UserProfileErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_$UserProfileErrorImpl(
      nonFieldErrors: freezed == nonFieldErrors
          ? _value._nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$UserProfileErrorImpl implements _UserProfileError {
  const _$UserProfileErrorImpl({final List<String>? nonFieldErrors})
      : _nonFieldErrors = nonFieldErrors;

  factory _$UserProfileErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileErrorImplFromJson(json);

  final List<String>? _nonFieldErrors;
  @override
  List<String>? get nonFieldErrors {
    final value = _nonFieldErrors;
    if (value == null) return null;
    if (_nonFieldErrors is EqualUnmodifiableListView) return _nonFieldErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserProfileError(nonFieldErrors: $nonFieldErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileErrorImpl &&
            const DeepCollectionEquality()
                .equals(other._nonFieldErrors, _nonFieldErrors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nonFieldErrors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileErrorImplCopyWith<_$UserProfileErrorImpl> get copyWith =>
      __$$UserProfileErrorImplCopyWithImpl<_$UserProfileErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileErrorImplToJson(
      this,
    );
  }
}

abstract class _UserProfileError implements UserProfileError {
  const factory _UserProfileError({final List<String>? nonFieldErrors}) =
      _$UserProfileErrorImpl;

  factory _UserProfileError.fromJson(Map<String, dynamic> json) =
      _$UserProfileErrorImpl.fromJson;

  @override
  List<String>? get nonFieldErrors;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileErrorImplCopyWith<_$UserProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
