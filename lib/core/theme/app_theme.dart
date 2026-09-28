import 'package:flutter/material.dart';

/// App theme configuration for Country Trivia.
class AppTheme {
  AppTheme._();

  // ── Feedback Colors ──────────────────────────────────────────
  static const Color correctColor = Color(0xFF4CAF50);
  static const Color correctDarkColor = Color(0xFF2E7D32);
  static const Color wrongColor = Color(0xFFF44336);
  static const Color wrongDarkColor = Color(0xFFC62828);
  static const Color revealedColor = Color(0xFF2196F3);
  static const Color revealedDarkColor = Color(0xFF1565C0);
  static const Color neutralColor = Color(0xFF9E9E9E);

  // ── App Colors ───────────────────────────────────────────────
  static const Color primaryColor = Color(0xFF1565C0);
  static const Color scaffoldBackground = Color(0xFFF5F5F5);
  static const Color cardBackground = Colors.white;
  static const Color optionButtonColor = Colors.white;
  static const Color optionButtonBorderColor = Color(0xFFE0E0E0);

  // ── Text Styles ──────────────────────────────────────────────
  static const TextStyle scoreTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle optionTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xFF212121),
  );

  static const TextStyle feedbackTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle questionNumberStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white70,
  );

  // ── ThemeData ────────────────────────────────────────────────
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: scaffoldBackground,
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      cardTheme: CardThemeData(
        color: cardBackground,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
