import 'package:flutter/material.dart';
import 'package:test_2/features/home/screens/home_screen.dart';

//Punto de entrada de la app
void main() {
  runApp(const MyApp());
}

// Widget raíz de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker', // nombre interno de la App
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(), //Pantalla inicial
    );
  }
}

