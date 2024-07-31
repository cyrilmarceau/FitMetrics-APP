// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseResponseImpl _$$ExerciseResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseResponseImpl(
      success: json['success'] as bool,
      messages: MessagesAPI.fromJson(json['messages'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExerciseResponseImplToJson(
        _$ExerciseResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'messages': instance.messages,
      'data': instance.data,
    };

_$ExerciseErrorImpl _$$ExerciseErrorImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseErrorImpl(
      nonFieldErrors: (json['non_field_errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ExerciseErrorImplToJson(_$ExerciseErrorImpl instance) =>
    <String, dynamic>{
      'non_field_errors': instance.nonFieldErrors,
    };
