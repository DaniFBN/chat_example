import 'package:flutter/material.dart';

import 'components/i_dw_responsive_theme.dart';
import 'components/i_dw_color_theme.dart';
import 'components/i_dw_text_style_theme.dart';

abstract class IDwThemeData extends ThemeExtension<IDwThemeData> {
  IDwColorTheme get colorTheme;
  IDwTextStyleTheme get textStyleTheme;
  IDwResponsiveTheme get responsiveTheme;
}
