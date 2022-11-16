import 'package:examen_p1_flutter/models/tarea.dart';
import 'package:flutter/material.dart';

class TareaDetalle extends StatelessWidget {
  final Tarea tarea;
  const TareaDetalle({super.key, required this.tarea});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 212, 216, 238),
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
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              child: Center(child: Image.network(tarea.url)),
            ),
            SizedBox(height: 20,),
            Text(tarea.descripcion),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(
                onPressed: ()=> Navigator.pop(context), 
                child: Text('Done')
              ),
            ),
          ]
        ),
      ),
    );
  }
}