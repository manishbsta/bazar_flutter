import 'package:flutter/material.dart';

import 'theme_fonts.dart';
import 'theme_colors.dart';

export 'theme_colors.dart';

class AppTheme with ThemeFonts {
  ThemeData? lightTheme() {
    return ThemeData.light().copyWith(
      colorScheme: const ColorScheme.light().copyWith(
        primary: ThemeColors.kPrimaryColor,
        primaryVariant: ThemeColors.kPrimaryVariantColor,
        secondary: ThemeColors.kSecondaryColor,
        secondaryVariant: ThemeColors.kSecondaryVariantColor,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0.8,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 18,
          color: Colors.black87,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(ThemeColors.kSecondaryColor),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(vertical: 10),
          ),
          elevation: MaterialStateProperty.all<double>(1.0),
        ),
      ),
      iconTheme: IconThemeData(color: Colors.grey[900]),
    );
  }
}
