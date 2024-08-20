import 'package:get_it/get_it.dart';
import 'package:messenger_clone_flutter/src/app/network/clients/base/build_dio_client.dart';
import 'package:messenger_clone_flutter/src/app/network/clients/base_client.dart';
import 'package:messenger_clone_flutter/src/app/resource/constants/env_constants.dart';

import '../navigation/app_router.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerSingleton<AppRouter>(AppRouter());

  final dio = buildDioClient(EnvConstants.baseApiURL);

  locator.registerSingleton<BaseClient>(BaseClient(dio));
}
