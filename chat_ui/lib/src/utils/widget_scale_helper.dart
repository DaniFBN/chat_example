import 'package:flutter/material.dart';

extension WidgetScaleContext on MediaQueryData {
  double widgetScale(double widgetWidth) {
    final width = size.width;

    late double multiplier;

    if (width < 350) {
      multiplier = 0.72;
    } else if (width < 370) {
      multiplier = 0.88;
    } else {
      multiplier = 1;
    }

    return widgetWidth * multiplier;
  }
}
