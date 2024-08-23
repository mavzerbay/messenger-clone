import 'package:auto_route/auto_route.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:messenger_clone_flutter/src/app/base/cache/cache_manager.dart';

import '../../../shared/async_helper/run_catching.dart';
import '../app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  const AuthGuard();

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final output = (await runAsyncCatching(
      action: () async {
        final token =
            await CacheManager.instance.getString(key: CacheKey.accessToken);

        return token != null && !JwtDecoder.isExpired(token);
      },
    ));

    final isLoggedIn = output.when(success: (o) => o, failure: (e) => false);

    if (isLoggedIn) {
      resolver.next(true);
    } else {
      router.replace(const LoginRoute());
      resolver.next(false);
    }
  }
}
