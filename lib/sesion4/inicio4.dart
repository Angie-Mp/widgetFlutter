import 'package:flutter/material.dart';

import '../DromDrow.dart';
import '../slider.dart';
import '../widgetsDemo.dart';
import 'checkbox.dart';
import 'emailpasswidget.dart';

class Inicio4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sesion 4'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ButtonWidget(
                text: 'email y password',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmailPassWidget()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                text: 'Check box',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CheckBoxs()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                text: 'Slider',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SliderWidget()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                text: 'DromDowButton',
                onPressed: () {
                  //  Navigator.push(context,
                  //    MaterialPageRoute(builder: (context) => DromDowButton()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
