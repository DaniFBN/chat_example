import 'package:flutter/material.dart';

import '../../interfaces/components/i_dw_color_theme.dart';

class DwDarkColorTheme implements IDwColorTheme {
  const DwDarkColorTheme();

  @override
  Color get appBarIconColor => const Color(0xFFFFFFFF);

  @override
  Color get attachIconColor => const Color(0XFF000000);

  @override
  Color get backgroundColor => const Color(0xFF1B202D);

  @override
  Color get chatListBackgroundColor => const Color(0xFF292F3F);

  @override
  Color get backgroundMyMessageColor => const Color(0xFF7A8194);

  @override
  Color get backgroundTheirMessageColor => const Color(0xFF373E4E);

  @override
  Color get sendMessageIconColor => const Color(0xFF9398A7);

  @override
  Color get statusBarColor => backgroundColor;

  @override
  Color get shadowImageColor => const Color(0x73000000);

  @override
  ThemeExtension<IDwColorTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<IDwColorTheme> lerp(
    ThemeExtension<IDwColorTheme>? other,
    double t,
  ) {
    throw UnimplementedError();
  }

  @override
  Object get type => DwDarkColorTheme;
}
