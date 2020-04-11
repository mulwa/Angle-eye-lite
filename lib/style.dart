import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static Color iconColor = Color(0xff54c293);

  static Color _lightPrimaryColor = Color(0xffffffff);
  static const Color _lightPrimaryVariantColor = Color(0xffffffff);
  static Color _lightSecondaryColor = Color(0xff54c293);
  static Color _lightSecondaryVariantColor = Color(0xff309472);
  static Color _lightOnPrimary = Colors.black;

  static Color _darkPrimaryColor = Colors.black87;
  static const Color _darkPrimaryVariantColor = Colors.white24;
  static Color _darkSecondaryColor = Colors.white;
  static Color _darkSecondaryVariantColor = Colors.white;
  static Color _darkOnPrimary = Colors.white;

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: _lightPrimaryVariantColor,
      appBarTheme: AppBarTheme(
        color: _lightSecondaryVariantColor,
        iconTheme: IconThemeData(color: iconColor),
      ),
      colorScheme: ColorScheme.light(
          primary: _lightPrimaryColor,
          primaryVariant: _lightPrimaryVariantColor,
          secondary: _lightSecondaryColor,
          secondaryVariant: _lightSecondaryVariantColor,
          onPrimary: _lightOnPrimary),
      iconTheme: IconThemeData(color: iconColor),
      textTheme: _lightTextTheme,
      bottomAppBarTheme: BottomAppBarTheme(
        color: _lightSecondaryVariantColor,
      ));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryVariantColor,
      appBarTheme: AppBarTheme(
        color: _darkSecondaryVariantColor,
        iconTheme: IconThemeData(color: iconColor),
      ),
      colorScheme: ColorScheme.light(
          primary: _darkPrimaryColor,
          primaryVariant: _darkPrimaryVariantColor,
          secondary: _darkSecondaryColor,
          secondaryVariant: _darkSecondaryVariantColor,
          onPrimary: _darkOnPrimary),
      iconTheme: IconThemeData(color: iconColor),
      textTheme: _darkTextTheme,
      bottomAppBarTheme: BottomAppBarTheme(
        color: _lightSecondaryVariantColor,
      ));
  static final TextTheme _lightTextTheme = TextTheme(
      title: _lightTitle,
      subtitle: _lightSubtitleStyle,
      subhead: _lightHeadlineStyle);
  static final TextStyle _lightTitle = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w800, color: _lightOnPrimary);
  static final TextStyle _lightSubtitleStyle = TextStyle(
      fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.grey);
  static final TextStyle _lightHeadlineStyle = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w400, color: _lightOnPrimary);

  static final TextTheme _darkTextTheme = TextTheme(
      title: _darkTitle,
      subtitle: _darkSubtitleStyle,
      subhead: _darkHeadlineStyle);
  static final TextStyle _darkTitle = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w800, color: _darkOnPrimary);
  static final TextStyle _darkSubtitleStyle = TextStyle(
      fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.grey);
  static final TextStyle _darkHeadlineStyle = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w400, color: _darkOnPrimary);

//  static const TextStyle titleStyle = TextStyle();
}
