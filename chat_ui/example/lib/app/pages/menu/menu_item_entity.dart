import 'package:flutter/cupertino.dart';

class MenuItemEntity {
  const MenuItemEntity({
    required this.title,
    required this.page,
  });

  final String title;
  final Widget page;
}
