// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageEntityImpl _$$MessageEntityImplFromJson(Map<String, dynamic> json) =>
    _$MessageEntityImpl(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String,
      creatorId: (json['creatorId'] as num).toInt(),
      conversationId: (json['conversationId'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$MessageEntityImplToJson(_$MessageEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'creatorId': instance.creatorId,
      'conversationId': instance.conversationId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
