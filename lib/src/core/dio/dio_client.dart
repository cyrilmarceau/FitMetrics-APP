import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio();

  /// TODO: Create the TokenStorageRepository and AuthRepository
  /// Create interceptors for the Dio client to handle token refresh
  ///

  const baseUrl = 'http://192.168.1.14:8000/api/v1';

  dio.options.baseUrl = baseUrl;
  dio.options.connectTimeout = const Duration(seconds: 15);
  dio.options.receiveTimeout = const Duration(seconds: 15);
  dio.options.contentType = Headers.jsonContentType;
  dio.options.followRedirects = true;
  dio.options.validateStatus = (status) => status! >= 200 && status <= 400;
  dio.options.headers = <String, dynamic>{
    'Accept': Headers.jsonContentType,
  };
  dio.options.extra = <String, Object>{'tokenRequired': true};

  return dio;
}
