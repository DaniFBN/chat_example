import 'package:flutter/material.dart';

abstract class IDwResponsiveTheme
    implements ThemeExtension<IDwResponsiveTheme> {
  /// Percentage that represent 8
  double get s8Percent;

  /// Percentage that represent 12
  double get s12Percent;

  /// Percentage that represent 24
  double get s24Percent;

  /// Percentage that represent 24
  double get s44Percent;
}
