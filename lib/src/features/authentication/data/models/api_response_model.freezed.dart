// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../shared/data/models/api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiResponseModel<T> _$ApiResponseModelFromJson<T>(Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ApiResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiResponseModel<T> {
  bool get success => throw _privateConstructorUsedError;
  ApiMessagesModel get messages => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseModelCopyWith<T, ApiResponseModel<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseModelCopyWith<T, $Res> {
  factory $ApiResponseModelCopyWith(ApiResponseModel<T> value, $Res Function(ApiResponseModel<T>) then) =
      _$ApiResponseModelCopyWithImpl<T, $Res, ApiResponseModel<T>>;
  @useResult
  $Res call({bool success, ApiMessagesModel messages, T? data});

  $ApiMessagesModelCopyWith<$Res> get messages;
}

/// @nodoc
class _$ApiResponseModelCopyWithImpl<T, $Res, $Val extends ApiResponseModel<T>> implements $ApiResponseModelCopyWith<T, $Res> {
  _$ApiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? messages = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as ApiMessagesModel,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiMessagesModelCopyWith<$Res> get messages {
    return $ApiMessagesModelCopyWith<$Res>(_value.messages, (value) {
      return _then(_value.copyWith(messages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiResponseModelImplCopyWith<T, $Res> implements $ApiResponseModelCopyWith<T, $Res> {
  factory _$$ApiResponseModelImplCopyWith(_$ApiResponseModelImpl<T> value, $Res Function(_$ApiResponseModelImpl<T>) then) =
      __$$ApiResponseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool success, ApiMessagesModel messages, T? data});

  @override
  $ApiMessagesModelCopyWith<$Res> get messages;
}

/// @nodoc
class __$$ApiResponseModelImplCopyWithImpl<T, $Res> extends _$ApiResponseModelCopyWithImpl<T, $Res, _$ApiResponseModelImpl<T>>
    implements _$$ApiResponseModelImplCopyWith<T, $Res> {
  __$$ApiResponseModelImplCopyWithImpl(_$ApiResponseModelImpl<T> _value, $Res Function(_$ApiResponseModelImpl<T>) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? messages = null,
    Object? data = freezed,
  }) {
    return _then(_$ApiResponseModelImpl<T>(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as ApiMessagesModel,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseModelImpl<T> implements _ApiResponseModel<T> {
  const _$ApiResponseModelImpl({required this.success, required this.messages, this.data});

  factory _$ApiResponseModelImpl.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseModelImplFromJson(json, fromJsonT);

  @override
  final bool success;
  @override
  final ApiMessagesModel messages;
  @override
  final T? data;

  @override
  String toString() {
    return 'ApiResponseModel<$T>(success: $success, messages: $messages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseModelImpl<T> &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.messages, messages) || other.messages == messages) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, messages, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseModelImplCopyWith<T, _$ApiResponseModelImpl<T>> get copyWith =>
      __$$ApiResponseModelImplCopyWithImpl<T, _$ApiResponseModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResponseModel<T> implements ApiResponseModel<T> {
  const factory _ApiResponseModel({required final bool success, required final ApiMessagesModel messages, final T? data}) = _$ApiResponseModelImpl<T>;

  factory _ApiResponseModel.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) = _$ApiResponseModelImpl<T>.fromJson;

  @override
  bool get success;
  @override
  ApiMessagesModel get messages;
  @override
  T? get data;
  @override
  @JsonKey(ignore: true)
  _$$ApiResponseModelImplCopyWith<T, _$ApiResponseModelImpl<T>> get copyWith => throw _privateConstructorUsedError;
}

ApiMessagesModel _$ApiMessagesModelFromJson(Map<String, dynamic> json) {
  return _ApiMessagesModel.fromJson(json);
}

/// @nodoc
mixin _$ApiMessagesModel {
  @JsonKey(name: 'non_field_success', defaultValue: null)
  String? get nonFieldSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'non_field_errors', defaultValue: null)
  List<String>? get nonFieldErrors => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_content', defaultValue: null)
  String? get notificationContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiMessagesModelCopyWith<ApiMessagesModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiMessagesModelCopyWith<$Res> {
  factory $ApiMessagesModelCopyWith(ApiMessagesModel value, $Res Function(ApiMessagesModel) then) =
      _$ApiMessagesModelCopyWithImpl<$Res, ApiMessagesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'non_field_success', defaultValue: null) String? nonFieldSuccess,
      @JsonKey(name: 'non_field_errors', defaultValue: null) List<String>? nonFieldErrors,
      @JsonKey(name: 'notification_content', defaultValue: null) String? notificationContent});
}

/// @nodoc
class _$ApiMessagesModelCopyWithImpl<$Res, $Val extends ApiMessagesModel> implements $ApiMessagesModelCopyWith<$Res> {
  _$ApiMessagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonFieldSuccess = freezed,
    Object? nonFieldErrors = freezed,
    Object? notificationContent = freezed,
  }) {
    return _then(_value.copyWith(
      nonFieldSuccess: freezed == nonFieldSuccess
          ? _value.nonFieldSuccess
          : nonFieldSuccess // ignore: cast_nullable_to_non_nullable
              as String?,
      nonFieldErrors: freezed == nonFieldErrors
          ? _value.nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notificationContent: freezed == notificationContent
          ? _value.notificationContent
          : notificationContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiMessagesModelImplCopyWith<$Res> implements $ApiMessagesModelCopyWith<$Res> {
  factory _$$ApiMessagesModelImplCopyWith(_$ApiMessagesModelImpl value, $Res Function(_$ApiMessagesModelImpl) then) =
      __$$ApiMessagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'non_field_success', defaultValue: null) String? nonFieldSuccess,
      @JsonKey(name: 'non_field_errors', defaultValue: null) List<String>? nonFieldErrors,
      @JsonKey(name: 'notification_content', defaultValue: null) String? notificationContent});
}

/// @nodoc
class __$$ApiMessagesModelImplCopyWithImpl<$Res> extends _$ApiMessagesModelCopyWithImpl<$Res, _$ApiMessagesModelImpl>
    implements _$$ApiMessagesModelImplCopyWith<$Res> {
  __$$ApiMessagesModelImplCopyWithImpl(_$ApiMessagesModelImpl _value, $Res Function(_$ApiMessagesModelImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonFieldSuccess = freezed,
    Object? nonFieldErrors = freezed,
    Object? notificationContent = freezed,
  }) {
    return _then(_$ApiMessagesModelImpl(
      nonFieldSuccess: freezed == nonFieldSuccess
          ? _value.nonFieldSuccess
          : nonFieldSuccess // ignore: cast_nullable_to_non_nullable
              as String?,
      nonFieldErrors: freezed == nonFieldErrors
          ? _value._nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notificationContent: freezed == notificationContent
          ? _value.notificationContent
          : notificationContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiMessagesModelImpl implements _ApiMessagesModel {
  const _$ApiMessagesModelImpl(
      {@JsonKey(name: 'non_field_success', defaultValue: null) this.nonFieldSuccess,
      @JsonKey(name: 'non_field_errors', defaultValue: null) final List<String>? nonFieldErrors,
      @JsonKey(name: 'notification_content', defaultValue: null) this.notificationContent})
      : _nonFieldErrors = nonFieldErrors;

  factory _$ApiMessagesModelImpl.fromJson(Map<String, dynamic> json) => _$$ApiMessagesModelImplFromJson(json);

  @override
  @JsonKey(name: 'non_field_success', defaultValue: null)
  final String? nonFieldSuccess;
  final List<String>? _nonFieldErrors;
  @override
  @JsonKey(name: 'non_field_errors', defaultValue: null)
  List<String>? get nonFieldErrors {
    final value = _nonFieldErrors;
    if (value == null) return null;
    if (_nonFieldErrors is EqualUnmodifiableListView) return _nonFieldErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'notification_content', defaultValue: null)
  final String? notificationContent;

  @override
  String toString() {
    return 'ApiMessagesModel(nonFieldSuccess: $nonFieldSuccess, nonFieldErrors: $nonFieldErrors, notificationContent: $notificationContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiMessagesModelImpl &&
            (identical(other.nonFieldSuccess, nonFieldSuccess) || other.nonFieldSuccess == nonFieldSuccess) &&
            const DeepCollectionEquality().equals(other._nonFieldErrors, _nonFieldErrors) &&
            (identical(other.notificationContent, notificationContent) || other.notificationContent == notificationContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nonFieldSuccess, const DeepCollectionEquality().hash(_nonFieldErrors), notificationContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiMessagesModelImplCopyWith<_$ApiMessagesModelImpl> get copyWith =>
      __$$ApiMessagesModelImplCopyWithImpl<_$ApiMessagesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiMessagesModelImplToJson(
      this,
    );
  }
}

abstract class _ApiMessagesModel implements ApiMessagesModel {
  const factory _ApiMessagesModel(
      {@JsonKey(name: 'non_field_success', defaultValue: null) final String? nonFieldSuccess,
      @JsonKey(name: 'non_field_errors', defaultValue: null) final List<String>? nonFieldErrors,
      @JsonKey(name: 'notification_content', defaultValue: null) final String? notificationContent}) = _$ApiMessagesModelImpl;

  factory _ApiMessagesModel.fromJson(Map<String, dynamic> json) = _$ApiMessagesModelImpl.fromJson;

  @override
  @JsonKey(name: 'non_field_success', defaultValue: null)
  String? get nonFieldSuccess;
  @override
  @JsonKey(name: 'non_field_errors', defaultValue: null)
  List<String>? get nonFieldErrors;
  @override
  @JsonKey(name: 'notification_content', defaultValue: null)
  String? get notificationContent;
  @override
  @JsonKey(ignore: true)
  _$$ApiMessagesModelImplCopyWith<_$ApiMessagesModelImpl> get copyWith => throw _privateConstructorUsedError;
}
