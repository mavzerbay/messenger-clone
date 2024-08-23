// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Completer<dynamic> completer) onFriendsRefresh,
    required TResult Function() onSocketConnected,
    required TResult Function(int userId, bool isActive) onFriendStatusChanged,
    required TResult Function(bool isActive) updateActiveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult? Function()? onSocketConnected,
    TResult? Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult? Function(bool isActive)? updateActiveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult Function()? onSocketConnected,
    TResult Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult Function(bool isActive)? updateActiveStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnFriendsRefresh value) onFriendsRefresh,
    required TResult Function(_OnSocketConnected value) onSocketConnected,
    required TResult Function(_OnFriendStatusChanged value)
        onFriendStatusChanged,
    required TResult Function(_UpdateActiveStatus value) updateActiveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult? Function(_OnSocketConnected value)? onSocketConnected,
    TResult? Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult? Function(_UpdateActiveStatus value)? updateActiveStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult Function(_OnSocketConnected value)? onSocketConnected,
    TResult Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult Function(_UpdateActiveStatus value)? updateActiveStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

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
    extends _$DashboardEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'DashboardEvent.started()';
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
    required TResult Function(Completer<dynamic> completer) onFriendsRefresh,
    required TResult Function() onSocketConnected,
    required TResult Function(int userId, bool isActive) onFriendStatusChanged,
    required TResult Function(bool isActive) updateActiveStatus,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult? Function()? onSocketConnected,
    TResult? Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult? Function(bool isActive)? updateActiveStatus,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult Function()? onSocketConnected,
    TResult Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult Function(bool isActive)? updateActiveStatus,
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
    required TResult Function(_OnFriendsRefresh value) onFriendsRefresh,
    required TResult Function(_OnSocketConnected value) onSocketConnected,
    required TResult Function(_OnFriendStatusChanged value)
        onFriendStatusChanged,
    required TResult Function(_UpdateActiveStatus value) updateActiveStatus,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult? Function(_OnSocketConnected value)? onSocketConnected,
    TResult? Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult? Function(_UpdateActiveStatus value)? updateActiveStatus,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult Function(_OnSocketConnected value)? onSocketConnected,
    TResult Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult Function(_UpdateActiveStatus value)? updateActiveStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DashboardEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnFriendsRefreshImplCopyWith<$Res> {
  factory _$$OnFriendsRefreshImplCopyWith(_$OnFriendsRefreshImpl value,
          $Res Function(_$OnFriendsRefreshImpl) then) =
      __$$OnFriendsRefreshImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Completer<dynamic> completer});
}

/// @nodoc
class __$$OnFriendsRefreshImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$OnFriendsRefreshImpl>
    implements _$$OnFriendsRefreshImplCopyWith<$Res> {
  __$$OnFriendsRefreshImplCopyWithImpl(_$OnFriendsRefreshImpl _value,
      $Res Function(_$OnFriendsRefreshImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completer = null,
  }) {
    return _then(_$OnFriendsRefreshImpl(
      null == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<dynamic>,
    ));
  }
}

/// @nodoc

class _$OnFriendsRefreshImpl implements _OnFriendsRefresh {
  const _$OnFriendsRefreshImpl(this.completer);

  @override
  final Completer<dynamic> completer;

  @override
  String toString() {
    return 'DashboardEvent.onFriendsRefresh(completer: $completer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFriendsRefreshImpl &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnFriendsRefreshImplCopyWith<_$OnFriendsRefreshImpl> get copyWith =>
      __$$OnFriendsRefreshImplCopyWithImpl<_$OnFriendsRefreshImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Completer<dynamic> completer) onFriendsRefresh,
    required TResult Function() onSocketConnected,
    required TResult Function(int userId, bool isActive) onFriendStatusChanged,
    required TResult Function(bool isActive) updateActiveStatus,
  }) {
    return onFriendsRefresh(completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult? Function()? onSocketConnected,
    TResult? Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult? Function(bool isActive)? updateActiveStatus,
  }) {
    return onFriendsRefresh?.call(completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult Function()? onSocketConnected,
    TResult Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult Function(bool isActive)? updateActiveStatus,
    required TResult orElse(),
  }) {
    if (onFriendsRefresh != null) {
      return onFriendsRefresh(completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnFriendsRefresh value) onFriendsRefresh,
    required TResult Function(_OnSocketConnected value) onSocketConnected,
    required TResult Function(_OnFriendStatusChanged value)
        onFriendStatusChanged,
    required TResult Function(_UpdateActiveStatus value) updateActiveStatus,
  }) {
    return onFriendsRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult? Function(_OnSocketConnected value)? onSocketConnected,
    TResult? Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult? Function(_UpdateActiveStatus value)? updateActiveStatus,
  }) {
    return onFriendsRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult Function(_OnSocketConnected value)? onSocketConnected,
    TResult Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult Function(_UpdateActiveStatus value)? updateActiveStatus,
    required TResult orElse(),
  }) {
    if (onFriendsRefresh != null) {
      return onFriendsRefresh(this);
    }
    return orElse();
  }
}

abstract class _OnFriendsRefresh implements DashboardEvent {
  const factory _OnFriendsRefresh(final Completer<dynamic> completer) =
      _$OnFriendsRefreshImpl;

  Completer<dynamic> get completer;
  @JsonKey(ignore: true)
  _$$OnFriendsRefreshImplCopyWith<_$OnFriendsRefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSocketConnectedImplCopyWith<$Res> {
  factory _$$OnSocketConnectedImplCopyWith(_$OnSocketConnectedImpl value,
          $Res Function(_$OnSocketConnectedImpl) then) =
      __$$OnSocketConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSocketConnectedImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$OnSocketConnectedImpl>
    implements _$$OnSocketConnectedImplCopyWith<$Res> {
  __$$OnSocketConnectedImplCopyWithImpl(_$OnSocketConnectedImpl _value,
      $Res Function(_$OnSocketConnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnSocketConnectedImpl implements _OnSocketConnected {
  const _$OnSocketConnectedImpl();

  @override
  String toString() {
    return 'DashboardEvent.onSocketConnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSocketConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Completer<dynamic> completer) onFriendsRefresh,
    required TResult Function() onSocketConnected,
    required TResult Function(int userId, bool isActive) onFriendStatusChanged,
    required TResult Function(bool isActive) updateActiveStatus,
  }) {
    return onSocketConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult? Function()? onSocketConnected,
    TResult? Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult? Function(bool isActive)? updateActiveStatus,
  }) {
    return onSocketConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult Function()? onSocketConnected,
    TResult Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult Function(bool isActive)? updateActiveStatus,
    required TResult orElse(),
  }) {
    if (onSocketConnected != null) {
      return onSocketConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnFriendsRefresh value) onFriendsRefresh,
    required TResult Function(_OnSocketConnected value) onSocketConnected,
    required TResult Function(_OnFriendStatusChanged value)
        onFriendStatusChanged,
    required TResult Function(_UpdateActiveStatus value) updateActiveStatus,
  }) {
    return onSocketConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult? Function(_OnSocketConnected value)? onSocketConnected,
    TResult? Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult? Function(_UpdateActiveStatus value)? updateActiveStatus,
  }) {
    return onSocketConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult Function(_OnSocketConnected value)? onSocketConnected,
    TResult Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult Function(_UpdateActiveStatus value)? updateActiveStatus,
    required TResult orElse(),
  }) {
    if (onSocketConnected != null) {
      return onSocketConnected(this);
    }
    return orElse();
  }
}

abstract class _OnSocketConnected implements DashboardEvent {
  const factory _OnSocketConnected() = _$OnSocketConnectedImpl;
}

/// @nodoc
abstract class _$$OnFriendStatusChangedImplCopyWith<$Res> {
  factory _$$OnFriendStatusChangedImplCopyWith(
          _$OnFriendStatusChangedImpl value,
          $Res Function(_$OnFriendStatusChangedImpl) then) =
      __$$OnFriendStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, bool isActive});
}

/// @nodoc
class __$$OnFriendStatusChangedImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$OnFriendStatusChangedImpl>
    implements _$$OnFriendStatusChangedImplCopyWith<$Res> {
  __$$OnFriendStatusChangedImplCopyWithImpl(_$OnFriendStatusChangedImpl _value,
      $Res Function(_$OnFriendStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? isActive = null,
  }) {
    return _then(_$OnFriendStatusChangedImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnFriendStatusChangedImpl implements _OnFriendStatusChanged {
  const _$OnFriendStatusChangedImpl(
      {required this.userId, required this.isActive});

  @override
  final int userId;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'DashboardEvent.onFriendStatusChanged(userId: $userId, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFriendStatusChangedImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnFriendStatusChangedImplCopyWith<_$OnFriendStatusChangedImpl>
      get copyWith => __$$OnFriendStatusChangedImplCopyWithImpl<
          _$OnFriendStatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Completer<dynamic> completer) onFriendsRefresh,
    required TResult Function() onSocketConnected,
    required TResult Function(int userId, bool isActive) onFriendStatusChanged,
    required TResult Function(bool isActive) updateActiveStatus,
  }) {
    return onFriendStatusChanged(userId, isActive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult? Function()? onSocketConnected,
    TResult? Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult? Function(bool isActive)? updateActiveStatus,
  }) {
    return onFriendStatusChanged?.call(userId, isActive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult Function()? onSocketConnected,
    TResult Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult Function(bool isActive)? updateActiveStatus,
    required TResult orElse(),
  }) {
    if (onFriendStatusChanged != null) {
      return onFriendStatusChanged(userId, isActive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnFriendsRefresh value) onFriendsRefresh,
    required TResult Function(_OnSocketConnected value) onSocketConnected,
    required TResult Function(_OnFriendStatusChanged value)
        onFriendStatusChanged,
    required TResult Function(_UpdateActiveStatus value) updateActiveStatus,
  }) {
    return onFriendStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult? Function(_OnSocketConnected value)? onSocketConnected,
    TResult? Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult? Function(_UpdateActiveStatus value)? updateActiveStatus,
  }) {
    return onFriendStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult Function(_OnSocketConnected value)? onSocketConnected,
    TResult Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult Function(_UpdateActiveStatus value)? updateActiveStatus,
    required TResult orElse(),
  }) {
    if (onFriendStatusChanged != null) {
      return onFriendStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _OnFriendStatusChanged implements DashboardEvent {
  const factory _OnFriendStatusChanged(
      {required final int userId,
      required final bool isActive}) = _$OnFriendStatusChangedImpl;

  int get userId;
  bool get isActive;
  @JsonKey(ignore: true)
  _$$OnFriendStatusChangedImplCopyWith<_$OnFriendStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateActiveStatusImplCopyWith<$Res> {
  factory _$$UpdateActiveStatusImplCopyWith(_$UpdateActiveStatusImpl value,
          $Res Function(_$UpdateActiveStatusImpl) then) =
      __$$UpdateActiveStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isActive});
}

/// @nodoc
class __$$UpdateActiveStatusImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$UpdateActiveStatusImpl>
    implements _$$UpdateActiveStatusImplCopyWith<$Res> {
  __$$UpdateActiveStatusImplCopyWithImpl(_$UpdateActiveStatusImpl _value,
      $Res Function(_$UpdateActiveStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
  }) {
    return _then(_$UpdateActiveStatusImpl(
      null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateActiveStatusImpl implements _UpdateActiveStatus {
  const _$UpdateActiveStatusImpl(this.isActive);

  @override
  final bool isActive;

  @override
  String toString() {
    return 'DashboardEvent.updateActiveStatus(isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateActiveStatusImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateActiveStatusImplCopyWith<_$UpdateActiveStatusImpl> get copyWith =>
      __$$UpdateActiveStatusImplCopyWithImpl<_$UpdateActiveStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Completer<dynamic> completer) onFriendsRefresh,
    required TResult Function() onSocketConnected,
    required TResult Function(int userId, bool isActive) onFriendStatusChanged,
    required TResult Function(bool isActive) updateActiveStatus,
  }) {
    return updateActiveStatus(isActive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult? Function()? onSocketConnected,
    TResult? Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult? Function(bool isActive)? updateActiveStatus,
  }) {
    return updateActiveStatus?.call(isActive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Completer<dynamic> completer)? onFriendsRefresh,
    TResult Function()? onSocketConnected,
    TResult Function(int userId, bool isActive)? onFriendStatusChanged,
    TResult Function(bool isActive)? updateActiveStatus,
    required TResult orElse(),
  }) {
    if (updateActiveStatus != null) {
      return updateActiveStatus(isActive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnFriendsRefresh value) onFriendsRefresh,
    required TResult Function(_OnSocketConnected value) onSocketConnected,
    required TResult Function(_OnFriendStatusChanged value)
        onFriendStatusChanged,
    required TResult Function(_UpdateActiveStatus value) updateActiveStatus,
  }) {
    return updateActiveStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult? Function(_OnSocketConnected value)? onSocketConnected,
    TResult? Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult? Function(_UpdateActiveStatus value)? updateActiveStatus,
  }) {
    return updateActiveStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnFriendsRefresh value)? onFriendsRefresh,
    TResult Function(_OnSocketConnected value)? onSocketConnected,
    TResult Function(_OnFriendStatusChanged value)? onFriendStatusChanged,
    TResult Function(_UpdateActiveStatus value)? updateActiveStatus,
    required TResult orElse(),
  }) {
    if (updateActiveStatus != null) {
      return updateActiveStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateActiveStatus implements DashboardEvent {
  const factory _UpdateActiveStatus(final bool isActive) =
      _$UpdateActiveStatusImpl;

  bool get isActive;
  @JsonKey(ignore: true)
  _$$UpdateActiveStatusImplCopyWith<_$UpdateActiveStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardState {
  bool get isFriendsLoading => throw _privateConstructorUsedError;
  dynamic get isHubConnectionStarted => throw _privateConstructorUsedError;
  List<ActiveFriendEntity> get friends => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {bool isFriendsLoading,
      dynamic isHubConnectionStarted,
      List<ActiveFriendEntity> friends});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFriendsLoading = null,
    Object? isHubConnectionStarted = freezed,
    Object? friends = null,
  }) {
    return _then(_value.copyWith(
      isFriendsLoading: null == isFriendsLoading
          ? _value.isFriendsLoading
          : isFriendsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isHubConnectionStarted: freezed == isHubConnectionStarted
          ? _value.isHubConnectionStarted
          : isHubConnectionStarted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<ActiveFriendEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(_$DashboardStateImpl value,
          $Res Function(_$DashboardStateImpl) then) =
      __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFriendsLoading,
      dynamic isHubConnectionStarted,
      List<ActiveFriendEntity> friends});
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
      _$DashboardStateImpl _value, $Res Function(_$DashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFriendsLoading = null,
    Object? isHubConnectionStarted = freezed,
    Object? friends = null,
  }) {
    return _then(_$DashboardStateImpl(
      isFriendsLoading: null == isFriendsLoading
          ? _value.isFriendsLoading
          : isFriendsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isHubConnectionStarted: freezed == isHubConnectionStarted
          ? _value.isHubConnectionStarted!
          : isHubConnectionStarted,
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<ActiveFriendEntity>,
    ));
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl(
      {this.isFriendsLoading = true,
      this.isHubConnectionStarted = false,
      final List<ActiveFriendEntity> friends = const []})
      : _friends = friends;

  @override
  @JsonKey()
  final bool isFriendsLoading;
  @override
  @JsonKey()
  final dynamic isHubConnectionStarted;
  final List<ActiveFriendEntity> _friends;
  @override
  @JsonKey()
  List<ActiveFriendEntity> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  @override
  String toString() {
    return 'DashboardState(isFriendsLoading: $isFriendsLoading, isHubConnectionStarted: $isHubConnectionStarted, friends: $friends)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            (identical(other.isFriendsLoading, isFriendsLoading) ||
                other.isFriendsLoading == isFriendsLoading) &&
            const DeepCollectionEquality()
                .equals(other.isHubConnectionStarted, isHubConnectionStarted) &&
            const DeepCollectionEquality().equals(other._friends, _friends));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isFriendsLoading,
      const DeepCollectionEquality().hash(isHubConnectionStarted),
      const DeepCollectionEquality().hash(_friends));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
          this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {final bool isFriendsLoading,
      final dynamic isHubConnectionStarted,
      final List<ActiveFriendEntity> friends}) = _$DashboardStateImpl;

  @override
  bool get isFriendsLoading;
  @override
  dynamic get isHubConnectionStarted;
  @override
  List<ActiveFriendEntity> get friends;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
