import 'package:flutter/material.dart';
import 'package:test_system/src/shared/colors/colors.dart';

abstract class AppTextTheme {
  static const light = TextTheme(
    displayLarge: TextStyle(
      color: AppColors.textMain,
      fontSize: 40,
      fontWeight: FontWeight.w900,
      height: 1.2,
      letterSpacing: 0,
    ),
    displayMedium: TextStyle(
      color: AppColors.textMain,
      fontSize: 32,
      fontWeight: FontWeight.w900,
      height: 1.2,
      letterSpacing: 0,
    ),
    displaySmall: TextStyle(
      color: AppColors.textMain,
      fontSize: 28,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    headlineLarge: TextStyle(
      color: AppColors.textMain,
      fontSize: 24,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    headlineMedium: TextStyle(
      color: AppColors.textMain,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    headlineSmall: TextStyle(
      color: AppColors.textMain,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    titleLarge: TextStyle(
      color: AppColors.textMain,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    titleMedium: TextStyle(
      color: AppColors.textMain,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0,
    ),
    titleSmall: TextStyle(
      color: AppColors.textMain,
      height: 1.2,
      fontSize: 12,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
    bodyLarge: TextStyle(
      color: AppColors.textMain,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 0,
    ),
    bodyMedium: TextStyle(
      color: AppColors.textMain,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 0,
    ),
    bodySmall: TextStyle(
      color: AppColors.textMain,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 0,
    ),
  );
}
