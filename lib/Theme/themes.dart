import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/Theme/colors.dart';

class PurpleTheme {
  static ThemeData lightThme = ThemeData(
      backgroundColor: kLightBG,
      cardColor: kLightCard,
      iconTheme: IconThemeData(color: kLightBG, size: 24),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontFamily: GoogleFonts.alef().fontFamily,
              fontSize: 28,
              color: kUltraDarkGrey),
          headline2: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontSize: 24,
            color: kUltraDarkGrey,
          ),
          headline3: TextStyle(
              fontFamily: GoogleFonts.alef().fontFamily,
              fontSize: 20,
              color: kMediumGrey),
          headline4: TextStyle(
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontSize: 18,
              color: kUltraDarkGrey),
          caption: TextStyle(
              fontFamily: GoogleFonts.alef().fontFamily,
              color: kUltraLightGrey,
              fontSize: 14),
          bodyText1: TextStyle(
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontSize: 16,
              color: kMediumGrey),
          bodyText2: TextStyle(
              fontFamily: GoogleFonts.alef().fontFamily,
              fontSize: 16,
              color: kLightBG)));
  static ThemeData darkTheme = ThemeData();
}
