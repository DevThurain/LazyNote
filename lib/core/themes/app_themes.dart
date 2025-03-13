// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:lazy_note/core/themes/app_colors.dart';

@immutable
class AppThemes {
  const AppThemes._();

  static ThemeData light() {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.lightViolet,
      colorScheme: const ColorScheme.light().copyWith(
        primary: AppColors.violet,
        surface: AppColors.white,
        tertiary: AppColors.greyMutedVarient,
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.blackBase,
      colorScheme: const ColorScheme.dark().copyWith(
        surface: AppColors.blackMuted,
        tertiary: AppColors.greyMuted,
      ),
    );
  }
}
