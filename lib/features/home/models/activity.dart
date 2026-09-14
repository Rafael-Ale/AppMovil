import 'package:flutter/material.dart';

// Se importa material.dart solo porque se necesitan los tipos
// IconData y Color, que son parte del paquete de Flutter/Material.

// Clase modelo (o "entidad"): no es un widget, no dibuja nada en
// pantalla. Solo representa datos: la estructura de "una actividad".
class Activity{
  final String title;
  final String subtitle;
  final String trailingText;
  final IconData icon;
  final Color iconColor;

  // Constructor con parámetros nombrados y obligatorios.
  // "required" significa que NO puedes crear un Activity sin
  // especificar cada uno de estos valores.
  Activity({
    required this.title,
    required this.subtitle,
    required this.trailingText,
    required this.icon,
    required this.iconColor,
  });
}