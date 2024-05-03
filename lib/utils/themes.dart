import 'package:flutter/material.dart';
import 'colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.black,
    colorScheme: const ColorScheme.light(
      tertiaryContainer: AppColors.fieldBackground,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: const Color(0xFF181A20),
    canvasColor: Colors.white,
    colorScheme: const ColorScheme.dark(
      tertiaryContainer: AppColors.darkFieldBackground,
    ),
  );
}
