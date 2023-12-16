import 'package:flutter/material.dart';
import 'package:flutter_examen2/providers/provider.dart';
import 'package:flutter_examen2/screens/books_screen.dart';
import 'package:flutter_examen2/screens/details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BookListProvider()),
        ChangeNotifierProvider(create: (context) => BookDetailProvider()),
      ],
      child: MaterialApp(
        title: 'Stephen King Books',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/book_list', // Ruta inicial
        routes: {
          '/book_list': (context) => BookListScreen(),
          '/book_detail': (context) => BookDetailScreen(),
        },
      ),
    );
  }
}
