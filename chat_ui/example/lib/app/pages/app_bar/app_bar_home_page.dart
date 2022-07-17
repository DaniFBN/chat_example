import 'package:chat_ui/chat_ui.dart';
import 'package:flutter/material.dart';

class AppBarHomePage extends StatelessWidget {
  const AppBarHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DwAppBarHomeWidget(
        searchController: TextEditingController(),
        onTapSearch: () => print('Searched'),
        title: 'Messages',
      ),
    );
  }
}
