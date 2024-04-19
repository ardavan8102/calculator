import 'package:calculator/theme/custom_themes/elevatedButton_theme.dart';
import 'package:calculator/theme/custom_themes/outlined_button_theme.dart';
import 'package:calculator/theme/custom_themes/text_theme.dart';
import 'package:calculator/utils/constants/colors.dart';
import 'package:flutter/material.dart';


class myAppTheme {
  myAppTheme._(); // Avoid Creating Instants

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'reem',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.white,
    textTheme: myTextTheme.lightTextTheme,
    elevatedButtonTheme: myElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: myOutlinedButtonTheme.lightOutlinedButtonTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'reem',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: Colors.black,
    textTheme: myTextTheme.darkTextTheme,
    elevatedButtonTheme: myElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: myOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}