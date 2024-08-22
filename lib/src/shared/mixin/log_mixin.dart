import 'package:messenger_clone_flutter/src/app/di/locator.dart';
import 'package:talker_flutter/talker_flutter.dart';

mixin LogMixin on Object {
  final Talker _logger = locator<Talker>();

  void logD(String message) {
    _logger.debug(message);
  }

  void logE(
    Object? errorMessage, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.error(
      errorMessage,
      error,
      stackTrace,
    );
  }
}
