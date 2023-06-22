import 'package:flutter/material.dart';
import 'package:ui_common/styles/app_colors_dark.dart';
import 'package:ui_common/styles/app_text_style.dart';

import '../assets/app_assets.dart';
import 'app_colors.dart';
import 'app_sizes.dart';

extension AppTheme on ThemeData {
  AppColors get colors => brightness == Brightness.light
      ? const AppColors()
      : const AppColorsDark();

  AppSizes get layout => const AppSizes();

  AppAssets get assets => const AppAssets();
}

class AppThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      // TODO do we need colorScheme property at all (how to match colors from UI to primary,secondary etc.. ?)
      scaffoldBackgroundColor: AppColors().background,
      sliderTheme: _sliderThemeData,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff000000),
        onPrimary: Color(0xffffffff),
        secondary: Color(0xff5418EA),
        onSecondary: Color(0xffffffff),
        error: Color(0xffD30000),
        onError: Color(0xffD30000),
        background: Color(0xffF5F4F8),
        onBackground: Color(0xff333333),
        surface: Color(0xFFD2D2D2),
        onSurface: Color(0xff333333),
      ),
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Color(0xff6699ff)),
      textTheme: const AppTextStyle(),
      useMaterial3: false,
    );
  }

// FIXME: currently its the same as lightTheme
  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors().background,
      sliderTheme: _sliderThemeData,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff000000),
        onPrimary: Color(0xffffffff),
        secondary: Color(0xff5418EA),
        onSecondary: Color(0xffffffff),
        error: Color(0xffD30000),
        onError: Color(0xffD30000),
        background: Color(0xffF5F4F8),
        onBackground: Color(0xff333333),
        surface: Color(0xFFD2D2D2),
        onSurface: Color(0xff333333),
      ),
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Color(0xff6699ff)),
      textTheme: const AppTextStyle(),
      useMaterial3: false,
    );
  }

  static SliderThemeData get _sliderThemeData => SliderThemeData(
        thumbColor: AppColors().purple,
        activeTrackColor: AppColors().purple,
        inactiveTrackColor: AppColors().lightGrey,
        inactiveTickMarkColor: AppColors().lightGrey,
        activeTickMarkColor: AppColors().purple,
        disabledInactiveTickMarkColor: AppColors().lightGrey,
        disabledActiveTickMarkColor: AppColors().lightGrey,
        secondaryActiveTrackColor: AppColors().lightGrey,
        disabledActiveTrackColor: AppColors().lightGrey,
        disabledInactiveTrackColor: AppColors().lightGrey,
        disabledSecondaryActiveTrackColor: AppColors().lightGrey,
      );
}
