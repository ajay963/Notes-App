import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notes_app/widgets/cards.dart';
import 'package:provider/provider.dart';
import 'package:notes_app/Theme/colors.dart';
import 'package:notes_app/backend/dataStruture/providerTest.dart';
import 'package:notes_app/screens/AddNotes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme txtTheme = Theme.of(context).textTheme;
    final NotesList _notesData = Provider.of<NotesList>(context);
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddNotesScreen())),
        backgroundColor: kdeepMagenta,
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SafeArea(
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
                ),
                SizedBox(height: 40),
                (_notesData.notesData.length != 0 &&
                        _notesData.notesData.isNotEmpty)
                    ? StaggeredGridView.countBuilder(
                        crossAxisCount: 2,
                        staggeredTileBuilder: (int) {
                          return StaggeredTile.fit(1);
                        },
                        shrinkWrap: true,
                        crossAxisSpacing: 10,
                        physics: BouncingScrollPhysics(),
                        itemCount: _notesData.notesData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CardView(
                              title: _notesData.notesData[index].title,
                              description: _notesData.notesData[index].notes,
                              date: _notesData.notesData[index].date,
                              category: _notesData.notesData[index].category);
                        })
                    : Text('No Data Avaialable', style: txtTheme.subtitle1)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
