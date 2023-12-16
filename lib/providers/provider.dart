import 'package:flutter/material.dart';
import 'package:flutter_examen2/models/book.dart';

class BooksProvider extends ChangeNotifier {
  List<Book> _books = [];

  List<Book> get books => _books;

  void setBooks(List<Book> books) {
    _books = books;
    notifyListeners();
  }
}