// Importacion de flutter
import 'package:flutter/material.dart';

// Importaciones propias
import 'package:counter_app/screens/home_screen.dart';

// Metodo principal que se ejecuta al inicio
void main() {
  runApp(const MyApp());
}

// Creacion de widget app (todos los widgets son clases)
class MyApp extends StatelessWidget {
  // Constructor de la clase MyApp
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
