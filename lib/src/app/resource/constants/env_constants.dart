import 'package:flutter/foundation.dart';
import 'package:messenger_clone_flutter/src/app/di/locator.dart';
import 'package:talker_flutter/talker_flutter.dart';

class EnvConstants {
  static final Talker _logger = locator<Talker>();

  static const _baseAPIURLKEY = 'BASE_API_URL_KEY';

  static String baseApiURL = const String.fromEnvironment(_baseAPIURLKEY);

  static void init() {
    if (_baseAPIURLKEY.contains('localhost') && kDebugMode) {
      baseApiURL = baseApiURL.replaceFirst('localhost', '10.0.2.2');
    }
    _logger.info('$_baseAPIURLKEY : $baseApiURL');
    _logger.error('$_baseAPIURLKEY : $baseApiURL');
    _logger.warning('$_baseAPIURLKEY : $baseApiURL');
  }
}
