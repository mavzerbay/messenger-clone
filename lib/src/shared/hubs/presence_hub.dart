import 'package:messenger_clone_flutter/src/app/base/cache/cache_manager.dart';
import 'package:messenger_clone_flutter/src/app/resource/constants/env_constants.dart';
import 'package:messenger_clone_flutter/src/shared/hubs/base_hub.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class PresenceHub extends BaseHub {
  static PresenceHub? _instance;
  // Avoid self instance
  PresenceHub._();
  static PresenceHub get instance => _instance ??= PresenceHub._();

  @override
  Future<void> connect({
    required dynamic Function(dynamic) onConnect,
  }) async {
    final token =
        await CacheManager.instance.getString(key: CacheKey.accessToken);
    final socket = io.io(
      EnvConstants.presenceHubUrl,
      io.OptionBuilder()
          .setTransports(['websocket'])
          .enableAutoConnect()
          .setExtraHeaders({
            'authorization': token,
          })
          .build(),
    );

    setSocket(socket);
    socket.onConnect(onConnect);
    socket.onError((error) {
      logE('Socket error', error: error);
    });
  }
}
