import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_request_model.freezed.dart';
part 'signup_request_model.g.dart';

/// Class repsenting the login model for authenticate user with email and password
///
@freezed
class SignupRequest with _$SignupRequest {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SignupRequest({
    required String email,
    required String firstname,
    required String lastname,
    required String password,
    required String passwordConfirmation,
  }) = _SignupRequest;

  factory SignupRequest.fromJson(Map<String, dynamic> json) => _$SignupRequestFromJson(json);
}
