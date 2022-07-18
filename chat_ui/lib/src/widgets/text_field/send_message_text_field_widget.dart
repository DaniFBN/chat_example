import 'package:flutter/material.dart';

import '../../theme/interfaces/i_dw_theme_data.dart';
import '../../utils/widget_scale_helper.dart';
import '../icon/icon_widget.dart';

class DwSendMessageTextFieldWidget extends StatelessWidget {
  const DwSendMessageTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<IDwThemeData>()!;
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    final textStyle = theme.textStyleTheme.sendMessageTextStyle;

    return Container(
      height: size.width * theme.responsiveTheme.s44Percent,
      padding: EdgeInsets.all(size.width * theme.responsiveTheme.s6Percent),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: theme.colorTheme.backgroundSendMessageColor,
      ),
      child: Row(
        children: [
          Container(
            width: size.width * theme.responsiveTheme.s32Percent,
            height: size.width * theme.responsiveTheme.s32Percent,
            decoration: BoxDecoration(
              color: theme.colorTheme.backgroundAttachImageColor,
              shape: BoxShape.circle,
            ),
            child: DwIconWidget(
              icon: Icons.camera_alt_outlined,
              color: theme.colorTheme.attachIconColor,
            ),
          ),
          SizedBox(
            width: size.width * theme.responsiveTheme.s12Percent,
          ),
          Expanded(
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                isDense: true,
                hintText: ' Message',
                border: InputBorder.none,
                hintStyle: textStyle.copyWith(
                  fontSize: mediaQuery.widgetScale(textStyle.fontSize ?? 14),
                ),
              ),
            ),
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: theme.responsiveTheme.s8Percent,
              ),
              child: DwIconWidget(
                icon: Icons.send_rounded,
                color: theme.colorTheme.sendMessageIconColor,
              ),
            ),
          ),
        ],
      ),
    );

    // return TextField(
    //   decoration: InputDecoration(
    //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
    //     hintText: ' Message',
    //     hintStyle: theme.textStyleTheme.sendMessageTextStyle,
    //     prefixIconConstraints: BoxConstraints(
    //       maxHeight: size.width * theme.responsiveTheme.s32Percent,
    //       minHeight: size.width * theme.responsiveTheme.s32Percent,
    //       maxWidth: size.width * theme.responsiveTheme.s32Percent,
    //       minWidth: size.width * theme.responsiveTheme.s32Percent,
    //     ),
    //     prefixIcon: DecoratedBox(
    //       decoration: BoxDecoration(
    //         shape: BoxShape.circle,
    //         color: theme.colorTheme.backgroundAttachImageColor,
    //       ),
    //       child: InkWell(
    //         child: DwIconWidget(
    //           icon: Icons.camera_alt_outlined,
    //           color: theme.colorTheme.attachIconColor,
    //         ),
    //       ),
    //     ),
    //     suffixIcon: InkWell(
    //       child: DwIconWidget(
    //         icon: Icons.send_rounded,
    //         color: theme.colorTheme.sendMessageIconColor,
    //       ),
    //     ),
    //   ),
    // );
  }
}
