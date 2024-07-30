import 'package:fitmetrics/src/features/shared/data/models/api_messages_model.dart';
import 'package:fitmetrics/src/features/user/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    required bool success,
    required MessagesAPI messages,
    required User data,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}

/// Fields available in the response when there are errors in the signup request
/// Validator is used in front end to display the error messages before sending request
@freezed
class UserProfileError with _$UserProfileError {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserProfileError({
    List<String>? nonFieldErrors,
  }) = _UserProfileError;

  factory UserProfileError.fromJson(Map<String, dynamic> json) => _$UserProfileErrorFromJson(json);
}
