part of 'login_bloc.dart';

@freezed
sealed class LoginEvent extends BaseBlocEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.togglePasswordVisibility() =
      _TogglePasswordVisibility;
  const factory LoginEvent.submit() = _Submit;
}
