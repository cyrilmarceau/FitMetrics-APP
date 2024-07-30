import 'package:dio/dio.dart';
import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';

class DioLoggerInterceptor extends Interceptor with LoggingMixin {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // log.d('[DioLoggerInterceptor] :: REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final List<int> successCodes = [200, 201, 204, 205];

    // if (successCodes.contains(response.statusCode)) {
    //   log.i('[RequestOptions] :: onResponse] :: Code => ✅ ${response.statusCode} ✅');
    // } else {
    //   log.i('[RequestOptions] :: onResponse] :: Code => ❌ ${response.statusCode} ❌');
    // }

    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    log.e('[DioLoggerInterceptor] :: ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    super.onError(err, handler);
  }
}
