// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupRequestModelImpl _$$SignupRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignupRequestModelImpl(
      email: json['email'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['passwordConfirmation'] as String,
    );

Map<String, dynamic> _$$SignupRequestModelImplToJson(
        _$SignupRequestModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'password': instance.password,
      'passwordConfirmation': instance.passwordConfirmation,
    };
