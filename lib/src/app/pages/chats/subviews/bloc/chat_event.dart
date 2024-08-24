part of 'chat_bloc.dart';

@freezed
class ChatEvent extends BaseBlocEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;

  const factory ChatEvent.onHubConnected() = _OnHubConnected;

  const factory ChatEvent.onGetAllMessages(List<Message> messages) =
      _OnGetAllMessages;

  const factory ChatEvent.messageReceived(Message message) = _MessageReceived;
}
