import 'package:chat_core/chat_core.dart';
import 'package:flutter/material.dart';

import 'dark/dw_dark_theme.dart';
import 'interfaces/i_dw_theme_data.dart';

class DwTheme {
  const DwTheme._();

  static ThemeData darkTheme({required IPlatformService platformService}) {
    return ThemeData.dark().copyWith(
      extensions: <ThemeExtension<IDwThemeData>>[
        DwDarkThemeData(platformService: platformService),
      ],
    );
  }
}
