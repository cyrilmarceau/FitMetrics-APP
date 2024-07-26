import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResponseModel<T> with _$ApiResponseModel<T> {
  const factory ApiResponseModel({
    required bool success,
    required ApiMessagesModel messages,
    T? data,
  }) = _ApiResponseModel<T>;

  factory ApiResponseModel.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$ApiResponseModelFromJson(json, fromJsonT);
}

@freezed
class ApiMessagesModel with _$ApiMessagesModel {
  const factory ApiMessagesModel({
    @JsonKey(name: 'non_field_success', defaultValue: null) String? nonFieldSuccess,
    @JsonKey(name: 'non_field_errors', defaultValue: null) List<String>? nonFieldErrors,
    @JsonKey(name: 'notification_content', defaultValue: null) String? notificationContent,
  }) = _ApiMessagesModel;

  factory ApiMessagesModel.fromJson(Map<String, dynamic> json) => _$ApiMessagesModelFromJson(json);
}
