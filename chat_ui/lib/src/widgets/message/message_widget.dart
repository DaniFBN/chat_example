import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';
import '../text/responsive_text_widget.dart';

class DwMessageWidget extends StatelessWidget {
  const DwMessageWidget({
    super.key,
    required this.content,
    required this.isMyMessage,
  });

  final String content;
  final bool isMyMessage;

  Color _handleBackgroundColor(BuildContext context) {
    final theme = Theme.of(context).extension<IDwThemeData>()!;

    if (isMyMessage) return theme.colorTheme.backgroundMyMessageColor;
    return theme.colorTheme.backgroundTheirMessageColor;
  }

  Alignment _handleAlignment() {
    if (isMyMessage) return Alignment.centerRight;
    return Alignment.centerLeft;
  }

  TextAlign _handleTextAlign() {
    if (isMyMessage) return TextAlign.end;
    return TextAlign.start;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).extension<IDwThemeData>()!;

    return Align(
      alignment: _handleAlignment(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * theme.responsiveTheme.s16Percent,
          vertical: size.width * theme.responsiveTheme.s8Percent,
        ),
        child: Container(
          constraints: BoxConstraints(maxWidth: size.width * 0.75),
          padding: EdgeInsets.symmetric(
            horizontal: size.width * theme.responsiveTheme.s16Percent,
            vertical: size.width * theme.responsiveTheme.s12Percent,
          ),
          decoration: BoxDecoration(
            color: _handleBackgroundColor(context),
            borderRadius: BorderRadius.circular(
              size.width * theme.responsiveTheme.s16Percent,
            ),
          ),
          child: DwResponsiveTextWidget(
            text: content,
            textAlign: _handleTextAlign(),
            style: theme.textStyleTheme.messageContentTextStyle,
          ),
        ),
      ),
    );
  }
}
