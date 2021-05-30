import 'package:flutter/material.dart';
import 'package:notes_app/Theme/colors.dart';
import 'package:notes_app/screens/AddNotes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddNotesScreen())),
        backgroundColor: kdeepMagenta,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Notes Keeper',
                  style: txtTheme.headline1,
                ),
                SizedBox(height: 30),
                Text('Hi Name', style: txtTheme.headline2),
                Text(
                  'Here is your notes',
                  style: txtTheme.headline3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
