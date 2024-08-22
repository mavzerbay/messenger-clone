import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatDetailPage extends StatelessWidget {
  const ChatDetailPage({super.key, @PathParam('id') required this.chatId});

  final int chatId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Detail $chatId'),
      ),
      body: Container(),
    );
  }
}
