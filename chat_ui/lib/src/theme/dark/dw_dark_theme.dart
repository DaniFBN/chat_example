import 'package:chat_core/chat_core.dart';
import 'package:flutter/material.dart';

import '../interfaces/components/i_dw_color_theme.dart';
import '../interfaces/components/i_dw_responsive_theme.dart';
import '../interfaces/components/i_dw_text_style_theme.dart';
import '../interfaces/i_dw_theme_data.dart';
import '../mobile/dw_mobile_responsive_theme.dart';
import 'components/dw_dark_color_theme.dart';
import 'components/dw_dark_text_style_theme.dart';

class DwDarkThemeData implements IDwThemeData {
  const DwDarkThemeData({
    required IPlatformService platformService,
  }) : _platformService = platformService;

  final IPlatformService _platformService;

  @override
  IDwColorTheme get colorTheme => const DwDarkColorTheme();

  @override
  IDwResponsiveTheme get responsiveTheme {
    if (_platformService.isAndroid || _platformService.isIOS) {
      return const DwMobileResponsiveTheme();
    }

    throw UnimplementedError();
  }

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
  Object get type => IDwThemeData;
}
