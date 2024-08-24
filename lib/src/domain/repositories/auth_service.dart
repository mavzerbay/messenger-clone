import 'package:messenger_clone_flutter/src/app/di/locator.dart';
import 'package:messenger_clone_flutter/src/app/network/clients/base_client.dart';
import 'package:messenger_clone_flutter/src/data/models/login_request.dart';
import 'package:messenger_clone_flutter/src/data/models/register_request.dart';
import 'package:messenger_clone_flutter/src/data/interfaces/auth_service_interface.dart';
import 'package:messenger_clone_flutter/src/domain/entities/message_entity.dart';

import '../entities/index.dart';

class AuthService extends IAuthService {
  static AuthService? _instance;
  // Avoid self instance
  AuthService._();
  static AuthService get instance => _instance ??= AuthService._();

  final _client = locator<BaseClient>();

  @override
  Future<LoginResponseEntity> login(LoginRequest request) {
    return _client.login(request);
  }

  @override
  Future<UserEntity> register(RegisterRequest request) {
    return _client.register(request);
  }

  @override
  Future<List<FriendRequestEntity>> getFriendRequests() {
    return _client.getFriendRequests();
  }

  @override
  Future<List<ActiveFriendEntity>> getFriendList() {
    return _client.getFriendList();
  }

  @override
  Future<UserEntity> currentUser() {
    return _client.currentUser();
  }

  @override
  Future<List<MessageEntity>> getMessages(int conversationId) {
    return _client.getMessages(conversationId);
  }
}
