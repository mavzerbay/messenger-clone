import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_clone_flutter/src/domain/entities/user_entity.dart';

part 'friend_request_entity.freezed.dart';
part 'friend_request_entity.g.dart';

@freezed
abstract class FriendRequestEntity with _$FriendRequestEntity {
  factory FriendRequestEntity({
    required int id,
    required UserEntity creator,
    required UserEntity receiver,
  }) = _FriendRequestEntity;

  factory FriendRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestEntityFromJson(json);
}
