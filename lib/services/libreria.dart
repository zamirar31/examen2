import 'package:dio/dio.dart';
import 'package:flutter_examen2/models/book.dart';

class StephenKingApiService {
  final Dio dio = Dio();

  Future<List<Book>> fetchBooks() async {
    try {
      final response = await dio.get('https://stephen-king-api.onrender.com/books');
      if (response.statusCode == 200) {
        final List<Map<String, dynamic>> booksData = List<Map<String, dynamic>>.from(response.data);
        
        // Mapea los mapas a objetos Book
        final List<Book> books = booksData.map((bookData) => Book(
          title: bookData['title'],
          author: bookData['author'],
          villains: List<String>.from(bookData['villains']),
        )).toList();
        
        return books;
      } else {
        throw Exception('Failed to fetch books');
      }
    } catch (e) {
      throw Exception('Failed to fetch books');
    }
  }
}
