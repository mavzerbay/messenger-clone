// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool visibility, String? message)
        loadingVisibilityEmitted,
    required TResult Function() toggleThemeMode,
    required TResult Function(dynamic isForce) signOut,
    required TResult Function(UserEntity? user) updateCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult? Function()? toggleThemeMode,
    TResult? Function(dynamic isForce)? signOut,
    TResult? Function(UserEntity? user)? updateCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult Function()? toggleThemeMode,
    TResult Function(dynamic isForce)? signOut,
    TResult Function(UserEntity? user)? updateCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UpdateCurrentUser value) updateCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingVisibilityEmitted value)?
        loadingVisibilityEmitted,
    TResult? Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UpdateCurrentUser value)? updateCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UpdateCurrentUser value)? updateCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AppEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool visibility, String? message)
        loadingVisibilityEmitted,
    required TResult Function() toggleThemeMode,
    required TResult Function(dynamic isForce) signOut,
    required TResult Function(UserEntity? user) updateCurrentUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult? Function()? toggleThemeMode,
    TResult? Function(dynamic isForce)? signOut,
    TResult? Function(UserEntity? user)? updateCurrentUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult Function()? toggleThemeMode,
    TResult Function(dynamic isForce)? signOut,
    TResult Function(UserEntity? user)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UpdateCurrentUser value) updateCurrentUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingVisibilityEmitted value)?
        loadingVisibilityEmitted,
    TResult? Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UpdateCurrentUser value)? updateCurrentUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UpdateCurrentUser value)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadingVisibilityEmittedImplCopyWith<$Res> {
  factory _$$LoadingVisibilityEmittedImplCopyWith(
          _$LoadingVisibilityEmittedImpl value,
          $Res Function(_$LoadingVisibilityEmittedImpl) then) =
      __$$LoadingVisibilityEmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool visibility, String? message});
}

/// @nodoc
class __$$LoadingVisibilityEmittedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$LoadingVisibilityEmittedImpl>
    implements _$$LoadingVisibilityEmittedImplCopyWith<$Res> {
  __$$LoadingVisibilityEmittedImplCopyWithImpl(
      _$LoadingVisibilityEmittedImpl _value,
      $Res Function(_$LoadingVisibilityEmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibility = null,
    Object? message = freezed,
  }) {
    return _then(_$LoadingVisibilityEmittedImpl(
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadingVisibilityEmittedImpl implements _LoadingVisibilityEmitted {
  const _$LoadingVisibilityEmittedImpl(
      {required this.visibility, this.message});

  @override
  final bool visibility;
  @override
  final String? message;

  @override
  String toString() {
    return 'AppEvent.loadingVisibilityEmitted(visibility: $visibility, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingVisibilityEmittedImpl &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visibility, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingVisibilityEmittedImplCopyWith<_$LoadingVisibilityEmittedImpl>
      get copyWith => __$$LoadingVisibilityEmittedImplCopyWithImpl<
          _$LoadingVisibilityEmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool visibility, String? message)
        loadingVisibilityEmitted,
    required TResult Function() toggleThemeMode,
    required TResult Function(dynamic isForce) signOut,
    required TResult Function(UserEntity? user) updateCurrentUser,
  }) {
    return loadingVisibilityEmitted(visibility, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult? Function()? toggleThemeMode,
    TResult? Function(dynamic isForce)? signOut,
    TResult? Function(UserEntity? user)? updateCurrentUser,
  }) {
    return loadingVisibilityEmitted?.call(visibility, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult Function()? toggleThemeMode,
    TResult Function(dynamic isForce)? signOut,
    TResult Function(UserEntity? user)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (loadingVisibilityEmitted != null) {
      return loadingVisibilityEmitted(visibility, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UpdateCurrentUser value) updateCurrentUser,
  }) {
    return loadingVisibilityEmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingVisibilityEmitted value)?
        loadingVisibilityEmitted,
    TResult? Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UpdateCurrentUser value)? updateCurrentUser,
  }) {
    return loadingVisibilityEmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UpdateCurrentUser value)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (loadingVisibilityEmitted != null) {
      return loadingVisibilityEmitted(this);
    }
    return orElse();
  }
}

abstract class _LoadingVisibilityEmitted implements AppEvent {
  const factory _LoadingVisibilityEmitted(
      {required final bool visibility,
      final String? message}) = _$LoadingVisibilityEmittedImpl;

  bool get visibility;
  String? get message;
  @JsonKey(ignore: true)
  _$$LoadingVisibilityEmittedImplCopyWith<_$LoadingVisibilityEmittedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleThemeModeImplCopyWith<$Res> {
  factory _$$ToggleThemeModeImplCopyWith(_$ToggleThemeModeImpl value,
          $Res Function(_$ToggleThemeModeImpl) then) =
      __$$ToggleThemeModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleThemeModeImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$ToggleThemeModeImpl>
    implements _$$ToggleThemeModeImplCopyWith<$Res> {
  __$$ToggleThemeModeImplCopyWithImpl(
      _$ToggleThemeModeImpl _value, $Res Function(_$ToggleThemeModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleThemeModeImpl implements _ToggleThemeMode {
  const _$ToggleThemeModeImpl();

  @override
  String toString() {
    return 'AppEvent.toggleThemeMode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleThemeModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool visibility, String? message)
        loadingVisibilityEmitted,
    required TResult Function() toggleThemeMode,
    required TResult Function(dynamic isForce) signOut,
    required TResult Function(UserEntity? user) updateCurrentUser,
  }) {
    return toggleThemeMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult? Function()? toggleThemeMode,
    TResult? Function(dynamic isForce)? signOut,
    TResult? Function(UserEntity? user)? updateCurrentUser,
  }) {
    return toggleThemeMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult Function()? toggleThemeMode,
    TResult Function(dynamic isForce)? signOut,
    TResult Function(UserEntity? user)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (toggleThemeMode != null) {
      return toggleThemeMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UpdateCurrentUser value) updateCurrentUser,
  }) {
    return toggleThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingVisibilityEmitted value)?
        loadingVisibilityEmitted,
    TResult? Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UpdateCurrentUser value)? updateCurrentUser,
  }) {
    return toggleThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UpdateCurrentUser value)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (toggleThemeMode != null) {
      return toggleThemeMode(this);
    }
    return orElse();
  }
}

abstract class _ToggleThemeMode implements AppEvent {
  const factory _ToggleThemeMode() = _$ToggleThemeModeImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic isForce});
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isForce = freezed,
  }) {
    return _then(_$SignOutImpl(
      isForce: freezed == isForce ? _value.isForce! : isForce,
    ));
  }
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl({this.isForce = false});

  @override
  @JsonKey()
  final dynamic isForce;

  @override
  String toString() {
    return 'AppEvent.signOut(isForce: $isForce)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutImpl &&
            const DeepCollectionEquality().equals(other.isForce, isForce));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isForce));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOutImplCopyWith<_$SignOutImpl> get copyWith =>
      __$$SignOutImplCopyWithImpl<_$SignOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool visibility, String? message)
        loadingVisibilityEmitted,
    required TResult Function() toggleThemeMode,
    required TResult Function(dynamic isForce) signOut,
    required TResult Function(UserEntity? user) updateCurrentUser,
  }) {
    return signOut(isForce);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult? Function()? toggleThemeMode,
    TResult? Function(dynamic isForce)? signOut,
    TResult? Function(UserEntity? user)? updateCurrentUser,
  }) {
    return signOut?.call(isForce);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult Function()? toggleThemeMode,
    TResult Function(dynamic isForce)? signOut,
    TResult Function(UserEntity? user)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(isForce);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UpdateCurrentUser value) updateCurrentUser,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingVisibilityEmitted value)?
        loadingVisibilityEmitted,
    TResult? Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UpdateCurrentUser value)? updateCurrentUser,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UpdateCurrentUser value)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AppEvent {
  const factory _SignOut({final dynamic isForce}) = _$SignOutImpl;

  dynamic get isForce;
  @JsonKey(ignore: true)
  _$$SignOutImplCopyWith<_$SignOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentUserImplCopyWith<$Res> {
  factory _$$UpdateCurrentUserImplCopyWith(_$UpdateCurrentUserImpl value,
          $Res Function(_$UpdateCurrentUserImpl) then) =
      __$$UpdateCurrentUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity? user});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UpdateCurrentUserImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$UpdateCurrentUserImpl>
    implements _$$UpdateCurrentUserImplCopyWith<$Res> {
  __$$UpdateCurrentUserImplCopyWithImpl(_$UpdateCurrentUserImpl _value,
      $Res Function(_$UpdateCurrentUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UpdateCurrentUserImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UpdateCurrentUserImpl implements _UpdateCurrentUser {
  const _$UpdateCurrentUserImpl({this.user});

  @override
  final UserEntity? user;

  @override
  String toString() {
    return 'AppEvent.updateCurrentUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentUserImplCopyWith<_$UpdateCurrentUserImpl> get copyWith =>
      __$$UpdateCurrentUserImplCopyWithImpl<_$UpdateCurrentUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool visibility, String? message)
        loadingVisibilityEmitted,
    required TResult Function() toggleThemeMode,
    required TResult Function(dynamic isForce) signOut,
    required TResult Function(UserEntity? user) updateCurrentUser,
  }) {
    return updateCurrentUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult? Function()? toggleThemeMode,
    TResult? Function(dynamic isForce)? signOut,
    TResult? Function(UserEntity? user)? updateCurrentUser,
  }) {
    return updateCurrentUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool visibility, String? message)?
        loadingVisibilityEmitted,
    TResult Function()? toggleThemeMode,
    TResult Function(dynamic isForce)? signOut,
    TResult Function(UserEntity? user)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (updateCurrentUser != null) {
      return updateCurrentUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_UpdateCurrentUser value) updateCurrentUser,
  }) {
    return updateCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingVisibilityEmitted value)?
        loadingVisibilityEmitted,
    TResult? Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_UpdateCurrentUser value)? updateCurrentUser,
  }) {
    return updateCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_UpdateCurrentUser value)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (updateCurrentUser != null) {
      return updateCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentUser implements AppEvent {
  const factory _UpdateCurrentUser({final UserEntity? user}) =
      _$UpdateCurrentUserImpl;

  UserEntity? get user;
  @JsonKey(ignore: true)
  _$$UpdateCurrentUserImplCopyWith<_$UpdateCurrentUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  bool get isDarkMode => throw _privateConstructorUsedError;
  bool get showLoading => throw _privateConstructorUsedError;
  bool get firstTimeOnApp => throw _privateConstructorUsedError;
  String? get loadingMessage => throw _privateConstructorUsedError;
  UserEntity? get currentUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {bool isDarkMode,
      bool showLoading,
      bool firstTimeOnApp,
      String? loadingMessage,
      UserEntity? currentUser});

  $UserEntityCopyWith<$Res>? get currentUser;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
    Object? showLoading = null,
    Object? firstTimeOnApp = null,
    Object? loadingMessage = freezed,
    Object? currentUser = freezed,
  }) {
    return _then(_value.copyWith(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstTimeOnApp: null == firstTimeOnApp
          ? _value.firstTimeOnApp
          : firstTimeOnApp // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMessage: freezed == loadingMessage
          ? _value.loadingMessage
          : loadingMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDarkMode,
      bool showLoading,
      bool firstTimeOnApp,
      String? loadingMessage,
      UserEntity? currentUser});

  @override
  $UserEntityCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
    Object? showLoading = null,
    Object? firstTimeOnApp = null,
    Object? loadingMessage = freezed,
    Object? currentUser = freezed,
  }) {
    return _then(_$AppStateImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstTimeOnApp: null == firstTimeOnApp
          ? _value.firstTimeOnApp
          : firstTimeOnApp // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMessage: freezed == loadingMessage
          ? _value.loadingMessage
          : loadingMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {this.isDarkMode = false,
      this.showLoading = false,
      this.firstTimeOnApp = true,
      this.loadingMessage,
      this.currentUser});

  @override
  @JsonKey()
  final bool isDarkMode;
  @override
  @JsonKey()
  final bool showLoading;
  @override
  @JsonKey()
  final bool firstTimeOnApp;
  @override
  final String? loadingMessage;
  @override
  final UserEntity? currentUser;

  @override
  String toString() {
    return 'AppState(isDarkMode: $isDarkMode, showLoading: $showLoading, firstTimeOnApp: $firstTimeOnApp, loadingMessage: $loadingMessage, currentUser: $currentUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.showLoading, showLoading) ||
                other.showLoading == showLoading) &&
            (identical(other.firstTimeOnApp, firstTimeOnApp) ||
                other.firstTimeOnApp == firstTimeOnApp) &&
            (identical(other.loadingMessage, loadingMessage) ||
                other.loadingMessage == loadingMessage) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode, showLoading,
      firstTimeOnApp, loadingMessage, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final bool isDarkMode,
      final bool showLoading,
      final bool firstTimeOnApp,
      final String? loadingMessage,
      final UserEntity? currentUser}) = _$AppStateImpl;

  @override
  bool get isDarkMode;
  @override
  bool get showLoading;
  @override
  bool get firstTimeOnApp;
  @override
  String? get loadingMessage;
  @override
  UserEntity? get currentUser;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
