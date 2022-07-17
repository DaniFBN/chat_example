import 'package:chat_ui/chat_ui.dart';
import 'package:flutter/material.dart';

import 'pages/menu/menu_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat UI - Example',
      theme: DwTheme.darkTheme,
      darkTheme: DwTheme.darkTheme,
      home: const MenuPage(),
    );
  }
}
