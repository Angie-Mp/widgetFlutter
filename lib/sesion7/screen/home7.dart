import 'package:flutter/material.dart';

class Home7Screen extends StatelessWidget {
  // const Home7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 7'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2013/03/02/02/41/alley-89197_960_720.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Titulo Principal',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Subtitle Principal')
                    ],
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 255, 175, 16),
                ),
                const Text('41')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Column(
                    children: const [
                      Icon(
                        Icons.call,
                        color: Colors.lightBlue,
                      ),
                      Text(
                        'call',
                        style: TextStyle(color: Colors.lightBlue),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Column(
                    children: const [
                      Icon(
                        Icons.map,
                        color: Colors.lightBlue,
                      ),
                      Text(
                        'Route',
                        style: TextStyle(color: Colors.lightBlue),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Column(
                    children: const [
                      Icon(
                        Icons.share,
                        color: Colors.lightBlue,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(color: Colors.lightBlue),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              child: Text(
                'Flutter es un SDK de c??digo fuente abierto de desarrollo de aplicaciones m??viles creado por Google. Suele usarse para desarrollar interfaces de usuario para aplicaciones en Android, iOS y Web as?? como m??todo primario para crear aplicaciones para Google Fuchsia.??? Wikipedia',
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ],
      ),
    );
  }
}
