import 'package:dio/dio.dart';
import 'package:fitmetrics/src/core/dio/dio_logger_interceptor.dart';
import 'package:fitmetrics/src/core/dio/dio_token_interceptor.dart';
import 'package:fitmetrics/src/features/authentication/providers/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio();

  final tokenStorageRepository = ref.read(tokenStorageRepositoryProvider);
  final authRepository = ref.read(authRepositoryProvider);

  dio.interceptors
    ..add(DioLoggerInterceptor())
    ..add(DioTokenInterceptor(dio: dio, tokenStorageRepository: tokenStorageRepository, authRepository: authRepository));

  const baseUrl = 'http://192.168.1.14:8000/api';

  dio.options.baseUrl = baseUrl;
  dio.options.connectTimeout = const Duration(seconds: 15);
  dio.options.receiveTimeout = const Duration(seconds: 15);
  dio.options.contentType = Headers.jsonContentType;
  dio.options.followRedirects = true;
  dio.options.validateStatus = (status) => status! >= 200 && status <= 401;
  dio.options.headers = <String, dynamic>{
    'Accept': Headers.jsonContentType,
  };
  dio.options.extra = <String, Object>{'tokenRequired': true};

  return dio;
}
