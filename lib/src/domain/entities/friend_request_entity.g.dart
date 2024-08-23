// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FriendRequestEntityImpl _$$FriendRequestEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$FriendRequestEntityImpl(
      id: (json['id'] as num).toInt(),
      creator: UserEntity.fromJson(json['creator'] as Map<String, dynamic>),
      receiver: UserEntity.fromJson(json['receiver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FriendRequestEntityImplToJson(
        _$FriendRequestEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creator': instance.creator,
      'receiver': instance.receiver,
    };
