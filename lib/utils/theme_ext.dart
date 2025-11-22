import 'package:flutter/material.dart';

import 'colors.dart';

extension AppThemeColors on BuildContext {
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  // Primary
  Color get primary => isDark ? AppColors.primaryDark : AppColors.primary;
  Color get primaryDeep => isDark ? AppColors.primaryDeep : AppColors.primary;

  // Background
  Color get background =>
      isDark ? AppColors.bgDark : AppColors.bgLight;

  Color get card =>
      isDark ? AppColors.cardDark : AppColors.cardLight;

  // Text colors
  Color get textPrimary =>
      isDark ? AppColors.white : AppColors.black;

  Color get textSecondary =>
      isDark ? AppColors.grey3 : AppColors.grey5;

  // Accent (Gold stays same, but you **can** tone it if you want)
  Color get gold => AppColors.gold;
  Color get goldSoft => isDark ? AppColors.goldFaded : AppColors.goldSoft;

  // Status colors
  Color get success => AppColors.success;
  Color get error => AppColors.error;
  Color get warning => AppColors.warning;
  Color get info => AppColors.info;

  // Transparent overlays
  Color get overlay =>
      isDark ? AppColors.blackTransparent : AppColors.emeraldLight;
}