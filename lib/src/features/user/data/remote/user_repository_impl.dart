import 'package:dio/dio.dart';
import 'package:fitmetrics/src/core/dio/dio_client.dart';
import 'package:fitmetrics/src/core/error/exceptions.dart';
import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';
import 'package:fitmetrics/src/features/shared/data/models/api_response_model.dart';
import 'package:fitmetrics/src/features/user/data/remote/user_repository.dart';

import 'package:fitmetrics/src/features/user/domain/entities/user.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class DioUserRepository with LoggingMixin implements UserRepository {
  DioUserRepository({
    required this.ref,
  });

  Dio get dio => ref.read(dioProvider);
  final Ref ref;

  @override
  Future<ApiResponse<User>> fetchMe() async {
    try {
      final payload = await dio.get('/profile', options: Options(extra: <String, bool>{'tokenRequired': true}));

      final response = ApiResponse<User>(
        request: 'fetchMe',
        success: payload.data['success'],
        messages: payload.data['messages'],
        data: User.fromJson(payload.data['data']),
      );

      return response;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UserFetchMeException(messages: e.response?.data['messages'], data: null, statusCode: e.response?.statusCode);
      }
      throw HttpException(statusCode: e.response?.statusCode, messages: e.message);
    }
  }
}
