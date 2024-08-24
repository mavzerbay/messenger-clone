import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/context_extension.dart';

import '../../navigation/app_router.gr.dart';
import '../dashboard/bloc/dashboard_bloc.dart';

@RoutePage()
class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          BoxScrollView child = ListView(
            children: const [
              Center(
                child: CircularProgressIndicator.adaptive(),
              )
            ],
          );

          if (!state.isFriendsLoading) {
            child = ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: state.friends.length,
              itemBuilder: (context, index) {
                final friend = state.friends[index];
                return _MessageItem(
                  chatItem: (
                    id: friend.id,
                    name: friend.fullName,
                    lastMessage: friend.email,
                    isActive: friend.isActive,
                  ),
                );
              },
            );
          }

          return RefreshIndicator(
              child: child,
              onRefresh: () {
                final Completer<void> completer = Completer<void>();

                context
                    .read<DashboardBloc>()
                    .add(DashboardEvent.onFriendsRefresh(completer));

                return completer.future;
              });
        },
      ),
    );
  }
}

typedef ChatItem = ({int id, String name, String lastMessage, bool isActive});

class _MessageItem extends StatelessWidget {
  const _MessageItem({
    required this.chatItem,
  });

  final ChatItem chatItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8),
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://randomuser.me/api/portraits/men/${chatItem.id}.jpg'),
          ),
          if (chatItem.isActive)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: Colors.green, // Online indicator color
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: context.theme
                        .scaffoldBackgroundColor, // Border color to separate from avatar
                    width: 2,
                  ),
                ),
              ),
            ),
        ],
      ),
      title: Text(chatItem.name),
      subtitle: Text(chatItem.lastMessage),
      onTap: () {
        context.router.push(
          ChatDetailRoute(
            userId: chatItem.id,
            chatName: chatItem.name,
          ),
        );
      },
    );
  }
}
