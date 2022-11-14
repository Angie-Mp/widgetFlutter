import 'package:flutter/material.dart';
import 'package:flutter_app/sesion3/list.dart';
import 'package:flutter_app/sesion3/image.dart';
import 'package:flutter_app/sesion3/animacion.dart';

import 'menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesion3 Flutter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Menu(),
    );
  }
}
