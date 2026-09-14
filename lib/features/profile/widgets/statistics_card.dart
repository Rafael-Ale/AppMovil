import 'package:flutter/material.dart';

class StatisticsCard extends StatelessWidget{
  final String nombreEjercicio;
  final String subtitleEjercicio;

  const StatisticsCard({
    super.key,
    required this.nombreEjercicio,
    required this.subtitleEjercicio,
  });

  @override
  Widget build(BuildContext context) {
  return Card(
    elevation: 4,
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    child: ListTile(
      title: Text(nombreEjercicio, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitleEjercicio),
    ),
  );
}
}
