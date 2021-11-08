import 'theme_colors.dart';
import 'theme_fonts.dart';
import 'package:flutter/material.dart';

class AppTheme with ThemeFonts, ThemeColors {
  ThemeData? lightTheme() {
    return ThemeData.light().copyWith(
      primaryColor: kPrimaryColor,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
    );
  }
}
