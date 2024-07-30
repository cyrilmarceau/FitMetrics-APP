import 'package:dio/dio.dart';
import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';
import 'package:fitmetrics/src/features/authentication/data/repositories/local/local_token_storage_repository.dart';
import 'package:fitmetrics/src/features/authentication/data/repositories/remote/auth_repository.dart';

class DioTokenInterceptor with LoggingMixin implements InterceptorsWrapper {
  final Dio dio;
  final LocalTokenStorageRepository tokenStorageRepository;
  final AuthRepository authRepository;

  DioTokenInterceptor({
    required this.dio,
    required this.tokenStorageRepository,
    required this.authRepository,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    /// Check if the token is required for the request
    /// By default all request required a token
    /// If the request does not require a token, set the tokenRequired to false
    final tokenRequired = options.extra['tokenRequired'] as bool;

    if (tokenRequired) {
      final storage = await tokenStorageRepository.read();

      if (storage == null) {
        throw UnimplementedError('Token is required but not found in the storage');
      } else {
        /// Add the accessToken to the request headers
        options.headers['Authorization'] = 'Bearer ${storage.token}';
      }
    }

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // log.i('📦 [DioInterceptor :: onResponse] => Received network response with status code ⏩ ${response.statusCode} ⏪');

    final List<int> successCodes = [200, 201, 204, 205];

    if (successCodes.contains(response.statusCode)) {
      log.i('[DioInterceptor :: onResponse] :: Code => ✅ ${response.statusCode} ✅');
    } else {
      log.i('[DioInterceptor :: onResponse] :: Code => ❌ ${response.statusCode} ❌');
    }

    return handler.next(response);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }
}
