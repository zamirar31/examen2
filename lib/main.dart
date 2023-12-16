import 'package:flutter/material.dart';
import 'package:flutter_examen/screens/books_screen.dart'; // Importa la pantalla BooksScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define las rutas de navegación
      routes: {
        '/': (ctx) => BooksScreen(), // Ruta para BooksScreen
        // Agrega más rutas aquí si es necesario
      },
    );
  }
}