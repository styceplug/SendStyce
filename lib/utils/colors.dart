import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  // ===== Primary Branding (Forest Green Theme) =====
  static const Color primary = Color(0xFF043915);        // Light mode primary
  static const Color primaryDark = Color(0xFF02240D);    // Used in dark mode
  static const Color primaryDeep = Color(0xFF011A09);    // Extra deep variant

  // ===== Accent (Premium Gold) =====
  static const Color gold = Color(0xFFD4AF37);
  static const Color goldSoft = Color(0xFFE8D8A8);
  static const Color goldFaded = Color(0x33D4AF37);  // Used in dark mode

  // ===== Backgrounds =====
  static const Color bgLight = Color(0xFFF6F8F7);  // Soft near-white green-tint
  static const Color bgDark = Color(0xFF0A120A);   // Deep black-green, not pure black

  // Cards
  static const Color cardLight = Color(0xFFF9FBF9);
  static const Color cardDark = Color(0xFF101A10); // Dark card, slight forest tint

  // ===== Text Colors =====
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF141414);

  // ===== Neutrals =====
  static const Color charcoal = Color(0xFF1A1A1A); // Used for dark background fallback
  static const Color grey1 = Color(0xFFF2F2F2);
  static const Color grey2 = Color(0xFFE0E0E0);
  static const Color grey3 = Color(0xFFB0B0B0); // Light mode secondary text in dark mode
  static const Color grey4 = Color(0xFF8A8A8A);
  static const Color grey5 = Color(0xFF505050); // Secondary text for light mode

  // ===== Status =====
  static const Color success = Color(0xFF0D722F); // Harmonized with primary family
  static const Color error = Color(0xFFD84343);
  static const Color warning = Color(0xFFE6A93E);
  static const Color info = Color(0xFF4C9FE5);

  // ===== Transparent Shades =====
  static const Color emeraldLight = Color(0x33043915);     // Light overlay
  static const Color emeraldLighter = Color(0x1A043915);   // Extra light overlay
  static const Color blackTransparent = Color(0x66000000); // Dark mode overlay

  // ===== Premium Gradients =====
  static const LinearGradient emeraldGoldGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF043915),
      Color(0xFFD4AF37),
    ],
  );

  static const LinearGradient softEmeraldBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFF3F8F3),
      Color(0x33043915),
    ],
  );
}