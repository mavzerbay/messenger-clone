part of 'app_bloc.dart';

@freezed
class AppEvent extends BaseBlocEvent with _$AppEvent {
  const factory AppEvent.started() = _Started;

  const factory AppEvent.loadingVisibilityEmitted({
    required bool visibility,
    String? message,
  }) = _LoadingVisibilityEmitted;

  const factory AppEvent.toggleThemeMode() = _ToggleThemeMode;

  const factory AppEvent.signOut({@Default(false) isForce}) = _SignOut;
}
