import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:messenger_clone_flutter/src/app/navigation/app_router.dart';

import '../../../shared/mixin/event_transformer_mixin.dart';
import '../../bloc/app_bloc.dart';
import '../cache/cache_manager.dart';
import 'base_bloc_event.dart';
import 'base_bloc_state.dart';

abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends BaseBlocDelegate<E, S> with EventTransformerMixin {
  BaseBloc(super.initialState);
}

abstract class BaseBlocDelegate<E extends BaseBlocEvent,
    S extends BaseBlocState> extends Bloc<E, S> {
  BaseBlocDelegate(super.initialState);

  late final AppRouter router;
  late final AppBloc appBloc;

  final logger = Logger(
    printer: PrettyPrinter(),
  );

  final cacheManager = CacheManager.instance;

  void showLoading({String? message}) {
    appBloc.add(
      AppEvent.loadingVisibilityEmitted(
        visibility: true,
        message: message,
      ),
    );
  }

  void hideLoading() {
    appBloc.add(
      const AppEvent.loadingVisibilityEmitted(
        visibility: false,
      ),
    );
  }

  Future<void> runBlocCatching({
    required Future<void> Function() action,
    Future<void> Function()? doOnSubscribe,
    Future<void> Function(Object e)? doOnError,
    Future<void> Function()? doOnSuccess,
    Future<void> Function()? doOnEventCompleted,
    bool handleLoading = true,
    bool handleError = true,
    String? overrideErrorMessage,
    String? loadingMessage,
  }) async {
    try {
      await doOnSubscribe?.call();
      if (handleLoading) {
        showLoading(
          message: loadingMessage,
        );
      }

      await action.call();

      if (handleLoading) {
        hideLoading();
      }
      await doOnSuccess?.call();
    } catch (e) {
      if (handleLoading) {
        hideLoading();
      }
      await doOnError?.call(e);
    } finally {
      await doOnEventCompleted?.call();
      if (handleLoading) {
        hideLoading();
      }
    }
  }
}
