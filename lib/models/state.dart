
import 'dart:math';

import 'package:examen_p1_flutter/models/tarea.dart';
import 'package:flutter/cupertino.dart';

class StateGlobal with ChangeNotifier{
  final List<Tarea> _tareas = [
    Tarea(id:1,titulo: "Examen Flutter", materia: "App Movil 2", descripcion: "El exámen consiste en implementar lo apredido hasta el momento.", url:"https://placekitten.com/${Random().nextInt(100) + 150}/${Random().nextInt(100) + 150}"),
    Tarea(id:2,titulo: "Tarea de newthon raphson", materia: "Métodos numéricos", descripcion: "Encontrar raíses por el método de newthon raphson.", url:"https://placekitten.com/${Random().nextInt(100) + 150}/${Random().nextInt(100) + 150}"),
    Tarea(id:3,titulo: "Tarea de la secante", materia: "Métodos numéricos", descripcion: "Encontrar raíses por el método de la secante.", url:"https://placekitten.com/${Random().nextInt(100) + 150}/${Random().nextInt(100) + 150}"),
    Tarea(id:4,titulo: "Tarea de bisección", materia: "Métodos numéricos", descripcion: "Encontrar raíses por el método de bisección.", url:"https://placekitten.com/${Random().nextInt(100) + 150}/${Random().nextInt(100) + 150}"),
    Tarea(id:5,titulo: "Examen Flutter", materia: "App Movil 2", descripcion: "El exámen consiste en implementar lo apredido hasta el momento.", url:"https://placekitten.com/${Random().nextInt(100) + 150}/${Random().nextInt(100) + 150}"),
    Tarea(id:6,titulo: "Tarea de newthon raphson", materia: "Métodos numéricos", descripcion: "Encontrar raíses por el método de newthon raphson.",url:"https://placekitten.com/${Random().nextInt(100) + 150}/${Random().nextInt(100) + 150}"),
    Tarea(id:7,titulo: "Tarea de la secante", materia: "Métodos numéricos", descripcion: "Encontrar raíses por el método de la secante.", url:"https://placekitten.com/${Random().nextInt(100) + 150}/${Random().nextInt(100) + 150}"),
    Tarea(id:8,titulo: "Tarea de bisección", materia: "Métodos numéricos", descripcion: "Encontrar raíses por el método de bisección.", url:"https://placekitten.com/${Random().nextInt(100) + 150}/${Random().nextInt(100) + 150}"),
  ];

  List<Tarea> get tareas => _tareas;
  
}