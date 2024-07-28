import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    /// Request name for handle notification success
    required String request,

    /// Success status
    required bool success,

    /// Messages from the server
    required ApiMessages messages,

    /// Data from the server
    /// Can be null if there is a non-field validation error (e.g., incorrect credentials)
    /// Otherwise, it should be the data from the server when the API is successful
    /// Or it can be a field validation error
    T? data,
  }) = _ApiResponse<T>;

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$ApiResponseFromJson(json, fromJsonT);
}

@freezed
class ApiMessages with _$ApiMessages {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ApiMessages({
    String? notificationContent,
    String? nonFieldSuccess,
    Map<String, List<String>>? nonFieldErrors,
  }) = _ApiMessages;

  factory ApiMessages.fromJson(Map<String, dynamic> json) => _$ApiMessagesFromJson(json);
}
