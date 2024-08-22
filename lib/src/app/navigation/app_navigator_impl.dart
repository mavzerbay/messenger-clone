import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as m;
import 'package:messenger_clone_flutter/src/app/components/snackbars.dart';
import 'package:messenger_clone_flutter/src/app/navigation/app_router.dart';
import 'package:messenger_clone_flutter/src/domain/domain/app_navigator.dart';
import 'package:messenger_clone_flutter/src/shared/mixin/log_mixin.dart';

class AppNavigatorImpl extends AppNavigator with LogMixin {
  static AppNavigatorImpl? _instance;

  AppNavigatorImpl._();

  static AppNavigatorImpl get instance => _instance ??= AppNavigatorImpl._();

  final AppRouter _router = router;

  TabsRouter? tabsRouter;

  @override
  BuildContext get context => _router.navigatorKey.currentContext!;

  @override
  int get currentBottomTabIndex {
    if (tabsRouter == null) {
      throw 'Not found any TabRouter';
    }
    return tabsRouter?.activeIndex ?? 0;
  }

  @override
  String get getCurrentRouteName => _router.current.name;

  @override
  bool get isRoot => _router.isRoot;

  @override
  Future<bool> maybePop<T extends Object?>([T? result]) {
    return _router.maybePop(result);
  }

  @override
  void popUntil<T extends Object?>(
    bool Function(Route<dynamic>) predicate, {
    bool scoped = true,
  }) {
    if (kDebugMode) {
      logD('popUntil called');
    }
    _router.popUntil(predicate, scoped: scoped);
  }

  @override
  void popUntilRoot<T extends Object?>() {
    if (kDebugMode) {
      logD('popUntilRoot called');
    }
    _router.popUntilRoot();
  }

  @override
  Future<T?> push<T extends Object?>(PageRouteInfo route,
      {OnNavigationFailure? onFailure}) {
    if (kDebugMode) {
      logD('push called with route: $route');
    }
    return _router.push(route, onFailure: onFailure);
  }

  @override
  Future<void> popAndPushAll<T extends Object?>(
      List<PageRouteInfo<dynamic>> routes,
      {dynamic onFailure}) {
    if (kDebugMode) {
      logD('popAndPushAll called with routes: $routes');
    }

    return _router.popAndPushAll(routes, onFailure: onFailure);
  }

  @override
  Future<T?> pushAndPopUntil<T extends Object?>(
    PageRouteInfo<dynamic> route, {
    required bool Function(Route<dynamic>) predicate,
    bool scopedPopUntil = true,
    void Function(NavigationFailure)? onFailure,
  }) {
    if (kDebugMode) {
      logD('pushAndPopUntil called with route: $route');
    }

    return _router.pushAndPopUntil(
      route,
      predicate: predicate,
      onFailure: onFailure,
      scopedPopUntil: scopedPopUntil,
    );
  }

  @override
  Future<T?> replace<T extends Object?>(PageRouteInfo route,
      {OnNavigationFailure? onFailure}) {
    if (kDebugMode) {
      logD('replace called with route: $route');
    }
    return _router.replace(route, onFailure: onFailure);
  }

  @override
  Future<void> replaceAll<T extends Object?>(
    List<PageRouteInfo<dynamic>> routes, {
    void Function(NavigationFailure)? onFailure,
    bool updateExistingRoutes = true,
  }) {
    if (kDebugMode) {
      logD('replaceAll called with routes: $routes');
    }
    return _router.replaceAll(routes, onFailure: onFailure);
  }

  @override
  Future<T?> showDialog<T extends Object?>(
      {required WidgetBuilder builder, bool barrierDismissible = true}) {
    if (kDebugMode) {
      logD('showDialog called');
    }

    return m.showDialog(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
    );
  }

  @override
  Future<T?> showModalBottomSheet<T extends Object?>({
    required WidgetBuilder builder,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    Color? barrierColor,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
  }) {
    if (kDebugMode) {
      logD('showModalBottomSheet called');
    }

    return m.showModalBottomSheet(
      context: context,
      builder: builder,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
    );
  }

  @override
  void showErrorSnackBar(String message,
      {String title = 'Error', Duration? duration}) {
    Snackbars.error(context, message, title: title, duration: duration);
  }

  @override
  void showInfoSnackBar(String message,
      {String title = 'Info', Duration? duration}) {
    Snackbars.info(context, message, title: title, duration: duration);
  }

  @override
  void showSuccessSnackBar(String message,
      {String title = 'Success', Duration? duration}) {
    Snackbars.success(context, message, title: title, duration: duration);
  }

  @override
  void showWarningSnackBar(String message,
      {String title = 'Warning', Duration? duration}) {
    Snackbars.warning(context, message, title: title, duration: duration);
  }
}
