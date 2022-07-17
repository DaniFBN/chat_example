import 'package:chat_ui/chat_ui.dart';
import 'package:flutter/material.dart';

class AppBarMessagePage extends StatelessWidget {
  const AppBarMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DwAppBarMessageWidget(
        searchController: TextEditingController(),
        onTapSearch: () => debugPrint('Searched'),
        title: 'Daniel Fernandes',
        imageUrl: 'https://avatars.githubusercontent.com/u/54218517?v=4',
      ),
    );
  }
}
