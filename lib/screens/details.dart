// lib/screens/book_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_examen2/models/book.dart';
import 'package:flutter_examen2/providers/provider.dart';
import 'package:provider/provider.dart';


class BookDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookProvider = Provider.of<BookDetailProvider>(context);
    final Book? selectedBook = bookProvider.selectedBook;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Libro'),
      ),
      body: selectedBook != null
          ? Column(
              children: [
                Text('Título: ${selectedBook.title}'),
                Text('Autor: ${selectedBook.author}'),
                Text('Villanos: ${selectedBook.villains.join(', ')}'),
              ],
            )
          : Center(
              child: Text('Selecciona un libro para ver los detalles.'),
            ),
    );
  }
}
