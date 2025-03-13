import 'package:flutter/material.dart';
import 'package:lazy_note/core/themes/app_colors.dart';

extension IconExtension on BuildContext {
  Color dynamicIconColor() {
    return MediaQuery.of(this).platformBrightness == Brightness.dark
        ? AppColors.white
        : AppColors.black;
  }
}
