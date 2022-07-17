import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';

class DwChatCardWidget extends StatelessWidget {
  const DwChatCardWidget({
    super.key,
    required this.height,
    required this.width,
    required this.child,
  });

  final double height;
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).extension<IDwThemeData>()!;

    return Card(
      color: theme.colorTheme.chatListBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            size.width * theme.responsiveTheme.s44Percent,
          ),
          topRight: Radius.circular(
            size.width * theme.responsiveTheme.s44Percent,
          ),
        ),
      ),
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: size.width * theme.responsiveTheme.s24Percent,
          vertical: size.width * theme.responsiveTheme.s24Percent,
        ),
        child: child,
      ),
    );
  }
}
