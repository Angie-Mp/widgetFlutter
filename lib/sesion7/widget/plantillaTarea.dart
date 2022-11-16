import 'package:flutter/material.dart';

class PlantillaTarea extends StatelessWidget {
  // const Home7Screen({super.key});
  final String? img;
  final String? title;

  const PlantillaTarea({Key? key, this.img, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        title: const Text('Sesion 7'),
        centerTitle: true,
      ),*/
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 430,
            child: Image.network(
              '$img',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Lets explore ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                ),
                const Text(
                  'the world ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  '$title',
                  style: TextStyle(fontSize: 12, color: Color(0xFF7C7C7C)),
                ),
                const SizedBox(
                  height: 44,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 160,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color(0xFFFF8242),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'Get Started',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ]),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
