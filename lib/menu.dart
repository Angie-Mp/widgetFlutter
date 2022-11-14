import 'package:flutter/material.dart';
import 'package:flutter_app/sesion3/inicio.dart';
import 'package:flutter_app/sesion4/inicio4.dart';
import 'package:flutter_app/sesion5/columnTarea.dart';
import 'package:flutter_app/sesion5/scrollwidget.dart';
import 'package:flutter_app/widgetsDemo.dart';

class Menu extends StatelessWidget {
  //const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'Sesiones',
            style: TextStyle(fontSize: 18),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            ButtonWidget(
              text: ('sesion3'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            const SizedBox(
              height: 25,
            ),
            ButtonWidget(
              text: ('sesion4'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Inicio4()));
              },
            ),
            const SizedBox(
              height: 25,
            ),
            ButtonWidget(
              text: ('sesion5'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Scrollwidget()));
              },
            ),
            const SizedBox(
              height: 25,
            ),
            ButtonWidget(
              text: ('sesion5-tarea'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ColumnTarea()));
              },
            )
          ]),
        ));
  }
}
