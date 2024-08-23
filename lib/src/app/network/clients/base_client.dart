import 'package:dio/dio.dart';
import 'package:messenger_clone_flutter/src/data/models/login_request.dart';
import 'package:retrofit/retrofit.dart';

import '../../../data/models/register_request.dart';
import '../../../domain/entities/index.dart';

part 'base_client.g.dart';

@RestApi()
abstract class BaseClient {
  factory BaseClient(Dio dio, {String baseUrl}) = _BaseClient;

  @POST('/auth/login')
  Future<LoginResponseEntity> login(
    @Body() LoginRequest body,
  );

  @POST('/auth/register')
  Future<UserEntity> register(
    @Body() RegisterRequest body,
  );

  @GET('/friends')
  Future<List<FriendRequestEntity>> getFriendRequests();

  @GET('/friend-list')
  Future<List<ActiveFriendEntity>> getFriendList();
}
