import 'package:flutter/material.dart';
import 'package:notes_app/Theme/themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: Theming(),
    );
  }
}

class Theming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: PurpleTheme.lightThme,
      darkTheme: PurpleTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Theming(),
    );
  }
}
