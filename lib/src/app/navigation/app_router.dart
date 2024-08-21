import 'package:auto_route/auto_route.dart';

import '../di/locator.dart';
import 'app_router.gr.dart';

final router = locator<AppRouter>();

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        CustomRoute(
          page: RegisterRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: DashboardRoute.page,
          transitionsBuilder: TransitionsBuilders.slideTop,
          durationInMilliseconds: 300,
        ),
      ];
}
