import 'package:flutter/material.dart';
import 'package:flutter_dependency_injection/core/resources/colours.dart';
import 'package:flutter_dependency_injection/core/resources/fonts.dart';

class AppTheme {
  static final theme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Colours.blue500,
      secondary: Colours.gold500,
      error: Colours.error500,
      background: Colours.grey50,
    ),
    fontFamily: Fonts.poppins,
    useMaterial3: true,
  );
}
