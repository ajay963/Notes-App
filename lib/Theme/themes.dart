import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:notes_app/Theme/colors.dart';

class PurpleTheme {
  static ThemeData lightTheme = ThemeData(
      backgroundColor: kLightBG,
      cardColor: kLightCard,
      iconTheme: IconThemeData(color: kLightBG, size: 24),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontFamily: GoogleFonts.alef().fontFamily,
              fontSize: 28,
              fontWeight: FontWeight.w900,
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
          subtitle1: TextStyle(
              fontFamily: GoogleFonts.roboto().fontFamily,
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

class CategoryItems {
  final BuildContext? context;
  CategoryItems({
    @required this.context,
  });
  List<DropdownMenuItem> itemsList(BuildContext context) {
    final TextTheme txtTheme = Theme.of(context).textTheme;
    final List<DropdownMenuItem> items = [
      DropdownMenuItem(
        value: 'Work',
        child: Text(
          'Work',
          style: txtTheme.subtitle1,
        ),
      ),
      DropdownMenuItem(
        value: 'Life',
        child: Text(
          'Life',
          style: txtTheme.subtitle1,
        ),
      ),
      DropdownMenuItem(
        value: 'Fun',
        child: Text(
          'Fun',
          style: txtTheme.subtitle1,
        ),
      ),
      DropdownMenuItem(
        value: 'Remainder',
        child: Text(
          'Remainder',
          style: txtTheme.subtitle1,
        ),
      ),
      DropdownMenuItem(
        value: 'To-DO',
        child: Text(
          'To-do',
          style: txtTheme.subtitle1,
        ),
      ),
      DropdownMenuItem(
        value: 'Assignment',
        child: Text(
          'Assignment',
          style: txtTheme.subtitle1,
        ),
      ),
      DropdownMenuItem(
        value: 'Random',
        child: Text(
          'Random',
          style: txtTheme.subtitle1,
        ),
      ),
      DropdownMenuItem(
        value: 'Home',
        child: Text(
          'Home',
          style: txtTheme.subtitle1,
        ),
      ),
      DropdownMenuItem(
        value: 'Project',
        child: Text(
          'Project',
          style: txtTheme.subtitle1,
        ),
      ),
    ];
    return items;
  }
}
