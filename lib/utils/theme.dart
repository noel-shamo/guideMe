import 'package:flutter/material.dart';

class AppTheme {
  // Colors
  static const Color primaryColor = Color(0xFF0175C2); // Flutter blue
  static const Color secondaryColor = Color(0xFF02569B); // Darker Flutter blue
  static const Color accentColor = Color(0xFF13B9FD); // Light Flutter blue
  static const Color bgColor = Colors.white;
  static const Color textDarkColor = Color(0xFF2D3748);
  static const Color textLightColor = Color(0xFF718096);

  // Typography
  static TextTheme textTheme = const TextTheme(
    displayLarge: TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.bold,
      color: textDarkColor,
    ),
    displayMedium: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w700,
      color: textDarkColor,
    ),
    displaySmall: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: textDarkColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: textDarkColor,
    ),
    bodyLarge: TextStyle(fontSize: 18, color: textDarkColor),
    bodyMedium: TextStyle(fontSize: 16, color: textDarkColor),
  );

  // Button Styles
  static ButtonStyle primaryButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    padding: MaterialStateProperty.all<EdgeInsets>(
      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );

  static ButtonStyle secondaryButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
    foregroundColor: MaterialStateProperty.all<Color>(primaryColor),
    padding: MaterialStateProperty.all<EdgeInsets>(
      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: primaryColor),
      ),
    ),
  );
}
