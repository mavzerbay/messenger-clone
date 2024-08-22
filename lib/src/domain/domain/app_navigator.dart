import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

abstract class AppNavigator {
  BuildContext get context;

  bool get isRoot;

  int get currentBottomTabIndex;

  String get getCurrentRouteName;

  @optionalTypeArgs
  Future<T?> push<T extends Object?>(
    PageRouteInfo route, {
    OnNavigationFailure? onFailure,
  });

  @optionalTypeArgs
  Future<void> popAndPushAll<T extends Object?>(
      List<PageRouteInfo<dynamic>> routes,
      {dynamic onFailure});

  @optionalTypeArgs
  Future<T?> pushAndPopUntil<T extends Object?>(
    PageRouteInfo<dynamic> route, {
    required bool Function(Route<dynamic>) predicate,
    bool scopedPopUntil = true,
    void Function(NavigationFailure)? onFailure,
  });

  @optionalTypeArgs
  Future<T?> replace<T extends Object?>(
    PageRouteInfo route, {
    OnNavigationFailure? onFailure,
  });

  @optionalTypeArgs
  Future<void> replaceAll<T extends Object?>(
    List<PageRouteInfo<dynamic>> routes, {
    void Function(NavigationFailure)? onFailure,
    bool updateExistingRoutes = true,
  });

  @optionalTypeArgs
  Future<bool> maybePop<T extends Object?>([T? result]);

  @optionalTypeArgs
  void popUntil<T extends Object?>(
    bool Function(Route<dynamic>) predicate, {
    bool scoped = true,
  });

  @optionalTypeArgs
  void popUntilRoot<T extends Object?>();

  @optionalTypeArgs
  Future<T?> showDialog<T extends Object?>({
    required WidgetBuilder builder,
    bool barrierDismissible = true,
  });

  @optionalTypeArgs
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
  });

  void showErrorSnackBar(String message,
      {String title = 'Error', Duration? duration});

  void showSuccessSnackBar(String message,
      {String title = 'Success', Duration? duration});

  void showInfoSnackBar(String message,
      {String title = 'Info', Duration? duration});

  void showWarningSnackBar(String message,
      {String title = 'Warning', Duration? duration});
}
