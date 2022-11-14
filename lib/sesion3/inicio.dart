import 'package:flutter/material.dart';

import 'animacion.dart';
import 'image.dart';
import 'list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home Flutter',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: ListView(
          children: [
            Container(
              child: Image.asset('assets/lista.png'),
              height: 150,
              width: 150,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Color(0xFFeae14b),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Lista de Componentes',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListTileDemo()));
                }),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: Image.asset('assets/galeria.png'),
              height: 150,
              width: 150,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Color(0xFFeae14b),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Imagen Favorita',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ImagesDemo()));
                }),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: Image.asset('assets/click.png'),
              height: 150,
              width: 150,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Color(0xFFeae14b),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Animacion',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AnimacionDemo()));
                }),
          ],
        ),
      ),
    );
  }
}
