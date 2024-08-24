import 'package:freezed_annotation/freezed_annotation.dart';

import '../mixin/log_mixin.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

abstract class BaseHub with LogMixin {
  io.Socket? _socket;

  @protected
  io.Socket? setSocket(io.Socket? socket) => _socket = socket;

  String? get socketId => _socket?.id;

  @protected
  Future<void> connect({
    required dynamic Function(dynamic) onConnect,
  });

  void disconnect() => _socket?.disconnect();

  void on(String event, Function(dynamic) callback) =>
      _socket?.on(event, callback);

  void emit(String event, [dynamic data]) => _socket?.emit(event, data);
}
