import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_entity.freezed.dart';
part 'conversation_entity.g.dart';

@freezed
abstract class ConversationEntity with _$ConversationEntity {
  factory ConversationEntity({
    required int id,
    @Default([]) List<int> userIds,
  }) = _ConversationEntity;
  
  factory ConversationEntity.fromJson(Map<String, dynamic> json) =>
      _$ConversationEntityFromJson(json);
}
