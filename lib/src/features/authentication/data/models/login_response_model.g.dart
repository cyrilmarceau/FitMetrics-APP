// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      success: json['success'] as bool,
      messages: MessagesAPI.fromJson(json['messages'] as Map<String, dynamic>),
      data: Token.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'messages': instance.messages,
      'data': instance.data,
    };

_$LoginErrorImpl _$$LoginErrorImplFromJson(Map<String, dynamic> json) =>
    _$LoginErrorImpl(
      nonFieldErrors: (json['non_field_errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$LoginErrorImplToJson(_$LoginErrorImpl instance) =>
    <String, dynamic>{
      'non_field_errors': instance.nonFieldErrors,
    };
