import 'package:messenger_clone_flutter/src/data/models/login_request.dart';
import 'package:messenger_clone_flutter/src/data/models/register_request.dart';

abstract class IAuthService {
  Future<void> login(LoginRequest request);
  Future<void> register(RegisterRequest request);
}
