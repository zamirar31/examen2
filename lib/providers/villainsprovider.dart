import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examen2/models/villano.dart'; // Importa el modelo Villain

class VillainsProvider with ChangeNotifier {
  List<Villain> _villains = []; // Lista de villanos

  // Método para obtener la lista de villanos
  List<Villain> get villains {
    return [..._villains]; // Devuelve una copia de la lista de villanos
  }

  // Método para agregar un villano a la lista
  void addVillain(Villain villain) {
    _villains.add(villain);
    notifyListeners(); // Notifica a los oyentes (widgets) que los datos han cambiado
  }

  // Aquí podrías implementar más métodos para actualizar, eliminar o gestionar villanos

  // Método para cargar inicialmente los datos de villanos desde una fuente externa (API, base de datos, etc.)
  Future<void> fetchVillains() async {
    // Lógica para cargar los datos de villanos desde una fuente externa
    // Por ejemplo, puedes realizar una solicitud HTTP para obtener los datos del API de Stephen King.
    // Luego, puedes agregar los villanos a la lista _villains utilizando addVillain().

    // Notifica a los oyentes (widgets) que los datos han cambiado después de cargarlos.
    notifyListeners();
  }
}
