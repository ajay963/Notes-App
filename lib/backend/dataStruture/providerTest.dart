import 'package:flutter/cupertino.dart';
import 'package:notes_app/backend/dataStruture/notes.dart';

class NotesList extends ChangeNotifier {
  final List<Notes> notesData = [];
  addNotes(
      {@required String? title,
      @required String? notes,
      @required String? category}) {
    notesData.add(Notes(
        title: title!,
        notes: notes!,
        date: DateTime.now(),
        category: category!));
    notifyListeners();
  }

  deleteNotes({@required int? index}) {
    notesData.removeAt(index!);
    notifyListeners();
  }
}
