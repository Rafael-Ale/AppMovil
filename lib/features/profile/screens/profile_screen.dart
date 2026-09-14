import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:test_2/features/profile/widgets/statistics_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: Text('Mi perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              radius: 100,
              child: Icon(Icons.person, size: 100),
            ),
            const Padding(padding: EdgeInsets.all(8.0)),
            Text(
              'Rafael Alejandro',
              style: TextStyle(
                fontSize: 30,
                foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(100, 20),
                    const Offset(150, 20),
                    <Color>[
                      Colors.orange,
                      Colors.black,
                    ],
                  ),
              ),
            ),
            Divider(
              height: 50,
              color: Colors.orange,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            StatisticsCard(
                  nombreEjercicio: 'Sentadillas',
                  subtitleEjercicio: '3 series x 15 reps completadas',
                ),
            StatisticsCard(
                  nombreEjercicio: 'Flexiones',
                  subtitleEjercicio: '3 series x 12 reps',
                ),
          ]
        ),
      ),
    );
  }
}