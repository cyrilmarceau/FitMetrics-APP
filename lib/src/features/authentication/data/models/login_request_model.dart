import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_model.freezed.dart';
part 'login_request_model.g.dart';

/// Class repsenting the login model for authenticate user with email and password
///
@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);
}
