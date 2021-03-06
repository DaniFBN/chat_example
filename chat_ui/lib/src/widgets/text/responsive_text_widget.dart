import 'package:flutter/material.dart';

import '../../utils/widget_scale_helper.dart';

class DwResponsiveTextWidget extends StatelessWidget {
  const DwResponsiveTextWidget({
    super.key,
    required this.text,
    required this.style,
    this.overflow,
    this.textAlign,
  });

  final String text;
  final TextStyle style;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      textAlign: textAlign,
      style: style.copyWith(
        fontSize: MediaQuery.of(context).widgetScale(style.fontSize ?? 14),
      ),
    );
  }
}
