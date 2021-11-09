import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color _defaultColor = Colors.black;

mixin ThemeFonts {
  final lightFontsTheme = const TextTheme().copyWith(
    bodyText1: GoogleFonts.heebo().copyWith(
      fontSize: 16,
      color: _defaultColor,
      fontWeight: FontWeight.w800,
    ),
    bodyText2: GoogleFonts.heebo().copyWith(
      color: _defaultColor,
    ),
    headline1: GoogleFonts.heebo().copyWith(
      color: _defaultColor,
    ),
    headline2: GoogleFonts.heebo().copyWith(
      color: _defaultColor,
    ),
    headline6: GoogleFonts.heebo().copyWith(
      fontSize: 18,
      color: _defaultColor,
      fontWeight: FontWeight.w500,
    ),
    button: GoogleFonts.heebo().copyWith(
      color: _defaultColor,
      fontWeight: FontWeight.normal,
    ),
  );
}
