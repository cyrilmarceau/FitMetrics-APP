import 'package:fitmetrics/src/features/authentication/data/models/login_model.dart';

abstract interface class AuthRepository {
  Future<void> login(LoginModel loginRequest);
}
