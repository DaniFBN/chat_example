import 'package:flutter/material.dart';

import 'menu_data.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: ListView.separated(
          itemCount: MenuData.items.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (_, i) {
            final item = MenuData.items.elementAt(i);

            return Container(
              color: Theme.of(context).cardColor,
              child: ListTile(
                title: Text(item.title),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => item.page),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
