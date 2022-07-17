import 'package:flutter/material.dart';

import '../interfaces/components/i_dw_color_theme.dart';
import '../interfaces/components/i_dw_text_style_theme.dart';
import '../interfaces/i_dw_theme_data.dart';
import 'components/dw_dark_color_theme.dart';
import 'components/dw_dark_text_style_theme.dart';

class DwDarkTheme implements IDwThemeData {
  const DwDarkTheme();

  @override
  IDwColorTheme get colorTheme => const DwDarkColorTheme();

  @override
  IDwTextStyleTheme get textStyleTheme => const DwDarkTextStyleTheme();

  @override
  ThemeExtension<IDwThemeData> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<IDwThemeData> lerp(
    ThemeExtension<IDwThemeData>? other,
    double t,
  ) {
    throw UnimplementedError();
  }

  @override
  Object get type => throw UnimplementedError();
}
