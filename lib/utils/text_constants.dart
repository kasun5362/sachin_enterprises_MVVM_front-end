import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_constants.dart'; // your colors file

class AppTextStyles {
  AppTextStyles._();

  // Headings
  static TextStyle heading1 = GoogleFonts.oswald(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 1.3,
  );

  static TextStyle heading2 = GoogleFonts.oswald(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.3,
  );

  static TextStyle heading3 = GoogleFonts.oswald(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    height: 1.3,
  );

  // Subtitles
  static TextStyle subtitle1 = GoogleFonts.oswald(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: ColorConstants.grayDark,
  );

  static TextStyle subtitle2 = GoogleFonts.oswald(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: ColorConstants.grayDark,
  );

  static TextStyle subtitle2Highlight = GoogleFonts.oswald(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: ColorConstants.primaryColor,
  );

  // Body text
  static TextStyle bodyLarge = GoogleFonts.oswald(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyMedium = GoogleFonts.oswald(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodySmall = GoogleFonts.oswald(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: ColorConstants.grayDark,
  );

  static TextStyle bodySmallHighlight = GoogleFonts.oswald(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: ColorConstants.primaryColor,
  );

  // Label
  static TextStyle label = GoogleFonts.oswald(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.3,
    color: ColorConstants.grayDark,
  );

  // Button Text
  static TextStyle button = GoogleFonts.oswald(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
    color: Colors.white,
  );
}
