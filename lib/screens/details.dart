// lib/screens/book_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_examen2/models/book.dart';

class BookDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final book = ModalRoute.of(context)!.settings.arguments as Book;

    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Column(
        children: [
          Text('Autor: ${book.author}'),
          Text('Descripción: ${book.description}'),
          Text('Villanos Asociados:'),
          for (final villain in book.villains)
            ListTile(
              title: Text(villain.name),
              subtitle: Text(villain.description),
            ),
        ],
      ),
    );
  }
}
