import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:messenger_clone_flutter/src/app/di/locator.dart';
import 'package:talker_flutter/talker_flutter.dart';

class EnvConstants {
  static final Talker _logger = locator<Talker>();

  static const _baseAPIURLKEY = 'BASE_API_URL_KEY';
  static const _presenceHubUrlKey = 'PRESENCE_HUB_URL_KEY';
  static const _conversationHubUrlKey = 'CONVERSATION_HUB_URL_KEY';

  static String get baseApiURL {
    // localhostta çalışırken kullanmak için canlıda iken direkt String.fromEnvironment(_baseAPIURLKEY) kullanılabilir
    String url = const String.fromEnvironment(_baseAPIURLKEY);
    if (url.contains('localhost') && kDebugMode && Platform.isAndroid) {
      url = url.replaceFirst('localhost', '10.0.2.2');
    }

    return url;
  }

  static String get presenceHubUrl {
    // localhostta çalışırken kullanmak için canlıda iken direkt String.fromEnvironment(_baseWSURLKEY) kullanılabilir
    String url = const String.fromEnvironment(_presenceHubUrlKey);

    if (url.contains('localhost') && kDebugMode && Platform.isAndroid) {
      url = url.replaceFirst('localhost', '10.0.2.2');
    }

    return url;
  }

  static String get conversationHubUrl {
    // localhostta çalışırken kullanmak için canlıda iken direkt String.fromEnvironment(_baseWSURLKEY) kullanılabilir
    String url = const String.fromEnvironment(_conversationHubUrlKey);

    if (url.contains('localhost') && kDebugMode && Platform.isAndroid) {
      url = url.replaceFirst('localhost', '10.0.2.2');
    }

    return url;
  }

  static void init() {
    _logger.info('$_baseAPIURLKEY : $baseApiURL');
    _logger.info('$_presenceHubUrlKey : $presenceHubUrl');
    _logger.info('$_conversationHubUrlKey : $conversationHubUrl');
  }
}
