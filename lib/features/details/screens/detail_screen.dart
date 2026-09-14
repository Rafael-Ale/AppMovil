import 'package:flutter/material.dart';
import 'package:test_2/features/home/models/activity.dart';

// Pantalla de detalle. StatelessWidget porque solo muestra
// información que recibe desde afuera, no maneja estado propio.
class DetailScreen extends StatelessWidget{
  // Recibe la actividad completa (title, subtitle, icon, etc.)
  // desde la pantalla anterior, para poder mostrar sus datos.
  final Activity activity;
  const DetailScreen({super.key, required this.activity});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // El título del AppBar usa directamente el título de la actividad
      // recibida, así que cambia dinámicamente según qué tarjeta tocaste.
      appBar: AppBar(title: Text(activity.title)),
      body: Center(
        child: Column(
          // mainAxisSize por defecto es "max", así que Column ocupa
          // todo el alto disponible y Center la centra en ese espacio.
          children: [
            Text('Detalles de la actividad'), // Texto fijo (placeholder)
            ElevatedButton(
              // Navigator.pop() cierra esta pantalla y regresa
              // a la anterior (la lista de actividades).
              onPressed: () => Navigator.pop(context), 
              child: Text('Volver'))
          ],
        ),
      ),
    );
  }
}