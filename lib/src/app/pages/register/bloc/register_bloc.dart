import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_event.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_state.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends BaseBloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const _RegisterState()) {
    on<_Started>(
      _onStarted,
      transformer: log(),
    );
  }

  final formGroup = fb.group(
    {
      'firstName': FormControl<String>(validators: [
        Validators.required,
      ]),
      'lastName': FormControl<String>(validators: [
        Validators.required,
      ]),
      'email': FormControl<String>(validators: [
        Validators.required,
        Validators.email,
      ]),
      'password': FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(6),
      ]),
      'confirmPassword': FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(6),
      ]),
    },
    [
      Validators.mustMatch('password', 'confirmPassword'),
    ],
  );

  void _onStarted(_Started event, Emitter<RegisterState> emit) {
    emit(state.copyWith(isLoading: true));
  }
}
