import 'package:analog_clock_and_alarm/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Наша light/Primary тема
ThemeData themeData(BuildContext context) {
  return ThemeData(
      appBarTheme: appBarTheme,
      primaryColor: kPrimaryColor,
      accentColor: kAccentLightColor,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(secondary: kSecondaryLightColor
          // пол умолчанию цвет surface = Colors.white
          ),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: kBodyTextLightColor),
      accentIconTheme: IconThemeData(color: kAccentIconLightColor),
      primaryIconTheme: IconThemeData(color: kPrimaryIconLightColor),
      textTheme: GoogleFonts.latoTextTheme().copyWith(
        bodyText1: TextStyle(color: kBodyTextLightColor),
        bodyText2: TextStyle(color: kBodyTextLightColor),
        headline4: TextStyle(color: kTitleTextLightColor, fontSize: 32),
        headline1: TextStyle(color: kTitleTextLightColor, fontSize: 80),
      ));
}

// Dark theme
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      appBarTheme: appBarTheme,
      primaryColor: kPrimaryColor,
      accentColor: kAccentDarkColor,
      scaffoldBackgroundColor: Color(0xFF0D0C0E),
      colorScheme: ColorScheme.light(
          secondary: kSecondaryDarkColor, surface: kSurfaceDarkColor),
      backgroundColor: kBackgroundDarkColor,
      iconTheme: IconThemeData(color: kBodyTextDarkColor),
      accentIconTheme: IconThemeData(color: kAccentIconDarkColor),
      primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
      textTheme: GoogleFonts.latoTextTheme().copyWith(
        bodyText1: TextStyle(color: kBodyTextDarkColor),
        bodyText2: TextStyle(color: kBodyTextDarkColor),
        headline4: TextStyle(color: kTitleTextDarkColor, fontSize: 32),
        headline1: TextStyle(color: kTitleTextDarkColor, fontSize: 80),
      ));
}

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);
