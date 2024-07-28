// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupRequestModel _$SignupRequestModelFromJson(Map<String, dynamic> json) {
  return _SignupRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SignupRequestModel {
  String get email => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirmation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupRequestModelCopyWith<SignupRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupRequestModelCopyWith<$Res> {
  factory $SignupRequestModelCopyWith(
          SignupRequestModel value, $Res Function(SignupRequestModel) then) =
      _$SignupRequestModelCopyWithImpl<$Res, SignupRequestModel>;
  @useResult
  $Res call(
      {String email,
      String firstname,
      String lastname,
      String password,
      String passwordConfirmation});
}

/// @nodoc
class _$SignupRequestModelCopyWithImpl<$Res, $Val extends SignupRequestModel>
    implements $SignupRequestModelCopyWith<$Res> {
  _$SignupRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupRequestModelImplCopyWith<$Res>
    implements $SignupRequestModelCopyWith<$Res> {
  factory _$$SignupRequestModelImplCopyWith(_$SignupRequestModelImpl value,
          $Res Function(_$SignupRequestModelImpl) then) =
      __$$SignupRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String firstname,
      String lastname,
      String password,
      String passwordConfirmation});
}

/// @nodoc
class __$$SignupRequestModelImplCopyWithImpl<$Res>
    extends _$SignupRequestModelCopyWithImpl<$Res, _$SignupRequestModelImpl>
    implements _$$SignupRequestModelImplCopyWith<$Res> {
  __$$SignupRequestModelImplCopyWithImpl(_$SignupRequestModelImpl _value,
      $Res Function(_$SignupRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(_$SignupRequestModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SignupRequestModelImpl implements _SignupRequestModel {
  const _$SignupRequestModelImpl(
      {required this.email,
      required this.firstname,
      required this.lastname,
      required this.password,
      required this.passwordConfirmation});

  factory _$SignupRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupRequestModelImplFromJson(json);

  @override
  final String email;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String password;
  @override
  final String passwordConfirmation;

  @override
  String toString() {
    return 'SignupRequestModel(email: $email, firstname: $firstname, lastname: $lastname, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupRequestModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, firstname, lastname, password, passwordConfirmation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupRequestModelImplCopyWith<_$SignupRequestModelImpl> get copyWith =>
      __$$SignupRequestModelImplCopyWithImpl<_$SignupRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SignupRequestModel implements SignupRequestModel {
  const factory _SignupRequestModel(
      {required final String email,
      required final String firstname,
      required final String lastname,
      required final String password,
      required final String passwordConfirmation}) = _$SignupRequestModelImpl;

  factory _SignupRequestModel.fromJson(Map<String, dynamic> json) =
      _$SignupRequestModelImpl.fromJson;

  @override
  String get email;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get password;
  @override
  String get passwordConfirmation;
  @override
  @JsonKey(ignore: true)
  _$$SignupRequestModelImplCopyWith<_$SignupRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
