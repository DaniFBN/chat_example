import 'package:flutter/material.dart';

import 'dark/dw_dark_theme.dart';
import 'interfaces/i_dw_theme_data.dart';

class DwTheme {
  const DwTheme._();

  static final darkTheme = ThemeData.dark().copyWith(
    extensions: <ThemeExtension<IDwThemeData>>[const DwDarkThemeData()],
  );
}
