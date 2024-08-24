import 'package:messenger_clone_flutter/src/data/models/login_request.dart';
import 'package:messenger_clone_flutter/src/data/models/register_request.dart';

import '../../domain/entities/index.dart';
import '../../domain/entities/message_entity.dart';

abstract class IAuthService {
  Future<LoginResponseEntity> login(LoginRequest request);
  Future<UserEntity> register(RegisterRequest request);
  Future<List<FriendRequestEntity>> getFriendRequests();
  Future<List<ActiveFriendEntity>> getFriendList();
  Future<UserEntity> currentUser();
  Future<List<MessageEntity>> getMessages(int conversationId);
}
