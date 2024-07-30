// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) {
  return _SignupResponse.fromJson(json);
}

/// @nodoc
mixin _$SignupResponse {
  bool get success => throw _privateConstructorUsedError;
  MessagesAPI get messages => throw _privateConstructorUsedError;
  User get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupResponseCopyWith<SignupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupResponseCopyWith<$Res> {
  factory $SignupResponseCopyWith(
          SignupResponse value, $Res Function(SignupResponse) then) =
      _$SignupResponseCopyWithImpl<$Res, SignupResponse>;
  @useResult
  $Res call({bool success, MessagesAPI messages, User data});

  $MessagesAPICopyWith<$Res> get messages;
  $UserCopyWith<$Res> get data;
}

/// @nodoc
class _$SignupResponseCopyWithImpl<$Res, $Val extends SignupResponse>
    implements $SignupResponseCopyWith<$Res> {
  _$SignupResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$SignupResponseImplCopyWith<$Res>
    implements $SignupResponseCopyWith<$Res> {
  factory _$$SignupResponseImplCopyWith(_$SignupResponseImpl value,
          $Res Function(_$SignupResponseImpl) then) =
      __$$SignupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, MessagesAPI messages, User data});

  @override
  $MessagesAPICopyWith<$Res> get messages;
  @override
  $UserCopyWith<$Res> get data;
}

/// @nodoc
class __$$SignupResponseImplCopyWithImpl<$Res>
    extends _$SignupResponseCopyWithImpl<$Res, _$SignupResponseImpl>
    implements _$$SignupResponseImplCopyWith<$Res> {
  __$$SignupResponseImplCopyWithImpl(
      _$SignupResponseImpl _value, $Res Function(_$SignupResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? messages = null,
    Object? data = null,
  }) {
    return _then(_$SignupResponseImpl(
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
class _$SignupResponseImpl implements _SignupResponse {
  const _$SignupResponseImpl(
      {required this.success, required this.messages, required this.data});

  factory _$SignupResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final MessagesAPI messages;
  @override
  final User data;

  @override
  String toString() {
    return 'SignupResponse(success: $success, messages: $messages, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupResponseImpl &&
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
  _$$SignupResponseImplCopyWith<_$SignupResponseImpl> get copyWith =>
      __$$SignupResponseImplCopyWithImpl<_$SignupResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupResponseImplToJson(
      this,
    );
  }
}

abstract class _SignupResponse implements SignupResponse {
  const factory _SignupResponse(
      {required final bool success,
      required final MessagesAPI messages,
      required final User data}) = _$SignupResponseImpl;

  factory _SignupResponse.fromJson(Map<String, dynamic> json) =
      _$SignupResponseImpl.fromJson;

  @override
  bool get success;
  @override
  MessagesAPI get messages;
  @override
  User get data;
  @override
  @JsonKey(ignore: true)
  _$$SignupResponseImplCopyWith<_$SignupResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignupFieldsError _$SignupFieldsErrorFromJson(Map<String, dynamic> json) {
  return _SignupFieldsError.fromJson(json);
}

/// @nodoc
mixin _$SignupFieldsError {
  List<String>? get firstname => throw _privateConstructorUsedError;
  List<String>? get lastname => throw _privateConstructorUsedError;
  List<String>? get email => throw _privateConstructorUsedError;
  List<String>? get password => throw _privateConstructorUsedError;
  List<String>? get passwordConfirmation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupFieldsErrorCopyWith<SignupFieldsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFieldsErrorCopyWith<$Res> {
  factory $SignupFieldsErrorCopyWith(
          SignupFieldsError value, $Res Function(SignupFieldsError) then) =
      _$SignupFieldsErrorCopyWithImpl<$Res, SignupFieldsError>;
  @useResult
  $Res call(
      {List<String>? firstname,
      List<String>? lastname,
      List<String>? email,
      List<String>? password,
      List<String>? passwordConfirmation});
}

/// @nodoc
class _$SignupFieldsErrorCopyWithImpl<$Res, $Val extends SignupFieldsError>
    implements $SignupFieldsErrorCopyWith<$Res> {
  _$SignupFieldsErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
  }) {
    return _then(_value.copyWith(
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      passwordConfirmation: freezed == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupFieldsErrorImplCopyWith<$Res>
    implements $SignupFieldsErrorCopyWith<$Res> {
  factory _$$SignupFieldsErrorImplCopyWith(_$SignupFieldsErrorImpl value,
          $Res Function(_$SignupFieldsErrorImpl) then) =
      __$$SignupFieldsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? firstname,
      List<String>? lastname,
      List<String>? email,
      List<String>? password,
      List<String>? passwordConfirmation});
}

/// @nodoc
class __$$SignupFieldsErrorImplCopyWithImpl<$Res>
    extends _$SignupFieldsErrorCopyWithImpl<$Res, _$SignupFieldsErrorImpl>
    implements _$$SignupFieldsErrorImplCopyWith<$Res> {
  __$$SignupFieldsErrorImplCopyWithImpl(_$SignupFieldsErrorImpl _value,
      $Res Function(_$SignupFieldsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
  }) {
    return _then(_$SignupFieldsErrorImpl(
      firstname: freezed == firstname
          ? _value._firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastname: freezed == lastname
          ? _value._lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      email: freezed == email
          ? _value._email
          : email // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      password: freezed == password
          ? _value._password
          : password // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      passwordConfirmation: freezed == passwordConfirmation
          ? _value._passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SignupFieldsErrorImpl implements _SignupFieldsError {
  const _$SignupFieldsErrorImpl(
      {final List<String>? firstname,
      final List<String>? lastname,
      final List<String>? email,
      final List<String>? password,
      final List<String>? passwordConfirmation})
      : _firstname = firstname,
        _lastname = lastname,
        _email = email,
        _password = password,
        _passwordConfirmation = passwordConfirmation;

  factory _$SignupFieldsErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupFieldsErrorImplFromJson(json);

  final List<String>? _firstname;
  @override
  List<String>? get firstname {
    final value = _firstname;
    if (value == null) return null;
    if (_firstname is EqualUnmodifiableListView) return _firstname;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _lastname;
  @override
  List<String>? get lastname {
    final value = _lastname;
    if (value == null) return null;
    if (_lastname is EqualUnmodifiableListView) return _lastname;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _email;
  @override
  List<String>? get email {
    final value = _email;
    if (value == null) return null;
    if (_email is EqualUnmodifiableListView) return _email;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _password;
  @override
  List<String>? get password {
    final value = _password;
    if (value == null) return null;
    if (_password is EqualUnmodifiableListView) return _password;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _passwordConfirmation;
  @override
  List<String>? get passwordConfirmation {
    final value = _passwordConfirmation;
    if (value == null) return null;
    if (_passwordConfirmation is EqualUnmodifiableListView)
      return _passwordConfirmation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SignupFieldsError(firstname: $firstname, lastname: $lastname, email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFieldsErrorImpl &&
            const DeepCollectionEquality()
                .equals(other._firstname, _firstname) &&
            const DeepCollectionEquality().equals(other._lastname, _lastname) &&
            const DeepCollectionEquality().equals(other._email, _email) &&
            const DeepCollectionEquality().equals(other._password, _password) &&
            const DeepCollectionEquality()
                .equals(other._passwordConfirmation, _passwordConfirmation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_firstname),
      const DeepCollectionEquality().hash(_lastname),
      const DeepCollectionEquality().hash(_email),
      const DeepCollectionEquality().hash(_password),
      const DeepCollectionEquality().hash(_passwordConfirmation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFieldsErrorImplCopyWith<_$SignupFieldsErrorImpl> get copyWith =>
      __$$SignupFieldsErrorImplCopyWithImpl<_$SignupFieldsErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupFieldsErrorImplToJson(
      this,
    );
  }
}

abstract class _SignupFieldsError implements SignupFieldsError {
  const factory _SignupFieldsError(
      {final List<String>? firstname,
      final List<String>? lastname,
      final List<String>? email,
      final List<String>? password,
      final List<String>? passwordConfirmation}) = _$SignupFieldsErrorImpl;

  factory _SignupFieldsError.fromJson(Map<String, dynamic> json) =
      _$SignupFieldsErrorImpl.fromJson;

  @override
  List<String>? get firstname;
  @override
  List<String>? get lastname;
  @override
  List<String>? get email;
  @override
  List<String>? get password;
  @override
  List<String>? get passwordConfirmation;
  @override
  @JsonKey(ignore: true)
  _$$SignupFieldsErrorImplCopyWith<_$SignupFieldsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
