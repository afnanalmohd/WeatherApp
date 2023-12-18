import 'package:cashing/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeApp {
  ThemeApp._();
  static final lightTheme = lightThemeData();
}

ThemeData lightThemeData() {
  return ThemeData(
    fontFamily: GoogleFonts.poppins.toString(),
    textTheme: CustomTextTheme.textTheme(),
  );
}
