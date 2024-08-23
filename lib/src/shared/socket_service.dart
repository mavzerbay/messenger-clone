import 'package:messenger_clone_flutter/src/app/base/cache/cache_manager.dart';
import 'package:messenger_clone_flutter/src/app/resource/constants/env_constants.dart';
import 'package:messenger_clone_flutter/src/shared/mixin/log_mixin.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketService with LogMixin {
  static SocketService? _instance;
  // Avoid self instance
  SocketService._();
  static SocketService get instance => _instance ??= SocketService._();

  io.Socket? _socket;

  String? get socketId => _socket?.id;

  Future<void> connect({
    required dynamic Function(dynamic) onConnect,
  }) async {
    final token =
        await CacheManager.instance.getString(key: CacheKey.accessToken);
    _socket = io.io(
      EnvConstants.baseWSURL,
      io.OptionBuilder()
          .setTransports(['websocket'])
          .enableAutoConnect()
          .setExtraHeaders({
            'authorization': token,
          })
          .build(),
    );

    _socket?.onConnect(onConnect);
  }

  void emit(String event, [dynamic data]) {
    _socket?.emit(event, data);
  }

  void on(String event, Function(dynamic) callback) {
    _socket?.on(event, callback);
  }

  void disconnect() {
    _socket?.disconnect();
  }
}
