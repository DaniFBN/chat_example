import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';
import '../text/responsive_text_widget.dart';

class DwChatMenuItemWidget extends StatelessWidget {
  const DwChatMenuItemWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.messageHour,
  });

  final String imageUrl;
  final String title;
  final String description;
  final String messageHour;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).extension<IDwThemeData>()!;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.width * theme.responsiveTheme.s12Percent,
      ),
      child: SizedBox(
        height: size.width * theme.responsiveTheme.s52Percent,
        child: Row(
          children: [
            Container(
              height: size.width * theme.responsiveTheme.s52Percent,
              width: size.width * theme.responsiveTheme.s52Percent,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: theme.colorTheme.shadowImageColor,
                    blurRadius: size.width * theme.responsiveTheme.s12Percent,
                  )
                ],
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: size.width * theme.responsiveTheme.s16Percent),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DwResponsiveTextWidget(
                    text: title,
                    style: theme.textStyleTheme.chatNameTextStyle,
                  ),
                  DwResponsiveTextWidget(
                    text: description,
                    style: theme.textStyleTheme.chatDescriptionTextStyle,
                  ),
                ],
              ),
            ),
            DwResponsiveTextWidget(
              text: messageHour,
              style: theme.textStyleTheme.chatDateTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
