import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {

  // ===== Primary Branding =====
  static const Color primary = Color(0xFF4CAF50);
  static const Color primaryDark = Color(0xFF2E7D32);
  static const Color primaryDeep = Color(0xFF1B5E20);

  // ===== Accent (Premium Gold) =====
  static const Color gold = Color(0xFFD4AF37);
  static const Color goldSoft = Color(0xFFE8D8A8);
  static const Color goldFaded = Color(0x33D4AF37);

  // ===== Backgrounds =====
  static const Color bgLight = Color(0xFFF7F9F8);
  static const Color white = Color(0xFFFFFFFF);
  static const Color cardLight = Color(0xFFFAFAFA);
  static const Color cardDark = Color(0xFF121A12);

  // ===== Status Colors (Premium Tones) =====
  static const Color success = Color(0xFF2E7D32);
  static const Color error = Color(0xFFD84343);
  static const Color warning = Color(0xFFE6A93E);
  static const Color info = Color(0xFF4C9FE5);

  // ===== Neutrals (Expensive Feel) =====
  static const Color black = Color(0xFF141414);
  static const Color charcoal = Color(0xFF1C1C1C);
  static const Color grey1 = Color(0xFFF2F2F2);
  static const Color grey2 = Color(0xFFE0E0E0);
  static const Color grey3 = Color(0xFFB0B0B0);
  static const Color grey4 = Color(0xFF8A8A8A);
  static const Color grey5 = Color(0xFF505050);

  // ===== Transparent Shades =====
  static const Color emeraldLight = Color(0x334CAF50); // 20% emerald
  static const Color emeraldLighter = Color(0x1A4CAF50); // 10% emerald
  static const Color blackTransparent = Color(0x66000000); // 40% black

  // ===== Premium Gradients =====

  static const LinearGradient emeraldGoldGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF2E7D32), // Deep emerald
      Color(0xFFD4AF37), // Gold
    ],
  );


  static const LinearGradient softEmeraldBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFF1F8F3),
      Color(0x334CAF50), // light wash
    ],
  );
}
