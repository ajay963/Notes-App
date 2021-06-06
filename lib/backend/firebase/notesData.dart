import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:notes_app/backend/dataStruture/notes.dart';

class NotesData {
  addNote({required Notes notes}) {
    FirebaseFirestore.instance.collection('Notes').withConverter(
          fromFirestore: (snapshot, _) => Notes.fromJson(snapshot.data()!),
          toFirestore: (note, _) => notes.toJson(),
        );
  }

  updateNote(
      {required String title,
      required String notes,
      required String category,
      required DateTime date,
      required String id}) {
    FirebaseFirestore.instance.collection('Notes').doc(id).update(
        Notes(title: title, notes: notes, date: date, category: category)
            .toJson());
  }

  deleteNote({required String id}) {
    FirebaseFirestore.instance.collection('Notes').doc(id).delete();
  }
}
