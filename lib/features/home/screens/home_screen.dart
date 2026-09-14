import 'package:flutter/material.dart';
import 'package:test_2/features/home/widgets/interative_activity_card.dart';
import 'package:test_2/features/home/models/activity.dart';
import 'package:test_2/features/profile/screens/profile_screen.dart';

//Punto de entrada de la App. Flutter llama a runApp() para "montar" el widget raíz (MyApp) en la pantall
void main() {
  runApp(const MyApp());
}

//Widget raíz de la aplicación. Es un StatelessWidget porque no necesita cambiar su propio estado, solo configura el MaterialApp.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker', // nombre interno de la App (Aparece en el multitarea de Android)
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(), //Primera pantalla que se muestra
    );
  }
}

//Pantalla principal. Es un StatefulWidget porque su contenido (la lista de actividades) puede cambiar con el tiempo
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//Clase que guarda el "estado" de MyHomePage: los datos que pueden cambiar y que, al hacerlo, deben redibujar la pantalla
class _MyHomePageState extends State<MyHomePage> {
  //Lista de actividades que se mostrará en la pantalla. Cada Activity es un modelo de datos (definido en activity.dart)
  //con título, subtítulo, texto final e ícono
  List<Activity> activityList = [
    Activity(
      title: "Pasos diarios", 
      subtitle: "", 
      trailingText: "", 
      icon: Icons.import_contacts, 
      iconColor: Colors.black
    ),
    Activity(
      title: "Rutina de fuerza",       
      subtitle: "", 
      trailingText: "", 
      icon: Icons.import_contacts, 
      iconColor: Colors.black),
    Activity(
      title: "Sesion diaria",
      subtitle: "", 
      trailingText: "", 
      icon: Icons.import_contacts, 
      iconColor: Colors.black),
    Activity(
      title: "Pasos diarios",
      subtitle: "", 
      trailingText: "", 
      icon: Icons.import_contacts, 
      iconColor: Colors.black),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra superior de la pantalla
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white, //Color de texto /íconos del AppBar
        title: Text("Panel de actividad física"),
        actions : [
          IconButton(icon: const Icon(Icons.person),
          tooltip: 'Mi perfil',
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen())
            );
          },)
        ]
      
      ),
      body: 
        Padding(padding: EdgeInsets.all(16.0), //Margen alrededor de toda la lista
        child: ListView.builder(
          //ListView.builder construye los elementos "baja demanda", ideal para listas largas porque no crea todo de una vez
          padding: EdgeInsets.all(8.0),
          itemCount: activityList.length, //Cuántos elementos tiene la lista
          itemBuilder: (
            (context, index) {
              //Se ejecuta por cada elemento visible de la lsita
              final currentActivity = activityList[index];
              //Se crea una tarjeta interactiva con los datos de esa actividad
              return InteractiveActivityCard(activiy: currentActivity);
            }
         ),
        )
      )
    );
  }
}


        // child: Column(
        //   children: [
        //     Text("Resumen de hoy", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,)),
        //     InteractiveActivityCard(
        //       title: "Pasos Diarios",
        //       subtitle: "Meta: 10,000 pasos",
        //       trailingText: "7,450",
        //       icon: Icons.directions_walk,
        //       iconColor: Colors.blueGrey,
        //     ),
        //     InteractiveActivityCard(
        //       title: "Rutina de fuerza",
        //       subtitle: "Tren Superior / Pesas",
        //       trailingText: "Hecho",
        //       icon: Icons.fitness_center,
        //       iconColor: Colors.black,
        //     ),
        //     InteractiveActivityCard(
        //       title: "Natación",
        //       subtitle: "Meta: 10,000 pasos",
        //       trailingText: "750",
        //       icon: Icons.pool,
        //       iconColor: Colors.blue,
        //     ),
        //     // InteractiveActivityCard(title: "Pasos diarios"),
        //     // InteractiveActivityCard(title: "Rutina de fuerza"),
        //     // InteractiveActivityCard(title: "Natación"),
        //   ],
        // )