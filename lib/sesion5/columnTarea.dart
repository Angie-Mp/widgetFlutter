import 'dart:ffi';

import 'package:flutter/material.dart';

class ColumnTarea extends StatelessWidget {
  //const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descripcion'),
        centerTitle: true,
      ),
      body: Row(children: [
        Expanded(
          flex: 2,
          child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/fondo5.jpg'),
                fit: BoxFit.cover,
              )),
              height: double.infinity,
              // color: Color(0xFFf6abc6),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: CircleAvatar(
                            radius: (52),
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset("assets/amp.jpg"),
                            ))),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      'Angie',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF9c0c5f)),
                    ),
                    const Text(
                      'Mariscal',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF9c0c5f)),
                    ),
                    const Text(
                      'Pomacaja',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF9c0c5f)),
                    ),
                  ],
                ),
              )),
        ),
        Expanded(
          child: Container(
              height: double.infinity,
              color: Color(0xFFf8d9ed),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Edad:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color(0xFF9c0c5f)),
                  ),
                  Text(
                    '22 años',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color(0xFF9c0c5f)),
                  ),
                ],
              )),
        ),
      ]),
    );
  }
}
