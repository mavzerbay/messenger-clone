import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_event.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_state.dart';
import 'package:messenger_clone_flutter/src/domain/entities/index.dart';
import 'package:messenger_clone_flutter/src/shared/socket_service.dart';

import '../../../../domain/repositories/auth_service.dart';
import '../../../base/bloc/base_bloc.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends BaseBloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const _DashboardState()) {
    on<_Started>(
      _onStarted,
      transformer: log(),
    );

    on<_OnFriendsRefresh>(
      _onFriendsRefresh,
      transformer: log(),
    );

    on<_OnSocketConnected>(
      _onSocketConnected,
      transformer: log(),
    );

    on<_OnFriendStatusChanged>(
      _onFriendStatusChanged,
      transformer: log(),
    );

    on<_UpdateActiveStatus>(
      _updateActiveStatus,
      transformer: log(),
    );
  }

  @override
  Future<void> close() {
    _socketService.disconnect();
    return super.close();
  }

  final _authService = AuthService.instance;
  final SocketService _socketService = SocketService.instance;

  Future<void> _onStarted(_Started event, Emitter<DashboardState> emit) async {
    final socketCatching = runBlocCatching(
      action: () async {
        await _socketService.connect(
          onConnect: (_) {
            logI('Socket connected $_');
            add(const _OnSocketConnected());
          },
        );
      },
    );
    final requestCatching = runBlocCatching(
      doOnSubscribe: () async => emit(state.copyWith(isFriendsLoading: true)),
      action: () async {
        final friends = await _authService.getFriendList();

        emit(state.copyWith(
          isFriendsLoading: false,
          friends: friends,
        ));
      },
      doOnEventCompleted: () async =>
          emit(state.copyWith(isFriendsLoading: false)),
    );

    await Future.wait([socketCatching, requestCatching]);
  }

  Future<void> _onFriendsRefresh(
    _OnFriendsRefresh event,
    Emitter<DashboardState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        final friends = await _authService.getFriendList();
        add(const _UpdateActiveStatus(true));

        emit(state.copyWith(
          friends: friends,
        ));

        event.completer.complete();
      },
    );
  }

  Future<void> _onSocketConnected(
    _OnSocketConnected event,
    Emitter<DashboardState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isHubConnectionStarted: true));
        logI('Socket connected with ${_socketService.socketId}');
        add(const _UpdateActiveStatus(true));
        _socketService.on('friend-status', (data) {
          logI('Friend status changed: $data');
          add(
            _OnFriendStatusChanged(
              userId: data['id'],
              isActive: data['isActive'],
            ),
          );
        });
      },
    );
  }

  Future<void> _onFriendStatusChanged(
    _OnFriendStatusChanged event,
    Emitter<DashboardState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        if (appBloc.currentUser?.id == event.userId) {
          return;
        }

        List<ActiveFriendEntity> updatedFriends = [];

        for (final friend in state.friends) {
          if (friend.id == event.userId) {
            updatedFriends.add(
              friend.copyWith(
                isActive: event.isActive,
              ),
            );
          } else {
            updatedFriends.add(friend);
          }
        }

        logW('Updated friends: $updatedFriends');

        emit(state.copyWith(
          friends: updatedFriends,
        ));
      },
    );
  }

  Future<void> _updateActiveStatus(
    _UpdateActiveStatus event,
    Emitter<DashboardState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        _socketService.emit('update-active-status', event.isActive);
      },
    );
  }
}
