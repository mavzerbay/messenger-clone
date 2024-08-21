import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class AppNavigatorObserver extends NavigatorObserver {
  late final Logger _logger;
  AppNavigatorObserver() {
    _logger = Logger(
      printer: PrettyPrinter(),
    );
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (kDebugMode) {
      _logger.d(
        'didPush from ${previousRoute?.settings.name} to ${route.settings.name}',
      );
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (kDebugMode) {
      _logger.d(
        'didPop ${route.settings.name}, back to ${previousRoute?.settings.name}',
      );
    }
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    if (kDebugMode) {
      _logger.d(
        'didRemove ${route.settings.name}, back to ${previousRoute?.settings.name}',
      );
    }
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (kDebugMode) {
      _logger.d(
        'didReplace ${oldRoute?.settings.name} by ${newRoute?.settings.name}',
      );
    }
  }
}
