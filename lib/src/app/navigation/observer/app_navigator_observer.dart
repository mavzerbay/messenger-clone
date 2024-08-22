import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone_flutter/src/shared/mixin/log_mixin.dart';

class AppNavigatorObserver extends NavigatorObserver with LogMixin {
  AppNavigatorObserver();

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (kDebugMode) {
      logD(
        'didPush from ${previousRoute?.settings.name} to ${route.settings.name}',
      );
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (kDebugMode) {
      logD(
        'didPop ${route.settings.name}, back to ${previousRoute?.settings.name}',
      );
    }
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    if (kDebugMode) {
      logD(
        'didRemove ${route.settings.name}, back to ${previousRoute?.settings.name}',
      );
    }
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (kDebugMode) {
      logD(
        'didReplace ${oldRoute?.settings.name} by ${newRoute?.settings.name}',
      );
    }
  }
}
