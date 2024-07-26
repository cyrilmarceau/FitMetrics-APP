import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fitmetrics/src/core/dio/dio_client.dart';
import 'package:fitmetrics/src/core/error/exceptions.dart';
import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';
import 'package:fitmetrics/src/features/shared/data/models/api_response_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/login_model.dart';
import 'package:fitmetrics/src/features/authentication/data/repositories/local/local_jwt_storage_repository_impl.dart';
import 'package:fitmetrics/src/features/authentication/domain/entities/token.dart';
import 'package:fitmetrics/src/features/authentication/providers/auth_provider.dart';
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
  Future<ApiResponseModel<Token>> login(LoginModel request) async {
    try {
      final payload = await dio.post(
        '/auth/login',
        data: request.toJson(),
        options: Options(extra: <String, bool>{'tokenRequired': false}),
      );

      if (payload.statusCode == HttpStatus.ok) {
        log.d('✅ [AuthRepositoryImpl] :: login :: payload.data => ${payload.data}');

        final response = ApiResponseModel<Token>(
          success: payload.data['success'],
          messages: payload.data['messages'],
          data: Token.fromJson(payload.data['data']),
        );

        await tokenStorageRepository.save(response.data!);

        final authController = ref.read(authControllerProvider.notifier);

        authController.authenticateUser();

        return response;
      } else {
        log.e('[AuthRepositoryImpl] :: login :: statusCode != HttpStatus.ok :: payload.data => ${payload.data}');

        throw LoginFailedException(messages: payload.data['messages']);
      }
    } on DioException catch (e) {
      log.e('[AuthRepositoryImpl] :: login :: DioException => ${e.toString()}');

      throw HttpException(
        statusCode: e.response?.statusCode,
        messages: e.message,
      );
    }
  }
}
