import 'package:chat_ui/chat_ui.dart';
import 'package:flutter/material.dart';

class ChatMenuItemPage extends StatelessWidget {
  const ChatMenuItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Menu Item')),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (_, i) {
          return DwChatMenuItemWidget(
            imageUrl: 'https://avatars.githubusercontent.com/u/54218517?v=4',
            title: 'Name $i',
            description: 'Last message $i',
            messageHour: '$i:$i',
          );
        },
      ),
    );
  }
}
