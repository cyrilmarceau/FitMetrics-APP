// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessagesAPIImpl _$$MessagesAPIImplFromJson(Map<String, dynamic> json) =>
    _$MessagesAPIImpl(
      nonFieldSuccesses: (json['non_field_successes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MessagesAPIImplToJson(_$MessagesAPIImpl instance) =>
    <String, dynamic>{
      'non_field_successes': instance.nonFieldSuccesses,
    };
