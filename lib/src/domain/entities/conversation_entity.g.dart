// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationEntityImpl _$$ConversationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationEntityImpl(
      id: (json['id'] as num).toInt(),
      userIds: (json['userIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ConversationEntityImplToJson(
        _$ConversationEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userIds': instance.userIds,
    };
