import 'package:flutter/material.dart';

// Widget "tonto" (stateless) que solo muestra datos, sin lógica
// interna ni posibilidad de cambiar (no tiene botón de completar,
// no navega a ningún lado). Recibe todo ya armado desde afuera.
class ActivityCard extends StatelessWidget{
  final String title;         // Texto principal
  final String subtitle;      // Texto secundario
  final String trailingText;  // Texto a la derecha (ej: "3000 pasos")
  final IconData icon;        // Ícono a mostrar
  final Color iconColor;      // Color de ícono

  const ActivityCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailingText,
    required this.icon,
    required this.iconColor,
  });

@override
  Widget build(BuildContext context){
    return Card(
      elevation: 4,
      margin:const EdgeInsets.symmetric(vertical:8.0),
      child: ListTile(
        leading: Icon(icon, size:40, color: iconColor),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold) ),
        subtitle: Text(subtitle),
        trailing: Text(
          trailingText, 
          style:TextStyle(fontSize:16, fontWeight: FontWeight.bold)
          ),
        ),
      );
  }
}
