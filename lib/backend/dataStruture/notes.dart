import 'dart:convert';

class Notes {
  final String title;
  final String notes;
  final DateTime date;
  final String category;
  Notes({
    required this.title,
    required this.notes,
    required this.date,
    required this.category,
  });

  Notes copyWith({
    String? title,
    String? notes,
    DateTime? date,
    String? category,
  }) {
    return Notes(
      title: title ?? this.title,
      notes: notes ?? this.notes,
      date: date ?? this.date,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'notes': notes,
      'date': date.millisecondsSinceEpoch,
      'category': category,
    };
  }

  factory Notes.fromMap(Map<String, dynamic> map) {
    return Notes(
      title: map['title'],
      notes: map['notes'],
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      category: map['category'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Notes.fromJson(String source) => Notes.fromMap(json.decode(source));
}
