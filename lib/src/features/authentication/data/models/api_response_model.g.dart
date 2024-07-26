// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../shared/data/models/api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseModelImpl<T> _$$ApiResponseModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseModelImpl<T>(
      success: json['success'] as bool,
      messages: ApiMessagesModel.fromJson(json['messages'] as Map<String, dynamic>),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$$ApiResponseModelImplToJson<T>(
  _$ApiResponseModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'success': instance.success,
      'messages': instance.messages,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$ApiMessagesModelImpl _$$ApiMessagesModelImplFromJson(Map<String, dynamic> json) => _$ApiMessagesModelImpl(
      nonFieldSuccess: json['non_field_success'] as String?,
      nonFieldErrors: (json['non_field_errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      notificationContent: json['notification_content'] as String?,
    );

Map<String, dynamic> _$$ApiMessagesModelImplToJson(_$ApiMessagesModelImpl instance) => <String, dynamic>{
      'non_field_success': instance.nonFieldSuccess,
      'non_field_errors': instance.nonFieldErrors,
      'notification_content': instance.notificationContent,
    };
