import 'package:chat_ui/chat_ui.dart';
import 'package:flutter/material.dart';

class ChatCardPage extends StatelessWidget {
  const ChatCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Menu Item')),
      body: Column(
        children: [
          const Expanded(child: Text('Body')),
          DwChatCardWidget(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: const Text('Body'),
          ),
        ],
      ),
    );
  }
}
