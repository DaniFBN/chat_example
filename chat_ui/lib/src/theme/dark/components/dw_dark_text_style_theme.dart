import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../interfaces/components/i_dw_text_style_theme.dart';

class DwDarkTextStyleTheme implements IDwTextStyleTheme {
  const DwDarkTextStyleTheme();

  @override
  TextStyle get chatDateTextStyle => const TextStyle(
        color: Color(0xFFB3B9C9),
        fontWeight: FontWeight.w400,
        fontSize: 14,
        fontFamily: DwConstants.kPoppinsFontFamily,
        package: DwConstants.kPackageName,
      );

  @override
  TextStyle get chatDescriptionTextStyle => const TextStyle(
        color: Color(0xFFB3B9C9),
        fontWeight: FontWeight.w400,
        fontSize: 14,
        fontFamily: DwConstants.kPoppinsFontFamily,
        package: DwConstants.kPackageName,
      );

  @override
  TextStyle get chatNameTextStyle => const TextStyle(
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.w600,
        fontSize: 15,
        fontFamily: DwConstants.kPoppinsFontFamily,
        package: DwConstants.kPackageName,
      );

  @override
  TextStyle get messageContentTextStyle => const TextStyle(
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.w400,
        fontSize: 14,
        fontFamily: DwConstants.kPoppinsFontFamily,
        package: DwConstants.kPackageName,
      );

  @override
  TextStyle get messageDateTextStyle => const TextStyle(
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.w400,
        fontSize: 12,
        fontFamily: DwConstants.kPoppinsFontFamily,
        package: DwConstants.kPackageName,
      );

  @override
  TextStyle get messageAppBarTextStyle => const TextStyle(
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.w600,
        fontSize: 20,
        fontFamily: DwConstants.kPoppinsFontFamily,
        package: DwConstants.kPackageName,
      );

  @override
  TextStyle get sendMessageTextStyle => const TextStyle(
        color: Color(0x73FFFFFF),
        fontWeight: FontWeight.w600,
        fontSize: 13,
        fontFamily: DwConstants.kMulishFontFamily,
        package: DwConstants.kPackageName,
      );

  @override
  TextStyle get statusPersonNameTextStyle => const TextStyle(
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.w400,
        fontSize: 16,
        fontFamily: DwConstants.kPoppinsFontFamily,
        package: DwConstants.kPackageName,
      );

  @override
  TextStyle get statusTitleTextStyle => const TextStyle(
        color: Color(0x94FFFFFF),
        fontWeight: FontWeight.w500,
        fontSize: 13,
        fontFamily: DwConstants.kPoppinsFontFamily,
        package: DwConstants.kPackageName,
      );

  @override
  TextStyle get homeAppBarTextStyle => const TextStyle(
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.w600,
        fontSize: 28,
        fontFamily: DwConstants.kPoppinsFontFamily,
        package: DwConstants.kPackageName,
      );

  @override
  ThemeExtension<IDwTextStyleTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<IDwTextStyleTheme> lerp(
    ThemeExtension<IDwTextStyleTheme>? other,
    double t,
  ) {
    throw UnimplementedError();
  }

  @override
  Object get type => DwDarkTextStyleTheme;
}
