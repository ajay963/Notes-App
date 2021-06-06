import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes_app/Theme/themes.dart';
import 'package:notes_app/backend/dataStruture/providerTest.dart';
import 'package:notes_app/screens/logIn.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<NotesList>(create: (context) => NotesList())
    ], child: Theming());
  }
}

class Theming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      theme: PurpleTheme.lightTheme,
      // darkTheme: PurpleTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: LoginScreen(),
    );
  }
}
