import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:messenger_clone_flutter/src/app/bloc/app_bloc.dart';
import 'package:messenger_clone_flutter/src/app/resource/constants/env_constants.dart';

import 'src/app/base/bloc/app_bloc_observer.dart';
import 'src/app/di/locator.dart';
import 'src/shared/config.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

abstract class ApplicationConfig extends Config {}

class AppConfig extends ApplicationConfig {
  static AppConfig? _instance;

  AppConfig._();

  static AppConfig get instance => _instance ??= AppConfig._();

  @override
  Future<void> config() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setupLocator();

    locator<AppBloc>().add(const AppEvent.started());

    EnvConstants.init();

    Intl.defaultLocale = 'en';

    Bloc.observer = const AppBlocObserver();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    HttpOverrides.global = MyHttpOverrides();
  }
}
