import 'package:chatview/chatview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_event.dart';
import 'package:messenger_clone_flutter/src/app/base/bloc/base_bloc_state.dart';

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
      (event, emit) {
        logI('Socket connected with id: ${_conversationHub.socketId}');
        _conversationHub.on('getAllMessages', (data) {
          logI('getAllMessages: $data');
          add(_OnGetAllMessages(data));
        });
      },
      transformer: log(),
    );
  }

  @override
  Future<void> close() {
    _conversationHub.disconnect();
    return super.close();
  }

  final _conversationHub = ConversationHub();

  Future<void> _onStarted(_Started event, Emitter<ChatState> emit) async {
    await runBlocCatching(
      action: () async {
        _conversationHub.connect(
          onConnect: (_) {
            logI('Socket connected with id: ${_conversationHub.socketId}');
          },
        );
      },
      doOnError: (e) async {
        emit(state.copyWith(viewState: ChatViewState.error));
      },
    );
  }
}
