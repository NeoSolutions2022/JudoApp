import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../color/color.dart';

class Style {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    primaryColor: lightAccentColor,
    colorScheme: const ColorScheme.light()
        .copyWith(
            primary: lightPrimaryColor,
            secondary: lightAccentColor,
            onSecondary: Colors.white)
        .copyWith(
          secondary: lightAccentColor,
        ),
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    canvasColor: darkCanvasColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    cardColor: darkCardColor,
    dividerColor: darkDividerColor,
    dialogBackgroundColor: darkCardColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: darkAccentColor,
      secondary: darkAccentColor,
    ),
  );
}
