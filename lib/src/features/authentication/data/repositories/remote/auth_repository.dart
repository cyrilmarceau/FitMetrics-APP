import 'package:fitmetrics/src/features/shared/data/models/api_response_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/login_model.dart';
import 'package:fitmetrics/src/features/authentication/domain/entities/token.dart';

abstract interface class AuthRepository {
  Future<ApiResponseModel<Token>> login(LoginModel loginRequest);
}
