import 'package:flutter/material.dart';

import 'package:lazy_note/core/constants/app_values.dart';
import 'package:lazy_note/core/themes/app_fonts.dart';

class TextStyles {
  const TextStyles._();

  static TextStyle inter10() {
    return const TextStyle(fontFamily: AppFonts.inter, fontSize: AppValues.p_10);
  }

  static TextStyle inter12() {
    return const TextStyle(fontFamily: AppFonts.inter, fontSize: AppValues.p_12);
  }

  static TextStyle inter14() {
    return const TextStyle(fontFamily: AppFonts.inter, fontSize: AppValues.p_14);
  }

  static TextStyle inter16() {
    return const TextStyle(fontFamily: AppFonts.inter, fontSize: AppValues.p_16);
  }
  
}
