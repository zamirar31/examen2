// lib/screens/books_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_examen2/providers/provider.dart';
import 'package:provider/provider.dart';

class BooksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final booksProvider = Provider.of<BooksProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Libros de Stephen King'),
      ),
      body: ListView.builder(
        itemCount: booksProvider.books.length,
        itemBuilder: (ctx, index) {
          final book = booksProvider.books[index];
          return ListTile(
            title: Text(book.title),
            onTap: () {
              // Navegar a la pantalla de detalles del libro
              Navigator.of(context).pushNamed('/book-detail', arguments: book);
            },
          );
        },
      ),
    );
  }
}
