// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupResponseImpl _$$SignupResponseImplFromJson(Map<String, dynamic> json) =>
    _$SignupResponseImpl(
      success: json['success'] as bool,
      messages: MessagesAPI.fromJson(json['messages'] as Map<String, dynamic>),
      data: User.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignupResponseImplToJson(
        _$SignupResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'messages': instance.messages,
      'data': instance.data,
    };

_$SignupFieldsErrorImpl _$$SignupFieldsErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$SignupFieldsErrorImpl(
      firstname: (json['firstname'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lastname: (json['lastname'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      passwordConfirmation: (json['password_confirmation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SignupFieldsErrorImplToJson(
        _$SignupFieldsErrorImpl instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
