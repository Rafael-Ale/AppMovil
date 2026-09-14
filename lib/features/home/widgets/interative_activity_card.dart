import 'package:flutter/material.dart';
import 'package:test_2/features/details/screens/detail_screen.dart';
import 'package:test_2/features/home/models/activity.dart';

//Widget que representa una tarjeta de actividad en la lsita
//Es StatefulWidget porque necesita recordar si el usuario
//la marcó como "completada" o no "isCompleted"
class InteractiveActivityCard extends StatefulWidget{
  //Recibe la actividad a mostrar (título, icono, subtítulo, etc.)
  final Activity activiy;

  const InteractiveActivityCard({
    super.key,
    required this.activiy, //Obligatorio: no tiene sentido la tarjeta sin datos
  });

  @override
  State<InteractiveActivityCard> createState() => _InteractiveActivityCardState(); 
}

class _InteractiveActivityCardState extends State<InteractiveActivityCard>{
  //Estado local: controla si esta tarjeta específica está completada
  //Empieza en false (no completada)
  bool isCompleted = false;

  @override
    Widget build(BuildContext context){
      return Card(
        elevation: 4, //Sombra de la tarjeta (Efecto de elevación)
        margin: const EdgeInsets.symmetric(vertical:8.0), //Espacio arriba y abajo entre tarjetas

        //Cambia el color de fondo dinámicamente segpun el estado, verde clarito si está completada, blanco si no
        color: isCompleted ? Colors.green.shade100 : Colors.white,
        child: ListTile(
          //Icono a la izquierda, tomado del modelo activity
          leading: Icon (widget.activiy.icon, size:40, color: widget.activiy.iconColor),
          //Título de la actividad
          title: Text(widget.activiy.title),
          //Subtítulo dinámico: si esta completada, muestra un mensaje fijo: si no, muestra el subtítulo original de la actividad
          subtitle: Text(isCompleted ? '¡Completado!' : widget.activiy.subtitle),
          //Al tocar la tarjeta (no el botón), navega a la pantalla de detalle
          onTap: (){
            Navigator.push(context, 
            MaterialPageRoute(
              builder: (context) => DetailScreen(activity: widget.activiy) 
              ));
          },
          //Ícono a la derecha, funciona como botón de "marcar/desmarcar"
          trailing: IconButton(
            onPressed: (){
              //SetState() le dice a Flutter, "algo cambió, vuelve a dibujar"
              setState(() {
                isCompleted = !isCompleted; //Inverte el valor actual (true <-> false)
              });

            },  
            icon: Icon(
              //Cambia el ícono según el estado
              isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
              color: isCompleted ? Colors.green : Colors.grey,
            ) 
          ),
        ),
      );
    }
}
