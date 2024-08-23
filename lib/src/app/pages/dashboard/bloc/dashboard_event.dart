part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent extends BaseBlocEvent with _$DashboardEvent {
  const factory DashboardEvent.started() = _Started;

  const factory DashboardEvent.onFriendsRefresh(Completer completer) =
      _OnFriendsRefresh;

  const factory DashboardEvent.onSocketConnected() = _OnSocketConnected;

  const factory DashboardEvent.onFriendStatusChanged({
    required int userId,
    required bool isActive,
  }) = _OnFriendStatusChanged;

  const factory DashboardEvent.updateActiveStatus(bool isActive) =
      _UpdateActiveStatus;
}