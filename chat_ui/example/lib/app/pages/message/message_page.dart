import 'package:chat_ui/chat_ui.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Message')),
      body: ListView.builder(
        itemBuilder: (_, i) {
          return DwMessageWidget(
            isMyMessage: i.isEven,
            content: """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.""",
          );
        },
      ),
    );
  }
}
