part of 'register_bloc.dart';

@freezed
class RegisterEvent extends BaseBlocEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
}