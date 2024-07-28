// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiResponse<T> _$ApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ApiResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiResponse<T> {
  /// Request name for handle notification success
  String get request => throw _privateConstructorUsedError;

  /// Success status
  bool get success => throw _privateConstructorUsedError;

  /// Messages from the server
  ApiMessages get messages => throw _privateConstructorUsedError;

  /// Data from the server
  /// Can be null if there is a non-field validation error (e.g., incorrect credentials)
  /// Otherwise, it should be the data from the server when the API is successful
  /// Or it can be a field validation error
  T? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCopyWith<T, ApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
  @useResult
  $Res call({String request, bool success, ApiMessages messages, T? data});

  $ApiMessagesCopyWith<$Res> get messages;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? success = null,
    Object? messages = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as ApiMessages,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiMessagesCopyWith<$Res> get messages {
    return $ApiMessagesCopyWith<$Res>(_value.messages, (value) {
      return _then(_value.copyWith(messages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiResponseImplCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory _$$ApiResponseImplCopyWith(_$ApiResponseImpl<T> value,
          $Res Function(_$ApiResponseImpl<T>) then) =
      __$$ApiResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String request, bool success, ApiMessages messages, T? data});

  @override
  $ApiMessagesCopyWith<$Res> get messages;
}

/// @nodoc
class __$$ApiResponseImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseImpl<T>>
    implements _$$ApiResponseImplCopyWith<T, $Res> {
  __$$ApiResponseImplCopyWithImpl(
      _$ApiResponseImpl<T> _value, $Res Function(_$ApiResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? success = null,
    Object? messages = null,
    Object? data = freezed,
  }) {
    return _then(_$ApiResponseImpl<T>(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as ApiMessages,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseImpl<T> implements _ApiResponse<T> {
  const _$ApiResponseImpl(
      {required this.request,
      required this.success,
      required this.messages,
      this.data});

  factory _$ApiResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseImplFromJson(json, fromJsonT);

  /// Request name for handle notification success
  @override
  final String request;

  /// Success status
  @override
  final bool success;

  /// Messages from the server
  @override
  final ApiMessages messages;

  /// Data from the server
  /// Can be null if there is a non-field validation error (e.g., incorrect credentials)
  /// Otherwise, it should be the data from the server when the API is successful
  /// Or it can be a field validation error
  @override
  final T? data;

  @override
  String toString() {
    return 'ApiResponse<$T>(request: $request, success: $success, messages: $messages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseImpl<T> &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, request, success, messages,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseImplCopyWith<T, _$ApiResponseImpl<T>> get copyWith =>
      __$$ApiResponseImplCopyWithImpl<T, _$ApiResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResponse<T> implements ApiResponse<T> {
  const factory _ApiResponse(
      {required final String request,
      required final bool success,
      required final ApiMessages messages,
      final T? data}) = _$ApiResponseImpl<T>;

  factory _ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseImpl<T>.fromJson;

  @override

  /// Request name for handle notification success
  String get request;
  @override

  /// Success status
  bool get success;
  @override

  /// Messages from the server
  ApiMessages get messages;
  @override

  /// Data from the server
  /// Can be null if there is a non-field validation error (e.g., incorrect credentials)
  /// Otherwise, it should be the data from the server when the API is successful
  /// Or it can be a field validation error
  T? get data;
  @override
  @JsonKey(ignore: true)
  _$$ApiResponseImplCopyWith<T, _$ApiResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiMessages _$ApiMessagesFromJson(Map<String, dynamic> json) {
  return _ApiMessages.fromJson(json);
}

/// @nodoc
mixin _$ApiMessages {
  String? get notificationContent => throw _privateConstructorUsedError;
  String? get nonFieldSuccess => throw _privateConstructorUsedError;
  Map<String, List<String>>? get nonFieldErrors =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiMessagesCopyWith<ApiMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiMessagesCopyWith<$Res> {
  factory $ApiMessagesCopyWith(
          ApiMessages value, $Res Function(ApiMessages) then) =
      _$ApiMessagesCopyWithImpl<$Res, ApiMessages>;
  @useResult
  $Res call(
      {String? notificationContent,
      String? nonFieldSuccess,
      Map<String, List<String>>? nonFieldErrors});
}

/// @nodoc
class _$ApiMessagesCopyWithImpl<$Res, $Val extends ApiMessages>
    implements $ApiMessagesCopyWith<$Res> {
  _$ApiMessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationContent = freezed,
    Object? nonFieldSuccess = freezed,
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_value.copyWith(
      notificationContent: freezed == notificationContent
          ? _value.notificationContent
          : notificationContent // ignore: cast_nullable_to_non_nullable
              as String?,
      nonFieldSuccess: freezed == nonFieldSuccess
          ? _value.nonFieldSuccess
          : nonFieldSuccess // ignore: cast_nullable_to_non_nullable
              as String?,
      nonFieldErrors: freezed == nonFieldErrors
          ? _value.nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiMessagesImplCopyWith<$Res>
    implements $ApiMessagesCopyWith<$Res> {
  factory _$$ApiMessagesImplCopyWith(
          _$ApiMessagesImpl value, $Res Function(_$ApiMessagesImpl) then) =
      __$$ApiMessagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? notificationContent,
      String? nonFieldSuccess,
      Map<String, List<String>>? nonFieldErrors});
}

/// @nodoc
class __$$ApiMessagesImplCopyWithImpl<$Res>
    extends _$ApiMessagesCopyWithImpl<$Res, _$ApiMessagesImpl>
    implements _$$ApiMessagesImplCopyWith<$Res> {
  __$$ApiMessagesImplCopyWithImpl(
      _$ApiMessagesImpl _value, $Res Function(_$ApiMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationContent = freezed,
    Object? nonFieldSuccess = freezed,
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_$ApiMessagesImpl(
      notificationContent: freezed == notificationContent
          ? _value.notificationContent
          : notificationContent // ignore: cast_nullable_to_non_nullable
              as String?,
      nonFieldSuccess: freezed == nonFieldSuccess
          ? _value.nonFieldSuccess
          : nonFieldSuccess // ignore: cast_nullable_to_non_nullable
              as String?,
      nonFieldErrors: freezed == nonFieldErrors
          ? _value._nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ApiMessagesImpl implements _ApiMessages {
  const _$ApiMessagesImpl(
      {this.notificationContent,
      this.nonFieldSuccess,
      final Map<String, List<String>>? nonFieldErrors})
      : _nonFieldErrors = nonFieldErrors;

  factory _$ApiMessagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiMessagesImplFromJson(json);

  @override
  final String? notificationContent;
  @override
  final String? nonFieldSuccess;
  final Map<String, List<String>>? _nonFieldErrors;
  @override
  Map<String, List<String>>? get nonFieldErrors {
    final value = _nonFieldErrors;
    if (value == null) return null;
    if (_nonFieldErrors is EqualUnmodifiableMapView) return _nonFieldErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiMessages(notificationContent: $notificationContent, nonFieldSuccess: $nonFieldSuccess, nonFieldErrors: $nonFieldErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiMessagesImpl &&
            (identical(other.notificationContent, notificationContent) ||
                other.notificationContent == notificationContent) &&
            (identical(other.nonFieldSuccess, nonFieldSuccess) ||
                other.nonFieldSuccess == nonFieldSuccess) &&
            const DeepCollectionEquality()
                .equals(other._nonFieldErrors, _nonFieldErrors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notificationContent,
      nonFieldSuccess, const DeepCollectionEquality().hash(_nonFieldErrors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiMessagesImplCopyWith<_$ApiMessagesImpl> get copyWith =>
      __$$ApiMessagesImplCopyWithImpl<_$ApiMessagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiMessagesImplToJson(
      this,
    );
  }
}

abstract class _ApiMessages implements ApiMessages {
  const factory _ApiMessages(
      {final String? notificationContent,
      final String? nonFieldSuccess,
      final Map<String, List<String>>? nonFieldErrors}) = _$ApiMessagesImpl;

  factory _ApiMessages.fromJson(Map<String, dynamic> json) =
      _$ApiMessagesImpl.fromJson;

  @override
  String? get notificationContent;
  @override
  String? get nonFieldSuccess;
  @override
  Map<String, List<String>>? get nonFieldErrors;
  @override
  @JsonKey(ignore: true)
  _$$ApiMessagesImplCopyWith<_$ApiMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
