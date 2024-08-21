part of 'app_bloc.dart';

@freezed
class AppState extends BaseBlocState with _$AppState {
  const factory AppState({
    @Default(false) bool isDarkMode,
    @Default(false) bool showLoading,
    @Default(true) bool firstTimeOnApp,
    String? loadingMessage,
  }) = _AppState;
}
