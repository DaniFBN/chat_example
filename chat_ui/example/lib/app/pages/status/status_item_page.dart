import 'package:chat_ui/chat_ui.dart';
import 'package:flutter/material.dart';

class StatusItemPage extends StatelessWidget {
  const StatusItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Status Item')),
      body: ListView.builder(
        itemCount: 50,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) {
          return DwStatusItemWidget(
            imageUrl: 'https://avatars.githubusercontent.com/u/54218517?v=4',
            userName: 'Name $i',
          );
        },
      ),
    );
  }
}
