// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseResponse _$ExerciseResponseFromJson(Map<String, dynamic> json) {
  return _ExerciseResponse.fromJson(json);
}

/// @nodoc
mixin _$ExerciseResponse {
  bool get success => throw _privateConstructorUsedError;
  MessagesAPI get messages => throw _privateConstructorUsedError;
  List<Exercise> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseResponseCopyWith<ExerciseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseResponseCopyWith<$Res> {
  factory $ExerciseResponseCopyWith(
          ExerciseResponse value, $Res Function(ExerciseResponse) then) =
      _$ExerciseResponseCopyWithImpl<$Res, ExerciseResponse>;
  @useResult
  $Res call({bool success, MessagesAPI messages, List<Exercise> data});

  $MessagesAPICopyWith<$Res> get messages;
}

/// @nodoc
class _$ExerciseResponseCopyWithImpl<$Res, $Val extends ExerciseResponse>
    implements $ExerciseResponseCopyWith<$Res> {
  _$ExerciseResponseCopyWithImpl(this._value, this._then);

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
              as List<Exercise>,
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
abstract class _$$ExerciseResponseImplCopyWith<$Res>
    implements $ExerciseResponseCopyWith<$Res> {
  factory _$$ExerciseResponseImplCopyWith(_$ExerciseResponseImpl value,
          $Res Function(_$ExerciseResponseImpl) then) =
      __$$ExerciseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, MessagesAPI messages, List<Exercise> data});

  @override
  $MessagesAPICopyWith<$Res> get messages;
}

/// @nodoc
class __$$ExerciseResponseImplCopyWithImpl<$Res>
    extends _$ExerciseResponseCopyWithImpl<$Res, _$ExerciseResponseImpl>
    implements _$$ExerciseResponseImplCopyWith<$Res> {
  __$$ExerciseResponseImplCopyWithImpl(_$ExerciseResponseImpl _value,
      $Res Function(_$ExerciseResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? messages = null,
    Object? data = null,
  }) {
    return _then(_$ExerciseResponseImpl(
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
              as List<Exercise>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseResponseImpl implements _ExerciseResponse {
  const _$ExerciseResponseImpl(
      {required this.success,
      required this.messages,
      required final List<Exercise> data})
      : _data = data;

  factory _$ExerciseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final MessagesAPI messages;
  final List<Exercise> _data;
  @override
  List<Exercise> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ExerciseResponse(success: $success, messages: $messages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseResponseImpl &&
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
  _$$ExerciseResponseImplCopyWith<_$ExerciseResponseImpl> get copyWith =>
      __$$ExerciseResponseImplCopyWithImpl<_$ExerciseResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseResponseImplToJson(
      this,
    );
  }
}

abstract class _ExerciseResponse implements ExerciseResponse {
  const factory _ExerciseResponse(
      {required final bool success,
      required final MessagesAPI messages,
      required final List<Exercise> data}) = _$ExerciseResponseImpl;

  factory _ExerciseResponse.fromJson(Map<String, dynamic> json) =
      _$ExerciseResponseImpl.fromJson;

  @override
  bool get success;
  @override
  MessagesAPI get messages;
  @override
  List<Exercise> get data;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseResponseImplCopyWith<_$ExerciseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExerciseError _$ExerciseErrorFromJson(Map<String, dynamic> json) {
  return _ExerciseError.fromJson(json);
}

/// @nodoc
mixin _$ExerciseError {
  List<String>? get nonFieldErrors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseErrorCopyWith<ExerciseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseErrorCopyWith<$Res> {
  factory $ExerciseErrorCopyWith(
          ExerciseError value, $Res Function(ExerciseError) then) =
      _$ExerciseErrorCopyWithImpl<$Res, ExerciseError>;
  @useResult
  $Res call({List<String>? nonFieldErrors});
}

/// @nodoc
class _$ExerciseErrorCopyWithImpl<$Res, $Val extends ExerciseError>
    implements $ExerciseErrorCopyWith<$Res> {
  _$ExerciseErrorCopyWithImpl(this._value, this._then);

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
abstract class _$$ExerciseErrorImplCopyWith<$Res>
    implements $ExerciseErrorCopyWith<$Res> {
  factory _$$ExerciseErrorImplCopyWith(
          _$ExerciseErrorImpl value, $Res Function(_$ExerciseErrorImpl) then) =
      __$$ExerciseErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? nonFieldErrors});
}

/// @nodoc
class __$$ExerciseErrorImplCopyWithImpl<$Res>
    extends _$ExerciseErrorCopyWithImpl<$Res, _$ExerciseErrorImpl>
    implements _$$ExerciseErrorImplCopyWith<$Res> {
  __$$ExerciseErrorImplCopyWithImpl(
      _$ExerciseErrorImpl _value, $Res Function(_$ExerciseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_$ExerciseErrorImpl(
      nonFieldErrors: freezed == nonFieldErrors
          ? _value._nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ExerciseErrorImpl implements _ExerciseError {
  const _$ExerciseErrorImpl({final List<String>? nonFieldErrors})
      : _nonFieldErrors = nonFieldErrors;

  factory _$ExerciseErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseErrorImplFromJson(json);

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
    return 'ExerciseError(nonFieldErrors: $nonFieldErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseErrorImpl &&
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
  _$$ExerciseErrorImplCopyWith<_$ExerciseErrorImpl> get copyWith =>
      __$$ExerciseErrorImplCopyWithImpl<_$ExerciseErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseErrorImplToJson(
      this,
    );
  }
}

abstract class _ExerciseError implements ExerciseError {
  const factory _ExerciseError({final List<String>? nonFieldErrors}) =
      _$ExerciseErrorImpl;

  factory _ExerciseError.fromJson(Map<String, dynamic> json) =
      _$ExerciseErrorImpl.fromJson;

  @override
  List<String>? get nonFieldErrors;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseErrorImplCopyWith<_$ExerciseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
