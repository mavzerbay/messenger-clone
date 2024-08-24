part of 'chat_bloc.dart';

@freezed
class ChatState extends BaseBlocState with _$ChatState {
  const factory ChatState({
    @Default([]) List<Message> messages,
    @Default(ChatViewState.loading) ChatViewState viewState,
    @Default(-1) int friendId,
    @Default(-1) int conversationId,
  }) = _ChatState;
}
