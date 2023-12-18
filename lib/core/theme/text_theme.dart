import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class CustomTextTheme {
  static TextTheme textTheme() {
    const FontWeight bold = FontWeight.w700;
    const FontWeight medium = FontWeight.w500;
    const FontWeight regular = FontWeight.w400;
    const FontWeight light = FontWeight.w300;

    return TextTheme(
      headlineLarge: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 50,
        fontWeight: light,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 16,
        fontWeight: bold,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 14,
        fontWeight: bold,
      ),
      displayLarge: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 20,
        fontWeight: medium,
      ),
      displayMedium: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 16,
        fontWeight: medium,
      ),
      displaySmall: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 14,
        fontWeight: medium,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 20,
        fontWeight: regular,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 16,
        fontWeight: regular,
      ),
      bodySmall: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 14,
        fontWeight: regular,
      ),
      labelLarge: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 20,
        fontWeight: light,
      ),
      labelMedium: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 16,
        fontWeight: light,
      ),
      labelSmall: GoogleFonts.poppins(
        color: whiteColor,
        fontSize: 14,
        fontWeight: light,
      ),
    );
  }
}
