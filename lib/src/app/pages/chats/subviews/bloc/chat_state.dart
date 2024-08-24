part of 'chat_bloc.dart';

@freezed
class ChatState extends BaseBlocState with _$ChatState {
  const factory ChatState({
    @Default([]) List<Message> messages,
    @Default(ChatViewState.loading) ChatViewState viewState,
  }) = _ChatState;
}
