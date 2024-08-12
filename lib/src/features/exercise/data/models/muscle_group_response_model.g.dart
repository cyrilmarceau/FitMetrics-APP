// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muscle_group_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MuscleGroupResponseImpl _$$MuscleGroupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MuscleGroupResponseImpl(
      success: json['success'] as bool,
      messages: MessagesAPI.fromJson(json['messages'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => MuscleGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MuscleGroupResponseImplToJson(
        _$MuscleGroupResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'messages': instance.messages,
      'data': instance.data,
    };

_$MuscleGroupErrorImpl _$$MuscleGroupErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$MuscleGroupErrorImpl(
      nonFieldErrors: (json['non_field_errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MuscleGroupErrorImplToJson(
        _$MuscleGroupErrorImpl instance) =>
    <String, dynamic>{
      'non_field_errors': instance.nonFieldErrors,
    };
