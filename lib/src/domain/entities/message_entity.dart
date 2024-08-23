import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';
part 'message_entity.g.dart';

@freezed
abstract class MessageEntity with _$MessageEntity {
  factory MessageEntity({
    required int id,
    required String content,
    required int creatorId,
    required int conversationId,
  }) = _MessageEntity;

  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);
}
