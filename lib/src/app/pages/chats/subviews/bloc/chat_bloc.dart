import 'package:chatview/chatview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_event.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_state.dart';
import 'package:messenger_clone_flutter/src/data/interfaces/auth_service_interface.dart';
import 'package:messenger_clone_flutter/src/domain/entities/conversation_entity.dart';
import 'package:messenger_clone_flutter/src/domain/entities/message_entity.dart';

import '../../../../../domain/repositories/auth_service.dart';
import '../../../../../shared/hubs/conversation_hub.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends BaseBloc<ChatEvent, ChatState> {
  ChatBloc() : super(const _ChatState()) {
    on<_Started>(
      _onStarted,
      transformer: log(),
    );

    on<_OnHubConnected>(
      _onHubConnected,
      transformer: log(),
    );

    on<_OnGetAllConversations>(
      _onGetAllConversations,
      transformer: log(),
    );

    on<_MessageReceived>(
      _onMessageReceived,
      transformer: log(),
    );

    on<_MessageSent>(
      _onMessageSent,
      transformer: log(),
    );
  }

  @override
  Future<void> close() {
    _conversationHub.disconnect();
    return super.close();
  }

  final _conversationHub = ConversationHub();
  final IAuthService _authService = AuthService.instance;

  Future<void> _onStarted(_Started event, Emitter<ChatState> emit) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(friendId: event.friendId));
        _conversationHub.connect(
          onConnect: (_) {
            logI('Socket connected with id: ${_conversationHub.socketId}');
            add(const _OnHubConnected());
          },
        );
      },
      doOnError: (e) async {
        emit(state.copyWith(viewState: ChatViewState.error));
      },
    );
  }

  void _onHubConnected(_OnHubConnected event, Emitter<ChatState> emit) {
    logI('Socket connected with id: ${_conversationHub.socketId}');
    _conversationHub.on('getAllConversations', (data) {
      final conversations = (data as List<dynamic>)
          .map((e) => ConversationEntity.fromJson(e))
          .toList();
      add(_OnGetAllConversations(conversations));
    });
    _conversationHub.on('newMessage', (data) {
      logI('New message received: $data');
      final messageEntity = MessageEntity.fromJson(data);
      final message = Message(
        id: messageEntity.id.toString(),
        message: messageEntity.content,
        createdAt: messageEntity.createdAt,
        sentBy: messageEntity.creatorId.toString(),
      );
      add(_MessageReceived(message));
    });
  }

  Future<void> _onGetAllConversations(
      _OnGetAllConversations event, Emitter<ChatState> emit) async {
    await runBlocCatching(
      action: () async {
        if (event.conversations.isEmpty) {
          emit(state.copyWith(viewState: ChatViewState.noData));
          return;
        }
        final conversationId = event.conversations
            .firstWhere(
              (element) => element.userIds.contains(state.friendId),
              orElse: () => event.conversations.first,
            )
            .id;

        final messages = await _authService.getMessages(conversationId);

        final chatMessages = messages
            .map(
              (e) => Message(
                id: e.id.toString(),
                message: e.content,
                createdAt: e.createdAt,
                sentBy: e.creatorId.toString(),
                status: MessageStatus.read,
              ),
            )
            .toList();

        emit(
          state.copyWith(
            conversationId: conversationId,
            messages: chatMessages,
            viewState: chatMessages.isEmpty
                ? ChatViewState.noData
                : ChatViewState.hasMessages,
          ),
        );
      },
      handleLoading: false,
      doOnError: (e) async {
        emit(state.copyWith(viewState: ChatViewState.error));
      },
    );
  }

  Future<void> _onMessageReceived(
      _MessageReceived event, Emitter<ChatState> emit) async {
    await runBlocCatching(
      action: () async {
        final messages = [...state.messages, event.message];
        emit(state.copyWith(
          messages: messages,
          viewState: messages.isEmpty
              ? ChatViewState.noData
              : ChatViewState.hasMessages,
        ));
      },
      doOnError: (e) async {
        emit(state.copyWith(viewState: ChatViewState.error));
      },
    );
  }

  Future<void> _onMessageSent(
      _MessageSent event, Emitter<ChatState> emit) async {
    await runBlocCatching(
      action: () async {
        final message = Message(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          message: event.message,
          createdAt: DateTime.now(),
          sentBy: appBloc.state.currentUser!.id.toString(),
          status: MessageStatus.delivered,
        );
        final messages = [...state.messages, message];
        emit(state.copyWith(
          messages: messages,
          viewState: messages.isEmpty
              ? ChatViewState.noData
              : ChatViewState.hasMessages,
        ));
        _conversationHub.emit('send-message', {
          'content': event.message,
          'conversationId': state.conversationId,
          'friendId': state.friendId,
        });
      },
      doOnError: (e) async {
        emit(state.copyWith(viewState: ChatViewState.error));
      },
    );
  }
}
