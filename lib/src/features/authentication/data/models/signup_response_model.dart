import 'package:fitmetrics/src/features/shared/data/models/api_messages_model.dart';
import 'package:fitmetrics/src/features/user/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_response_model.freezed.dart';
part 'signup_response_model.g.dart';

@freezed
class SignupResponse with _$SignupResponse {
  const factory SignupResponse({
    required bool success,
    required MessagesAPI messages,
    required User data,
  }) = _SignupResponse;

  factory SignupResponse.fromJson(Map<String, dynamic> json) => _$SignupResponseFromJson(json);
}

/// Fields available in the response when there are errors in the signup request
/// Validator is used in front end to display the error messages before sending request
@freezed
class SignupFieldsError with _$SignupFieldsError {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SignupFieldsError({
    List<String>? firstname,
    List<String>? lastname,
    List<String>? email,
    List<String>? password,
    List<String>? passwordConfirmation,
  }) = _SignupFieldsError;

  factory SignupFieldsError.fromJson(Map<String, dynamic> json) => _$SignupFieldsErrorFromJson(json);
}
