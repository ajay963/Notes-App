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

  Map<String, Object?> toJson() {
    return {
      'title': title,
      'notes': notes,
      'date': date.millisecondsSinceEpoch,
      'category': category,
    };
  }

  Notes.fromJson(Map<String, Object?> json)
      : this(
          title: json['title']! as String,
          notes: json['notes']! as String,
          date: json['date']! as DateTime,
          category: json['category']! as String,
        );
}

class MenuItems {
  List<String> items = ['Work', 'life', 'Random'];
}
