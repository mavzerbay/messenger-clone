import 'package:flutter/material.dart';

class EnvConstants {
  const EnvConstants._();

  static const _baseAPIURLKEY = 'BASE_API_URL_KEY';

  static String baseApiURL = const String.fromEnvironment(_baseAPIURLKEY);

  static void init() {
    debugPrint('$_baseAPIURLKEY : $baseApiURL');
  }
}
