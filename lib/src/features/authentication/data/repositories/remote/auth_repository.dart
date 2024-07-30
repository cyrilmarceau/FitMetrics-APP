import 'package:fitmetrics/src/features/authentication/data/models/login_response_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/signup_request_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/signup_response_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/login_request_model.dart';

abstract interface class AuthRepository {
  Future<LoginResponse> login(LoginRequest loginRequest);
  Future<SignupResponse> signup(SignupRequest signupRequest);
}
