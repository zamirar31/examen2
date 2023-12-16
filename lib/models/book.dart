import 'package:flutter_examen2/models/villano.dart';

class Book {
  final String id;
  final String title;
  final String author;
  final String description;
  final List<Villain> villains;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.villains,
  });
}
