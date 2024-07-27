// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseImpl<T> _$$ApiResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseImpl<T>(
      success: json['success'] as bool,
      messages: ApiMessages.fromJson(json['messages'] as Map<String, dynamic>),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$$ApiResponseImplToJson<T>(
  _$ApiResponseImpl<T> instance,
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

_$ApiMessagesImpl _$$ApiMessagesImplFromJson(Map<String, dynamic> json) =>
    _$ApiMessagesImpl(
      nonFieldSuccess: json['non_field_success'] as String?,
      notificationContent: json['notification_content'] as String?,
      nonFieldErrors: (json['non_field_errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$ApiMessagesImplToJson(_$ApiMessagesImpl instance) =>
    <String, dynamic>{
      'non_field_success': instance.nonFieldSuccess,
      'notification_content': instance.notificationContent,
      'non_field_errors': instance.nonFieldErrors,
    };
