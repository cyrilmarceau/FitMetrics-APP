import 'package:fitmetrics/src/features/user/data/models/user_response_model.dart';

abstract interface class UserRepository {
  Future<UserResponse> fetchMe();
}
