import 'package:dio/dio.dart';

import '../exceptions/token_exception.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          response: err.response,
          error: const TokenException(),
        ),
      );
      return;
    }
    handler.next(err);
  }
}
