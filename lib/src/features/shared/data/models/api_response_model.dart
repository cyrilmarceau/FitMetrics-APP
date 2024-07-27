import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required bool success,
    required ApiMessages messages,
    T? data,
  }) = _ApiResponse<T>;

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$ApiResponseFromJson(json, fromJsonT);
}

@freezed
class ApiMessages with _$ApiMessages {
  const factory ApiMessages({
    @JsonKey(name: 'non_field_success') String? nonFieldSuccess,
    @JsonKey(name: 'notification_content') String? notificationContent,
    @JsonKey(name: 'non_field_errors') Map<String, List<String>>? nonFieldErrors,
  }) = _ApiMessages;

  factory ApiMessages.fromJson(Map<String, dynamic> json) => _$ApiMessagesFromJson(json);
}
