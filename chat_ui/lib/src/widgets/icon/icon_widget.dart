import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';

class DwIconWidget extends StatelessWidget {
  const DwIconWidget({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<IDwThemeData>()!;

    return Icon(
      icon,
      color: theme.colorTheme.appBarIconColor,
      size: 24,
    );
  }
}
