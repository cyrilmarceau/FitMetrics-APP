import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_request_model.freezed.dart';
part 'signup_request_model.g.dart';

/// Class repsenting the login model for authenticate user with email and password
///
@freezed
class SignupRequestModel with _$SignupRequestModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SignupRequestModel({
    required String email,
    required String firstname,
    required String lastname,
    required String password,
    required String passwordConfirmation,
  }) = _SignupRequestModel;

  factory SignupRequestModel.fromJson(Map<String, dynamic> json) => _$SignupRequestModelFromJson(json);
}
