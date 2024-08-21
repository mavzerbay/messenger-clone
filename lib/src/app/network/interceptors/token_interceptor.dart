import 'package:dio/dio.dart';
import 'package:messenger_clone_flutter/src/app/base/cache/cache_manager.dart';

class TokenInterceptor extends Interceptor {
  static TokenInterceptor? _instance;
  TokenInterceptor._();
  static TokenInterceptor get instance => _instance ??= TokenInterceptor._();

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token =
        await CacheManager.instance.getString(key: CacheKey.accessToken);
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
