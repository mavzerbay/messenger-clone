import 'package:get_it/get_it.dart';
import 'package:messenger_clone_flutter/src/app/bloc/app_bloc.dart';
import 'package:messenger_clone_flutter/src/app/network/clients/base/build_dio_client.dart';
import 'package:messenger_clone_flutter/src/app/network/clients/base_client.dart';
import 'package:messenger_clone_flutter/src/app/resource/constants/env_constants.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../navigation/app_router.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerSingleton<AppRouter>(AppRouter());

  final dio = buildDioClient(EnvConstants.baseApiURL);

  locator.registerSingleton<BaseClient>(BaseClient(dio));

  final talker = TalkerFlutter.init(
    settings: TalkerSettings(
      colors: {
        TalkerLogType.debug: AnsiPen()..cyan(),
        TalkerLogType.error: AnsiPen()..red(),
        TalkerLogType.info: AnsiPen()..magenta(),
        TalkerLogType.warning: AnsiPen()..yellow(),
      },
    ),
  );

  locator.registerSingleton<Talker>(talker);

  final appBloc = AppBloc();

  // Buradaki saçma kodun sebebi normalde auth ve appBloc ayırmak gerekir fakat
  // bu projede böyle bir ayrım yapmadığım ve baseBloc içerisinde signout yapma
  // ihtimalim olduğundan böyle bir çözüm yolu buldum.
  appBloc.appBloc = appBloc;

  locator.registerLazySingleton<AppBloc>(() => appBloc);
}
