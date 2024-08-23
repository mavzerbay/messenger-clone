import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/context_extension.dart';

@RoutePage()
class ChatDetailPage extends StatelessWidget {
  const ChatDetailPage({super.key, @PathParam('id') required this.chatId});

  final int chatId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/men/$chatId.jpg'),
            ),
            const SizedBox(width: 10),
            Text('Chat $chatId', style: context.textTheme.bodyLarge),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
