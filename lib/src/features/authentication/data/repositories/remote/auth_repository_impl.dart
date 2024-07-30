import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fitmetrics/src/core/dio/dio_client.dart';
import 'package:fitmetrics/src/core/error/exceptions.dart';
import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';
import 'package:fitmetrics/src/features/authentication/data/models/login_request_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/login_response_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/signup_request_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/signup_response_model.dart';
import 'package:fitmetrics/src/features/authentication/data/repositories/local/local_token_storage_repository_impl.dart';
import 'package:fitmetrics/src/features/authentication/providers/auth_provider.dart';
import 'package:fitmetrics/src/features/user/data/remote/user_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl with LoggingMixin implements AuthRepository {
  AuthRepositoryImpl({
    required this.ref,
    required this.tokenStorageRepository,
    required this.userRepository,
  });

  Dio get dio => ref.read(dioProvider);
  final Ref ref;
  final LocalTokenStorageRepositoryImpl tokenStorageRepository;
  final DioUserRepository userRepository;

  @override
  Future<LoginResponse> login(LoginRequest request) async {
    try {
      final payload = await dio.post(
        '/auth/login',
        data: request.toJson(),
        options: Options(extra: <String, bool>{'tokenRequired': false}),
      );

      if (payload.statusCode == HttpStatus.ok) {
        log.d('✅ [AuthRepositoryImpl] :: login :: payload.data => ${payload.data}');

        final response = LoginResponse.fromJson(payload.data);

        await tokenStorageRepository.save(response.data);

        final authController = ref.read(authControllerProvider.notifier);

        await userRepository
            .fetchMe()
            .then((value) => authController.authenticateUser())
            .onError((error, stackTrace) => log.e('[AuthRepositoryImpl] :: Error fetching user: $error'));

        return response;
      } else {
        log.e('[AuthRepositoryImpl] :: login :: statusCode != HttpStatus.ok :: payload.data.messages => ${payload.data['messages']}');

        throw LoginFailedException(
          messages: LoginError.fromJson(payload.data['messages']),
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
  Future<SignupResponse> signup(SignupRequest request) async {
    try {
      final payload = await dio.post(
        '/auth/signup',
        data: request.toJson(),
        options: Options(extra: <String, bool>{'tokenRequired': false}),
      );

      if (payload.statusCode == HttpStatus.ok) {
        log.d('✅ [AuthRepositoryImpl] :: register :: payload.data => ${payload.data['messages']}');

        return SignupResponse.fromJson(payload.data);
      } else {
        log.e('[AuthRepositoryImpl] :: register :: statusCode != HttpStatus.ok :: payload.data :: messages => ${payload.data['messages']}');

        throw SignupFailedException(
          messages: SignupFieldsError.fromJson(payload.data['messages']),
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
