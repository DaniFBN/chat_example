import 'package:flutter/material.dart';

import '../../utils/widget_scale_helper.dart';

class DwResponsiveTextWidget extends StatelessWidget {
  const DwResponsiveTextWidget({
    super.key,
    required this.text,
    required this.style,
  });

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(
        fontSize: MediaQuery.of(context).widgetScale(style.fontSize ?? 14),
      ),
    );
  }
}
