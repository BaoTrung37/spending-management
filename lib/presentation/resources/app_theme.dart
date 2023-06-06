import 'package:flutter/material.dart';
import 'package:pending_management/presentation/resources/resources.dart';

ThemeData getAppTheme(Brightness brightness) {
  final colors = brightness == Brightness.light ? colorsLight : colorsDark;

  return ThemeData(
    brightness: brightness,
    fontFamily: AppFonts.roboto,
    scaffoldBackgroundColor: colors.background,
  );
}
