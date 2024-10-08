import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone_flutter/src/app/navigation/app_navigator_impl.dart';
import 'package:messenger_clone_flutter/src/app/network/exceptions/token_exception.dart';
import 'package:messenger_clone_flutter/src/domain/domain/app_navigator.dart';
import 'package:messenger_clone_flutter/src/shared/mixin/log_mixin.dart';

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
    S extends BaseBlocState> extends Bloc<E, S> with LogMixin {
  BaseBlocDelegate(super.initialState);

  final AppNavigator navigator = AppNavigatorImpl.instance;
  late final AppBloc appBloc;

  final cacheManager = CacheManager.instance;

  @override
  void add(E event) {
    if (!isClosed) {
      super.add(event);
    } else {
      logE('Cannot add new event $event because $runtimeType was closed');
    }
  }

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
    } on TokenException catch (_) {
      navigator.showErrorSnackBar('Token expired, please login again');
      (appBloc).add(const AppEvent.signOut(isForce: true));
    } on DioException catch (e) {
      if (e.error is TokenException) {
        navigator.showErrorSnackBar('Token expired, please login again');
        appBloc.add(const AppEvent.signOut(isForce: true));
      }
      if (handleLoading) {
        hideLoading();
      }
      await doOnError?.call(e);
    } catch (e, st) {
      if (handleLoading) {
        hideLoading();
      }
      logE(e, stackTrace: st);
      await doOnError?.call(e);
    } finally {
      await doOnEventCompleted?.call();
      if (handleLoading) {
        hideLoading();
      }
    }
  }
}
