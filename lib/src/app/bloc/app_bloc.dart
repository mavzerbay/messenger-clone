import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_event.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_state.dart';
import 'package:messenger_clone_flutter/src/app/base/cache/cache_manager.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(const _AppState()) {
    on<_Started>(
      _onStarted,
      transformer: log(),
    );
    on<_LoadingVisibilityEmitted>(
      _onLoadingVisibilityEmitted,
      transformer: log(),
    );
    on<_ToggleThemeMode>(
      _onToggleThemeMode,
      transformer: log(),
    );
  }

  Future<void> _onStarted(_Started event, Emitter<AppState> emit) async {
    await runBlocCatching(
      action: () async {
        final isDarkMode = await cacheManager.getBool(key: CacheKey.isDarkMode);
        final firstTime = await cacheManager.getBool(key: CacheKey.firstTime);

        emit(state.copyWith(
          isDarkMode: isDarkMode ?? false,
          firstTimeOnApp: firstTime ?? true,
        ));
        
        cacheManager.setBool(key: CacheKey.firstTime, value: false);
      },
      handleLoading: false,
    );
  }

  void _onLoadingVisibilityEmitted(
      _LoadingVisibilityEmitted event, Emitter<AppState> emit) {
    emit(
      state.copyWith(
        showLoading: event.visibility,
        loadingMessage: event.message,
      ),
    );
  }

  void _onToggleThemeMode(_ToggleThemeMode event, Emitter<AppState> emit) {
    cacheManager.setBool(
      key: CacheKey.isDarkMode,
      value: !state.isDarkMode,
    );
    emit(
      state.copyWith(
        isDarkMode: !state.isDarkMode,
      ),
    );
  }
}
