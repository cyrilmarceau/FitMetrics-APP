import 'package:fitmetrics/src/features/shared/data/models/api_response_model.dart';
import 'package:fitmetrics/src/features/user/domain/entities/user.dart';

abstract interface class UserRepository {
  Future<ApiResponse<User>> fetchMe();
}
