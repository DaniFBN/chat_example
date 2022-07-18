import 'package:chat_ui/chat_ui.dart';
import 'package:flutter/material.dart';

class SendMessageInputPage extends StatelessWidget {
  const SendMessageInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Send Message Input')),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: DwSendMessageTextFieldWidget(),
      ),
    );
  }
}
