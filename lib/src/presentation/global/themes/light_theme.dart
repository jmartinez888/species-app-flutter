import 'package:flutter/material.dart';
import '../colors/colors.dart';

class CustomTheme {

  CustomTheme._();
  
  static ThemeData lightTheme = ThemeData(
    //colorSchemeSeed: Colors.green,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: CustomColors.primary,
      onPrimary: CustomColors.white,
      primaryContainer: CustomColors.primaryContainer,
      onPrimaryContainer: CustomColors.primaryOnContainer,
      secondary: CustomColors.secondary,
      onSecondary: CustomColors.white,
      secondaryContainer: CustomColors.secondaryContainer,
      onSecondaryContainer: CustomColors.secondaryOnContainer,
      tertiary: CustomColors.tertiary,
      onTertiary: CustomColors.white,
      tertiaryContainer: CustomColors.tertiaryContainer,
      onTertiaryContainer: CustomColors.tertiaryOnContainer,
      error: CustomColors.error,
      onError: CustomColors.white,
      errorContainer: CustomColors.secondaryContainer,
      onErrorContainer: CustomColors.errorOnContainer,
      background: CustomColors.background,
      onBackground: CustomColors.greyOnContainer,
      surface: CustomColors.background,
      onSurface: CustomColors.greyOnContainer,
      outline: CustomColors.greyContainer,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: CustomColors.primary,
      foregroundColor: CustomColors.white,
    ),
    iconTheme: const IconThemeData(color: CustomColors.greyOnContainer),
    appBarTheme: const AppBarTheme(
      color: CustomColors.background,
      foregroundColor: CustomColors.greyOnContainer,
    ),
    useMaterial3: true,
  );
}
