import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:messenger_clone_flutter/src/app/resource/constants/env_constants.dart';

import 'src/app/base/bloc/app_bloc_observer.dart';
import 'src/shared/config.dart';

abstract class ApplicationConfig extends Config {}

class AppConfig extends ApplicationConfig {
  static AppConfig? _instance;

  AppConfig._();

  static AppConfig get instance => _instance ??= AppConfig._();

  @override
  Future<void> config() async {
    WidgetsFlutterBinding.ensureInitialized();
    
    EnvConstants.init();

    Intl.defaultLocale = 'en';

    Bloc.observer = const AppBlocObserver();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
