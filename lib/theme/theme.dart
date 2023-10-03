import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

final mainTheme = ThemeData(
  scaffoldBackgroundColor: MainColor.bg100,
  shadowColor: ThemeData.light().shadowColor,
  brightness: Brightness.light,
  primarySwatch: Colors.green,
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(
      MainColor.primary100,
    ),
    trackColor: MaterialStateProperty.all(
      Colors.grey[400],
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: MainColor.primary100,
    secondary: MainColor.bg100,
    background: MainColor.stateGreen,
  ),
  dividerColor: MainColor.primary100,
  useMaterial3: true,

  ///TEXT
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: spacingM_20,
      color: MainColor.text100,
      fontFamily: 'Luckiest',
    ),
    titleMedium: TextStyle(
      fontSize: spacingM_16,
      color: MainColor.text100,
      fontFamily: 'Luckiest',
    ),
    titleSmall: TextStyle(
      fontSize: spacingS_12,
      color: MainColor.text100,
      fontFamily: 'Luckiest',
    ),
    displayLarge: TextStyle(
      fontSize: spacingM_20,
      color: MainColor.text100,
      fontFamily: 'Montserrat',
    ),
    displayMedium: TextStyle(
      fontSize: spacingM_16,
      color: MainColor.text100,
      fontFamily: 'Montserrat',
    ),
    displaySmall: TextStyle(
      fontSize: spacingS_12,
      color: MainColor.text100,
      fontFamily: 'Montserrat',
    ),
    headlineLarge: TextStyle(
      fontSize: spacingM_20,
      color: MainColor.text100,
      fontFamily: 'Luckiest',
    ),
    headlineMedium: TextStyle(
      fontSize: spacingM_16,
      color: MainColor.text100,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontSize: spacingS_12,
      color: MainColor.text100,
      fontFamily: 'Luckiest',
    ),
    bodyLarge: TextStyle(
      fontSize: spacingXXL_48,
      color: MainColor.text100,
      fontFamily: 'Luckiest',
    ),
    bodyMedium: TextStyle(
      fontSize: spacingXXL_40,
      color: MainColor.text100,
      fontFamily: 'Luckiest',
    ),
    bodySmall: TextStyle(
      fontSize: spacingXL_32,
      color: MainColor.text100,
      fontFamily: 'Luckiest',
    ),
  ),
);
