// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_friend_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActiveFriendEntityImpl _$$ActiveFriendEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveFriendEntityImpl(
      isActive: json['isActive'] as bool? ?? false,
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$ActiveFriendEntityImplToJson(
        _$ActiveFriendEntityImpl instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
    };
