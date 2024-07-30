import 'package:fitmetrics/src/features/authentication/domain/entities/token.dart';
import 'package:fitmetrics/src/features/shared/data/models/api_messages_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required bool success,
    required MessagesAPI messages,
    required Token data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}

/// Fields available in the response when there are errors in the signup request
/// Validator is used in front end to display the error messages before sending request
@freezed
class LoginError with _$LoginError {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoginError({
    List<String>? nonFieldErrors,
  }) = _LoginError;

  factory LoginError.fromJson(Map<String, dynamic> json) => _$LoginErrorFromJson(json);
}
