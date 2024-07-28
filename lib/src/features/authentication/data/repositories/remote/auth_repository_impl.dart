import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fitmetrics/src/core/dio/dio_client.dart';
import 'package:fitmetrics/src/core/error/exceptions.dart';
import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';
import 'package:fitmetrics/src/features/authentication/data/models/signup_request_model.dart';
import 'package:fitmetrics/src/features/shared/data/models/api_response_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/login_model.dart';
import 'package:fitmetrics/src/features/authentication/data/repositories/local/local_jwt_storage_repository_impl.dart';
import 'package:fitmetrics/src/features/authentication/domain/entities/token.dart';
import 'package:fitmetrics/src/features/authentication/providers/auth_provider.dart';
import 'package:fitmetrics/src/features/user/domain/entities/user.dart';
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
  Future<ApiResponse<Token>> login(LoginModel request) async {
    try {
      final payload = await dio.post(
        '/auth/login',
        data: request.toJson(),
        options: Options(extra: <String, bool>{'tokenRequired': false}),
      );

      if (payload.statusCode == HttpStatus.ok) {
        log.d('✅ [AuthRepositoryImpl] :: login :: payload.data => ${payload.data}');

        final response = ApiResponse<Token>(
          request: 'login',
          success: payload.data['success'],
          messages: ApiMessages.fromJson(payload.data['messages']),
          data: Token.fromJson(payload.data['data']),
        );

        await tokenStorageRepository.save(response.data!);

        final authController = ref.read(authControllerProvider.notifier);

        authController.authenticateUser();

        return response;
      } else {
        log.e('[AuthRepositoryImpl] :: login :: statusCode != HttpStatus.ok :: payload.data => ${payload.data['messages']}');

        throw LoginFailedException(
          messages: payload.data['messages'],
          statusCode: payload.statusCode,
          data: null,
        );
      }
    } on DioException catch (e) {
      log.e('[AuthRepositoryImpl] :: login :: DioException => ${e.toString()}');

      throw HttpException(
        statusCode: e.response?.statusCode,
        messages: e.message,
      );
    }
  }

  @override
  Future<ApiResponse<User>> signup(SignupRequestModel request) async {
    try {
      final payload = await dio.post(
        '/auth/signup',
        data: request.toJson(),
        options: Options(extra: <String, bool>{'tokenRequired': false}),
      );

      if (payload.statusCode == HttpStatus.ok) {
        log.d('✅ [AuthRepositoryImpl] :: register :: payload.data => ${payload.data['messages']}');

        final response = ApiResponse<User>(
          request: 'signup',
          success: payload.data['success'],
          messages: ApiMessages.fromJson(payload.data['messages']),
          data: User.fromJson(payload.data['data']),
        );

        return response;
      } else {
        log.e('[AuthRepositoryImpl] :: register :: statusCode != HttpStatus.ok :: payload.data => ${payload.data}');

        throw SignupFailedException(
          messages: ApiMessages.fromJson(payload.data['messages']),
          statusCode: payload.statusCode,
          data: payload.data['data'],
        );
      }
    } on DioException catch (e) {
      log.e('[AuthRepositoryImpl] :: register :: DioException => ${e.toString()}');

      throw HttpException(
        statusCode: e.response?.statusCode,
        messages: e.message,
      );
    }
  }
}
