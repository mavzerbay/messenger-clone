part of 'register_bloc.dart';

@freezed
class RegisterState extends BaseBlocState with _$RegisterState {
  const factory RegisterState({
    @Default(true) bool isObscure,
    @Default(false) bool isLoading,
    @Default(false) submitLock,
  }) = _RegisterState;
}
