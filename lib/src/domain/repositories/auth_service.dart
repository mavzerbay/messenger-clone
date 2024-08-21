import 'package:messenger_clone_flutter/src/app/di/locator.dart';
import 'package:messenger_clone_flutter/src/app/network/clients/base_client.dart';
import 'package:messenger_clone_flutter/src/data/models/login_request.dart';
import 'package:messenger_clone_flutter/src/data/models/register_request.dart';
import 'package:messenger_clone_flutter/src/data/interfaces/auth_service_interface.dart';

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
}
