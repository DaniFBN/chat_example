import 'package:flutter/material.dart';

import '../interfaces/components/i_dw_responsive_theme.dart';

class DwMobileResponsiveTheme implements IDwResponsiveTheme {
  const DwMobileResponsiveTheme();

  @override
  double get s5Percent => 0.011;
  @override
  double get s8Percent => 0.018;
  @override
  double get s12Percent => 0.028;

  @override
  double get s24Percent => 0.056;
  @override
  double get s44Percent => 0.102;

  @override
  ThemeExtension<IDwResponsiveTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<IDwResponsiveTheme> lerp(
    ThemeExtension<IDwResponsiveTheme>? other,
    double t,
  ) {
    throw UnimplementedError();
  }

  @override
  Object get type => IDwResponsiveTheme;
}
