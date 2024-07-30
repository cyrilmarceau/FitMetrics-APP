// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      success: json['success'] as bool,
      messages: MessagesAPI.fromJson(json['messages'] as Map<String, dynamic>),
      data: User.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'messages': instance.messages,
      'data': instance.data,
    };

_$UserProfileErrorImpl _$$UserProfileErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileErrorImpl(
      nonFieldErrors: (json['non_field_errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserProfileErrorImplToJson(
        _$UserProfileErrorImpl instance) =>
    <String, dynamic>{
      'non_field_errors': instance.nonFieldErrors,
    };
