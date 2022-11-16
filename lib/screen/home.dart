import 'package:examen_p1_flutter/models/tarea.dart';
import 'package:examen_p1_flutter/screen/detail.dart';
import 'package:examen_p1_flutter/widgets/tareaWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/state.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void verDetalle(Tarea tarea, BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => TareaDetalle(tarea: tarea)));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examen Flutter'),
      ),
      body: Container(
        child: ListView(
          children: context.read<StateGlobal>().tareas
            .map((x) => TareaWidget(tarea: x, onTap: verDetalle))
            .toList(),
        ),
      ),
    );
  }
}