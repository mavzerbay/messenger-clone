import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_friend_entity.freezed.dart';
part 'active_friend_entity.g.dart';

@freezed
abstract class ActiveFriendEntity with _$ActiveFriendEntity {
  const factory ActiveFriendEntity({
    @Default(false) bool isActive,
    required int id,
    required String firstName,
    required String lastName,
    required String email,
  }) = _ActiveFriendEntity;

  factory ActiveFriendEntity.fromJson(Map<String, dynamic> json) =>
      _$ActiveFriendEntityFromJson(json);
}
