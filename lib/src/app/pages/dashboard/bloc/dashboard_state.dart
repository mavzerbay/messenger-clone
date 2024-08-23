part of 'dashboard_bloc.dart';

@freezed
class DashboardState extends BaseBlocState with _$DashboardState {
  const factory DashboardState({
    @Default(true) bool isFriendsLoading,
    @Default(false) isHubConnectionStarted,
    @Default([]) List<ActiveFriendEntity> friends,
  }) = _DashboardState;
}
