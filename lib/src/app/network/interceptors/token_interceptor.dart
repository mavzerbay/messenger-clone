import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  static TokenInterceptor? _instance;
  TokenInterceptor._();
  static TokenInterceptor get instance => _instance ??= TokenInterceptor._();

  late final Future<String> Function() getAccessToken;
  init({required Future<String> Function() getAccessToken}) {
    this.getAccessToken = getAccessToken;
  }

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await getAccessToken.call();
    if (token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
