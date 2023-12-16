import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examen2/models/book.dart';
import 'package:flutter_examen2/services/libreria.dart';

class BookListProvider extends ChangeNotifier {
  List<Book> books = [];
  final StephenKingApiService apiService = StephenKingApiService(); // Instancia del servicio

  Future<void> fetchBooks() async {
    try {
      // Realiza la solicitud al API y obtén la lista de libros
      final List<Book> fetchedBooks = await apiService.fetchBooks();
      
      // Actualiza la lista de libros en el provider
      books = fetchedBooks;
      notifyListeners();
    } catch (e) {
      // Maneja errores si la solicitud al API falla
      print('Error fetching books: $e');
    }
  }
}

class BookDetailProvider extends ChangeNotifier {
  Book? selectedBook;

  void selectBook(Book book) {
    selectedBook = book;
    notifyListeners();
  }
}