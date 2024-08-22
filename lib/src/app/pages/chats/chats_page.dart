import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/context_extension.dart';

import '../../bloc/app_bloc.dart';
import '../../navigation/app_router.gr.dart';

@RoutePage()
class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const _MessageItem(
            chatItem: (
              id: 1,
              name: 'Jon',
              lastMessage: 'This was the last message',
            ),
          ),
          const _MessageItem(
            chatItem: (
              id: 2,
              name: 'Larry',
              lastMessage: 'This was the last message',
            ),
          ),
          const _MessageItem(
            chatItem: (
              id: 3,
              name: 'Barry',
              lastMessage: 'This was the last message',
            ),
          ),
          TextButton(
            onPressed: () {
              context.appBloc.add(const AppEvent.signOut());
            },
            child: Text(
              'Sign Out',
              style: context.textTheme.bodyLarge?.copyWith(
                color: context.colorScheme.error,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

typedef ChatItem = ({int id, String name, String lastMessage});

class _MessageItem extends StatelessWidget {
  const _MessageItem({
    required this.chatItem,
  });

  final ChatItem chatItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8),
      leading: const CircleAvatar(
        radius: 30,
        child: FlutterLogo(),
      ),
      title: Text(chatItem.name),
      subtitle: Text(chatItem.lastMessage),
      onTap: () {
        context.router.push(ChatDetailRoute(chatId: chatItem.id));
      },
    );
  }
}
