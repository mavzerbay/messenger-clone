import 'package:auto_route/auto_route.dart';

import '../di/locator.dart';
import 'app_router.gr.dart';
import 'middleware/auth_guard.dart';

final router = locator<AppRouter>();

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        CustomRoute(
          page: RegisterRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: DashboardRoute.page,
          guards: const [AuthGuard()],
          transitionsBuilder: TransitionsBuilders.slideBottom,
          durationInMilliseconds: 300,
          children: [
            AutoRoute(page: ChatsRoute.page, initial: true),
            AutoRoute(page: CallsRoute.page),
            AutoRoute(page: PeopleRoute.page),
            AutoRoute(page: StoriesRoute.page),
          ],
        ),
        CustomRoute(
          page: ChatDetailRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
        ),
      ];
}
