// lib/screens/books_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_examen2/providers/provider.dart';
import 'package:provider/provider.dart';



class BookListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookProvider = Provider.of<BookListProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Libros de Stephen King'),
      ),
      body: FutureBuilder(
        future: bookProvider.fetchBooks(), // Llama al método fetchBooks
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            // Muestra la lista de libros
            return ListView.builder(
              itemCount: bookProvider.books.length,
              itemBuilder: (context, index) {
                final book = bookProvider.books[index];
                return ListTile(
                  title: Text(book.title),
                  onTap: () {
                    Navigator.pushNamed(context, '/book_detail', arguments: book);
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}