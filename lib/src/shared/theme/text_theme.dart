import 'package:flutter/material.dart';
import 'package:test_system/src/shared/colors/color_scheme.dart';

abstract class AppTextTheme {
  static const light = TextTheme(
    displayLarge: TextStyle(
      color: AppColorScheme.textMain,
      fontSize: 40,
      fontWeight: FontWeight.w900,
      height: 1.2,
      letterSpacing: 0,
    ),
    displayMedium: TextStyle(
      color: AppColorScheme.textMain,
      fontSize: 32,
      fontWeight: FontWeight.w900,
      height: 1.2,
      letterSpacing: 0,
    ),
    displaySmall: TextStyle(
      color: AppColorScheme.textMain,
      fontSize: 28,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    headlineLarge: TextStyle(
      color: AppColorScheme.textMain,
      fontSize: 24,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    headlineMedium: TextStyle(
      color: AppColorScheme.textMain,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    headlineSmall: TextStyle(
      color: AppColorScheme.textMain,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    titleLarge: TextStyle(
      color: AppColorScheme.textMain,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    titleMedium: TextStyle(
      color: AppColorScheme.textMain,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    titleSmall: TextStyle(
      color: AppColorScheme.textMain,
      height: 1.2,
      fontSize: 12,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
    bodyLarge: TextStyle(
      color: AppColorScheme.textMain,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 0,
    ),
    bodyMedium: TextStyle(
      color: AppColorScheme.textMain,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 0,
    ),
    bodySmall: TextStyle(
      color: AppColorScheme.textMain,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 0,
    ),
  );
}
