import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'base_client.g.dart';

@RestApi()
abstract class BaseClient {
  factory BaseClient(Dio dio, {String baseUrl}) = _BaseClient;

  @POST('/auth/login')
  Future<void> login(
    @Body() Map<String, dynamic> body,
  );

  @POST('/auth/register')
  Future<void> register(
    @Body() Map<String, dynamic> body,
  );
}
