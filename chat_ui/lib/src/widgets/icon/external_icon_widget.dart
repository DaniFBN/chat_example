import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'icon_widget.dart';

enum ExternalIcons { search }

class DwExternalIconWidget extends StatelessWidget {
  const DwExternalIconWidget({
    super.key,
    required this.icon,
  });

  final ExternalIcons icon;

  @override
  Widget build(BuildContext context) {
    switch (icon) {
      case ExternalIcons.search:
        return const DwIconWidget(icon: EvaIcons.searchOutline);
    }
  }
}
