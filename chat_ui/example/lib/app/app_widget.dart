import 'package:chat_core/chat_core.dart';
import 'package:chat_ui/chat_ui.dart';
import 'package:flutter/material.dart';

import 'pages/menu/menu_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat UI - Example',
      theme: DwTheme.darkTheme(platformService: PlatformService()),
      darkTheme: DwTheme.darkTheme(platformService: PlatformService()),
      home: const MenuPage(),
    );
  }
}
