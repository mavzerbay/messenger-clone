import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone_flutter/src/app/resource/constants/color_constants.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint(
        '${ColorConstants.warningTerminalColor}${bloc.runtimeType.toString()} onChange $change ${ColorConstants.resetTerminalColor}');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    debugPrint(
        '${ColorConstants.successTerminalColor}${bloc.runtimeType.toString()} created${ColorConstants.resetTerminalColor}');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    debugPrint(
        '${ColorConstants.infoTerminalColor}${bloc.runtimeType.toString()} closed${ColorConstants.resetTerminalColor}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint(
        '${ColorConstants.errorTerminalColor}${bloc.runtimeType.toString()} onError $error $stackTrace${ColorConstants.resetTerminalColor}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint(
        '${ColorConstants.infoTerminalColor}${bloc.runtimeType.toString()} onEvent $event${ColorConstants.resetTerminalColor}');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint(
        '${ColorConstants.infoTerminalColor}${bloc.runtimeType.toString()} onTransition $transition${ColorConstants.resetTerminalColor}');
  }
}
