import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_event.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_state.dart';
import 'package:messenger_clone_flutter/src/app/base/cache/cache_manager.dart';
import 'package:messenger_clone_flutter/src/app/navigation/app_router.gr.dart';
import 'package:messenger_clone_flutter/src/data/models/login_request.dart';
import 'package:messenger_clone_flutter/src/domain/repositories/auth_service.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../bloc/app_bloc.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _LoginState()) {
    on<_Started>(
      _onStarted,
      transformer: log(),
    );
    on<_TogglePasswordVisibility>(
      _onTogglePasswordVisibility,
      transformer: log(),
    );
    on<_Submit>(
      _onSubmit,
      transformer: log(),
    );
  }

  final _authService = AuthService.instance;

  final formGroup = fb.group({
    'email': FormControl<String>(validators: [
      Validators.required,
      Validators.email,
    ]),
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(6),
    ]),
  });

  void _onStarted(_Started event, Emitter<LoginState> emit) {
    emit(state.copyWith(isLoading: true));
  }

  void _onTogglePasswordVisibility(
      _TogglePasswordVisibility event, Emitter<LoginState> emit) {
    emit(state.copyWith(isObscure: !state.isObscure));
  }

  Future<void> _onSubmit(_Submit event, Emitter<LoginState> emit) async {
    await runBlocCatching(
      doOnSubscribe: () async => emit(state.copyWith(submitLock: true)),
      action: () async {
        await Future.delayed(const Duration(seconds: 2));
        final response = await _authService.login(
          LoginRequest.fromJson(formGroup.value),
        );

        if (response.token != null) {
          CacheManager.instance
              .setString(key: CacheKey.accessToken, value: response.token!);
          appBloc.add(AppEvent.updateCurrentUser(user: response.user));
          navigator.showSuccessSnackBar('Login success');
          navigator.pushAndPopUntil(
            const DashboardRoute(),
            predicate: (route) => false,
          );
        } else {
          navigator.showErrorSnackBar('Login failed');
        }
      },
      handleLoading: false,
      doOnEventCompleted: () async => emit(state.copyWith(submitLock: false)),
      doOnError: (e) async {
        navigator.showErrorSnackBar('Login failed');
      },
    );
  }
}
