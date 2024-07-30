import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fitmetrics/src/core/dio/dio_client.dart';
import 'package:fitmetrics/src/core/error/exceptions.dart';
import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';
import 'package:fitmetrics/src/features/user/data/models/user_response_model.dart';
import 'package:fitmetrics/src/features/user/data/remote/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DioUserRepository with LoggingMixin implements UserRepository {
  DioUserRepository({
    required this.ref,
  });

  Dio get dio => ref.read(dioProvider);
  final Ref ref;

  @override
  Future<UserResponse> fetchMe() async {
    try {
      final payload = await dio.get('/profile', options: Options(extra: <String, bool>{'tokenRequired': true}));

      if (payload.statusCode == HttpStatus.ok) {
        log.d('✅ [DioUserRepository] :: fetchMe :: Http :: ok => ${payload.data}');
        final response = UserResponse.fromJson(payload.data);

        return response;
      } else {
        log.e('[DioUserRepository] :: fetchMe :: Http !== ok => ${payload.data['messages']}');

        throw UserProfileException(
          messages: UserProfileError.fromJson(payload.data['messages']),
          data: null,
          statusCode: payload.statusCode,
        );
      }
    } on DioException catch (e) {
      log.e('[DioUserRepository] :: fetchMe :: DioException => $e');

      if (e.response?.statusCode == 401) {
        throw UserProfileException(
          messages: UserProfileError.fromJson(e.response?.data['messages']),
          data: null,
          statusCode: e.response?.statusCode,
        );
      }
      throw HttpException(statusCode: e.response?.statusCode, messages: e.message);
    }
  }
}
