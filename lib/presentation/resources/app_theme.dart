import 'package:flutter/material.dart';
import 'package:pending_management/presentation/resources/resources.dart';

ThemeData getAppTheme(Brightness brightness) {
  final colors = brightness == Brightness.light ? colorsLight : colorsDark;

  return ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: colors.backgroundPrimary,
      foregroundColor: colors.textPrimary,
      titleTextStyle: AppTextStyles.headingXSmall.copyWith(
        color: colors.textPrimary,
      ),
      elevation: 0.4,
      centerTitle: true,
    ),
    primaryColor: colors.primaryText,
    scaffoldBackgroundColor: colors.backgroundPrimary,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
  );
}
