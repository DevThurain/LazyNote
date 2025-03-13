import 'package:flutter/widgets.dart';

@immutable
class AppColors {
  const AppColors._();
  static const violet = Color(0xff4A3780);
  static const lightViolet = Color.fromARGB(255, 239, 238, 243);

  static const white = Color(0xffffffff);
  static const black = Color(0xff000000);

  static const whiteBase = Color(0xfffafafa);
  static const blackDeep = Color(0xff131315); // A very dark black
  static const blackBase = Color(0xff1d1d1f); // The standard black color
  static const blackMuted = Color(
    0xff232327,
  ); // A slightly lighter, muted black

  static const greyDeep = Color(0xff41474E);
  static const greyBase = Color(0xFF9E9E9E);
  static const greyMuted = Color(0xffa3a3a3);
  static const greyMutedVarient = Color(0xffe2e2e2);
}
