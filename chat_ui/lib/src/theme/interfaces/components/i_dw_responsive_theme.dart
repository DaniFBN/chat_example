import 'package:flutter/material.dart';

abstract class IDwResponsiveTheme
    implements ThemeExtension<IDwResponsiveTheme> {
  /// Percentage that represent 8
  double get s8Percent;

  /// Percentage that represent 12
  double get s12Percent;

  /// Percentage that represent 16
  double get s16Percent;

  /// Percentage that represent 24
  double get s24Percent;

  /// Percentage that represent 44
  double get s44Percent;

  /// Percentage that represent 52
  double get s52Percent;

  /// Percentage that represent 65
  double get s65Percent;

  /// Percentage that represent 98
  double get s98Percent;
}
