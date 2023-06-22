import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyle extends TextTheme {
  TextStyle get headlineLarge => GoogleFonts.redHatDisplay(
        fontSize: 40,
        color: AppColors().black,
        fontWeight: FontWeight.w600,
      );

  TextStyle get headlineMedium => GoogleFonts.redHatDisplay(
        fontSize: 36,
        color: AppColors().black,
        fontWeight: FontWeight.w600,
      );

  TextStyle get headlineSmall => GoogleFonts.redHatDisplay(
        fontSize: 28,
        color: AppColors().black,
        fontWeight: FontWeight.w400,
      );

  TextStyle get displayLarge => GoogleFonts.redHatDisplay(
        fontSize: 36,
        color: AppColors().black,
        fontWeight: FontWeight.w600,
      );

  TextStyle get displayMedium => GoogleFonts.redHatDisplay(
        fontSize: 32,
        color: AppColors().black,
        fontWeight: FontWeight.w600,
      );

  TextStyle get displaySmall => GoogleFonts.redHatDisplay(
        fontSize: 28,
        color: AppColors().black,
        fontWeight: FontWeight.w500,
      );

  TextStyle get titleLarge => GoogleFonts.redHatDisplay(
        fontSize: 22,
        color: AppColors().black,
        fontWeight: FontWeight.w500,
      );

  TextStyle get titleMedium => GoogleFonts.redHatDisplay(
        fontSize: 20,
        color: AppColors().black,
        fontWeight: FontWeight.w600,
      );

  TextStyle get titleSmall => GoogleFonts.redHatDisplay(
        fontSize: 18,
        color: AppColors().black,
        fontWeight: FontWeight.w500,
      );

  TextStyle get bodyLarge => GoogleFonts.redHatDisplay(
        fontSize: 18,
        color: AppColors().black,
        fontWeight: FontWeight.w300,
      );

  TextStyle get bodyMedium => GoogleFonts.redHatDisplay(
        fontSize: 16,
        color: AppColors().black,
        fontWeight: FontWeight.w400,
      );

  TextStyle get bodySmall => GoogleFonts.redHatDisplay(
        fontSize: 14,
        color: AppColors().black,
        fontWeight: FontWeight.w400,
      );

  const AppTextStyle();
}
