// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muscle_group_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MuscleGroupResponse _$MuscleGroupResponseFromJson(Map<String, dynamic> json) {
  return _MuscleGroupResponse.fromJson(json);
}

/// @nodoc
mixin _$MuscleGroupResponse {
  bool get success => throw _privateConstructorUsedError;
  MessagesAPI get messages => throw _privateConstructorUsedError;
  List<MuscleGroup> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MuscleGroupResponseCopyWith<MuscleGroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleGroupResponseCopyWith<$Res> {
  factory $MuscleGroupResponseCopyWith(
          MuscleGroupResponse value, $Res Function(MuscleGroupResponse) then) =
      _$MuscleGroupResponseCopyWithImpl<$Res, MuscleGroupResponse>;
  @useResult
  $Res call({bool success, MessagesAPI messages, List<MuscleGroup> data});

  $MessagesAPICopyWith<$Res> get messages;
}

/// @nodoc
class _$MuscleGroupResponseCopyWithImpl<$Res, $Val extends MuscleGroupResponse>
    implements $MuscleGroupResponseCopyWith<$Res> {
  _$MuscleGroupResponseCopyWithImpl(this._value, this._then);

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
              as List<MuscleGroup>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessagesAPICopyWith<$Res> get messages {
    return $MessagesAPICopyWith<$Res>(_value.messages, (value) {
      return _then(_value.copyWith(messages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MuscleGroupResponseImplCopyWith<$Res>
    implements $MuscleGroupResponseCopyWith<$Res> {
  factory _$$MuscleGroupResponseImplCopyWith(_$MuscleGroupResponseImpl value,
          $Res Function(_$MuscleGroupResponseImpl) then) =
      __$$MuscleGroupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, MessagesAPI messages, List<MuscleGroup> data});

  @override
  $MessagesAPICopyWith<$Res> get messages;
}

/// @nodoc
class __$$MuscleGroupResponseImplCopyWithImpl<$Res>
    extends _$MuscleGroupResponseCopyWithImpl<$Res, _$MuscleGroupResponseImpl>
    implements _$$MuscleGroupResponseImplCopyWith<$Res> {
  __$$MuscleGroupResponseImplCopyWithImpl(_$MuscleGroupResponseImpl _value,
      $Res Function(_$MuscleGroupResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? messages = null,
    Object? data = null,
  }) {
    return _then(_$MuscleGroupResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as MessagesAPI,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MuscleGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MuscleGroupResponseImpl implements _MuscleGroupResponse {
  const _$MuscleGroupResponseImpl(
      {required this.success,
      required this.messages,
      required final List<MuscleGroup> data})
      : _data = data;

  factory _$MuscleGroupResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuscleGroupResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final MessagesAPI messages;
  final List<MuscleGroup> _data;
  @override
  List<MuscleGroup> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MuscleGroupResponse(success: $success, messages: $messages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuscleGroupResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, messages,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MuscleGroupResponseImplCopyWith<_$MuscleGroupResponseImpl> get copyWith =>
      __$$MuscleGroupResponseImplCopyWithImpl<_$MuscleGroupResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MuscleGroupResponseImplToJson(
      this,
    );
  }
}

abstract class _MuscleGroupResponse implements MuscleGroupResponse {
  const factory _MuscleGroupResponse(
      {required final bool success,
      required final MessagesAPI messages,
      required final List<MuscleGroup> data}) = _$MuscleGroupResponseImpl;

  factory _MuscleGroupResponse.fromJson(Map<String, dynamic> json) =
      _$MuscleGroupResponseImpl.fromJson;

  @override
  bool get success;
  @override
  MessagesAPI get messages;
  @override
  List<MuscleGroup> get data;
  @override
  @JsonKey(ignore: true)
  _$$MuscleGroupResponseImplCopyWith<_$MuscleGroupResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MuscleGroupError _$MuscleGroupErrorFromJson(Map<String, dynamic> json) {
  return _MuscleGroupError.fromJson(json);
}

/// @nodoc
mixin _$MuscleGroupError {
  List<String>? get nonFieldErrors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MuscleGroupErrorCopyWith<MuscleGroupError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleGroupErrorCopyWith<$Res> {
  factory $MuscleGroupErrorCopyWith(
          MuscleGroupError value, $Res Function(MuscleGroupError) then) =
      _$MuscleGroupErrorCopyWithImpl<$Res, MuscleGroupError>;
  @useResult
  $Res call({List<String>? nonFieldErrors});
}

/// @nodoc
class _$MuscleGroupErrorCopyWithImpl<$Res, $Val extends MuscleGroupError>
    implements $MuscleGroupErrorCopyWith<$Res> {
  _$MuscleGroupErrorCopyWithImpl(this._value, this._then);

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
abstract class _$$MuscleGroupErrorImplCopyWith<$Res>
    implements $MuscleGroupErrorCopyWith<$Res> {
  factory _$$MuscleGroupErrorImplCopyWith(_$MuscleGroupErrorImpl value,
          $Res Function(_$MuscleGroupErrorImpl) then) =
      __$$MuscleGroupErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? nonFieldErrors});
}

/// @nodoc
class __$$MuscleGroupErrorImplCopyWithImpl<$Res>
    extends _$MuscleGroupErrorCopyWithImpl<$Res, _$MuscleGroupErrorImpl>
    implements _$$MuscleGroupErrorImplCopyWith<$Res> {
  __$$MuscleGroupErrorImplCopyWithImpl(_$MuscleGroupErrorImpl _value,
      $Res Function(_$MuscleGroupErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_$MuscleGroupErrorImpl(
      nonFieldErrors: freezed == nonFieldErrors
          ? _value._nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MuscleGroupErrorImpl implements _MuscleGroupError {
  const _$MuscleGroupErrorImpl({final List<String>? nonFieldErrors})
      : _nonFieldErrors = nonFieldErrors;

  factory _$MuscleGroupErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuscleGroupErrorImplFromJson(json);

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
    return 'MuscleGroupError(nonFieldErrors: $nonFieldErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuscleGroupErrorImpl &&
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
  _$$MuscleGroupErrorImplCopyWith<_$MuscleGroupErrorImpl> get copyWith =>
      __$$MuscleGroupErrorImplCopyWithImpl<_$MuscleGroupErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MuscleGroupErrorImplToJson(
      this,
    );
  }
}

abstract class _MuscleGroupError implements MuscleGroupError {
  const factory _MuscleGroupError({final List<String>? nonFieldErrors}) =
      _$MuscleGroupErrorImpl;

  factory _MuscleGroupError.fromJson(Map<String, dynamic> json) =
      _$MuscleGroupErrorImpl.fromJson;

  @override
  List<String>? get nonFieldErrors;
  @override
  @JsonKey(ignore: true)
  _$$MuscleGroupErrorImplCopyWith<_$MuscleGroupErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
