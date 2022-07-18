import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';

class DwIconWidget extends StatelessWidget {
  const DwIconWidget({
    super.key,
    required this.icon,
    this.color,
  });

  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).extension<IDwThemeData>()!;

    return Icon(
      icon,
      color: color ?? theme.colorTheme.appBarIconColor,
      size: size.width * theme.responsiveTheme.s24Percent,
    );
  }
}
