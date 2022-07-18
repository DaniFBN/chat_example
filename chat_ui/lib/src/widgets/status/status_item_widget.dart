import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';
import '../text/responsive_text_widget.dart';

class DwStatusItemWidget extends StatelessWidget {
  const DwStatusItemWidget({
    super.key,
    required this.imageUrl,
    required this.userName,
  });

  final String imageUrl;
  final String userName;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).extension<IDwThemeData>()!;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * theme.responsiveTheme.s16Percent,
        vertical: size.width * theme.responsiveTheme.s8Percent,
      ),
      child: SizedBox(
        height: size.width * theme.responsiveTheme.s65Percent,
        width: size.width * theme.responsiveTheme.s65Percent,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                size.width * theme.responsiveTheme.s65Percent,
              ),
              child: Image.network(
                imageUrl,
                height: size.width * theme.responsiveTheme.s65Percent,
                width: size.width * theme.responsiveTheme.s65Percent,
              ),
            ),
            SizedBox(height: size.width * theme.responsiveTheme.s16Percent),
            DwResponsiveTextWidget(
              text: userName,
              overflow: TextOverflow.ellipsis,
              style: theme.textStyleTheme.statusPersonNameTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
