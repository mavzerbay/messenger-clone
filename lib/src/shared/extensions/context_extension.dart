import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/bloc/app_bloc.dart';

extension MediaQueryExtension on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;

  TextScaler get textScaleFactor => MediaQuery.of(this).textScaler;
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;
  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  double get padding => MediaQuery.paddingOf(this).top;

  // View Insets
  double get viewInsets => MediaQuery.viewInsetsOf(this).top;
  double get viewInsetsBottom => MediaQuery.viewInsetsOf(this).bottom;
  double get viewInsetsLeft => MediaQuery.viewInsetsOf(this).left;
  double get viewInsetsRight => MediaQuery.viewInsetsOf(this).right;
  double get viewInsetsTop => MediaQuery.viewInsetsOf(this).top;
  double get viewInsetsHorizontal => MediaQuery.viewInsetsOf(this).horizontal;
  double get viewInsetsVertical => MediaQuery.viewInsetsOf(this).vertical;
  double get viewInsetsTopLeft => MediaQuery.viewInsetsOf(this).topLeft.dx;
  double get viewInsetsTopRight => MediaQuery.viewInsetsOf(this).topRight.dx;

  // View Padding
  double get viewPadding => MediaQuery.viewPaddingOf(this).top;
  double get viewPaddingBottom => MediaQuery.viewPaddingOf(this).bottom;
  double get viewPaddingLeft => MediaQuery.viewPaddingOf(this).left;
  double get viewPaddingRight => MediaQuery.viewPaddingOf(this).right;
  double get viewPaddingTop => MediaQuery.viewPaddingOf(this).top;
  double get viewPaddingHorizontal => MediaQuery.viewPaddingOf(this).horizontal;
  double get viewPaddingVertical => MediaQuery.viewPaddingOf(this).vertical;
  double get viewPaddingTopLeft => MediaQuery.viewPaddingOf(this).topLeft.dx;
  double get viewPaddingTopRight => MediaQuery.viewPaddingOf(this).topRight.dx;
}

extension ThemeDataExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  Color get primaryColor => theme.primaryColor;
  Color get secondaryHeaderColor => theme.secondaryHeaderColor;

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;
  TextTheme get primaryTextTheme => theme.primaryTextTheme;
}

extension AppBlocExtension on BuildContext {
  AppBloc get appBloc => read<AppBloc>();
}
