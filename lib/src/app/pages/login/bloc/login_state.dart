part of 'login_bloc.dart';

@freezed
sealed class LoginState extends BaseBlocState with _$LoginState {
  const factory LoginState({
    @Default(true) bool isObscure,
    @Default(false) bool isLoading,
    @Default(false) submitLock,
  }) = _LoginState;
}
