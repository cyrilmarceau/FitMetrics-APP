import 'package:fitmetrics/src/features/authentication/data/models/signup_request_model.dart';
import 'package:fitmetrics/src/features/shared/data/models/api_response_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/login_model.dart';
import 'package:fitmetrics/src/features/authentication/domain/entities/token.dart';
import 'package:fitmetrics/src/features/user/domain/entities/user.dart';

abstract interface class AuthRepository {
  Future<ApiResponse<Token>> login(LoginModel loginRequest);
  Future<ApiResponse<User>> signup(SignupRequestModel signupRequest);
}
