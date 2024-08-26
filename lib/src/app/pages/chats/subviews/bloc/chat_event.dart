part of 'chat_bloc.dart';

@freezed
class ChatEvent extends BaseBlocEvent with _$ChatEvent {
  const factory ChatEvent.started(int friendId) = _Started;

  const factory ChatEvent.onHubConnected() = _OnHubConnected;

  const factory ChatEvent.onGetAllConversations(
      List<ConversationEntity> conversations) = _OnGetAllConversations;

  const factory ChatEvent.onGetMessages(List<MessageEntity> messages) =
      _OnGetMessages;

  const factory ChatEvent.messageReceived(Message message) = _MessageReceived;

  const factory ChatEvent.messageSent(String message) = _MessageSent;

  const factory ChatEvent.onFriendStatusChanged({
    required bool isActive,
  }) = _OnFriendStatusChanged;
}
