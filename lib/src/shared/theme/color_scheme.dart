import 'package:flutter/material.dart';

import '../colors/colors.dart';

abstract class AppColorScheme {
  static final light = const ColorScheme.light().copyWith(
    primary: AppColors.primary,
    background: AppColors.surface,
    surface: AppColors.background,
  );
}
