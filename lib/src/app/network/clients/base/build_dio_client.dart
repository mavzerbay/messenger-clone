import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../interceptors/error_interceptor.dart';
import '../../interceptors/token_interceptor.dart';

Dio buildDioClient(String base) {
  final dio = Dio(
    BaseOptions(
      baseUrl: base,
      contentType: "application/json",
    ),
  );

  dio.interceptors.addAll([
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      enabled: kDebugMode,
    ),
    TokenInterceptor.instance,
    ErrorInterceptor(),
  ]);

  return dio;
}
