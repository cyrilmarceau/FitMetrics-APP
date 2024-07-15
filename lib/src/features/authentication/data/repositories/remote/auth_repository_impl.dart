import 'package:dio/dio.dart';
import 'package:fitmetrics/src/core/dio/dio_client.dart';
import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';
import 'package:fitmetrics/src/features/authentication/data/models/login_model.dart';
import 'package:fitmetrics/src/features/authentication/data/repositories/local/local_jwt_storage_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl with LoggingMixin implements AuthRepository {
  AuthRepositoryImpl({
    required this.ref,
    required this.tokenStorageRepository,
  });

  Dio get dio => ref.read(dioProvider);
  final Ref ref;
  final LocalJwtStorageRepositoryImpl tokenStorageRepository;

  @override
  Future<void> login(LoginModel request) async {
    try {
      final payload = await dio.post(
        '/authentication/token/',
        data: request,
        options: Options(
          extra: <String, bool>{'tokenRequired': false},
        ),
      );

      log.d('[AuthRepositoryImpl] :: login :: data => data => ${payload.data}');
      log.d('[AuthRepositoryImpl] :: login :: data => statusCode => ${payload.statusCode}');
    } on DioException catch (e) {
      log.d('[AuthRepositoryImpl] :: login :: DioException :: e :: error => ${e.error}');
      log.d('[AuthRepositoryImpl] :: login :: DioException :: e :: message => ${e.message}');
    }
  }
}
