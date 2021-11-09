import 'package:flutter/material.dart';

import 'theme_fonts.dart';
import 'theme_colors.dart';

export 'theme_colors.dart';

class AppTheme with ThemeFonts {
  ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      textTheme: lightFontsTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: const ColorScheme.light().copyWith(
        primary: ThemeColors.kPrimaryColor,
        secondary: ThemeColors.kSecondaryColor,
        primaryVariant: ThemeColors.kPrimaryVariantColor,
        secondaryVariant: ThemeColors.kSecondaryVariantColor,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.8,
        centerTitle: true,
        titleTextStyle: lightFontsTheme.headline6,
        iconTheme: IconThemeData(color: ThemeColors.kIconColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: const ButtonStyle().copyWith(
          backgroundColor:
              MaterialStateProperty.all<Color>(ThemeColors.kSecondaryColor),
          textStyle: MaterialStateProperty.all<TextStyle?>(
            lightFontsTheme.button?.copyWith(color: ThemeColors.kPrimaryColor),
          ),
          elevation: MaterialStateProperty.all<double>(1.0),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: ThemeColors.kSecondaryColor,
          textStyle: lightFontsTheme.button,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: ThemeColors.kSecondaryColor,
        ),
      ),
    );
  }
}
