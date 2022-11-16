import 'package:examen_p1_flutter/models/state.dart';
import 'package:examen_p1_flutter/screen/detail.dart';
import 'package:flutter/material.dart';

import '../models/tarea.dart';

class TareaWidget extends StatelessWidget {
  final Tarea tarea;
  final Function onTap;

  const TareaWidget({super.key, required this.tarea, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(tarea, context),
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 171, 181, 241),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tarea.titulo,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            Text(
              tarea.materia,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400
              ),
            )
          ],
        )
      ),
    );
  }
}