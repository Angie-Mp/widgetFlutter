import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  //const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Componentes',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: const [
          SizedBox(
            height: 10,
          ),
          Text(
            'MacOs Catalina',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            color: Color(0xFFeae14b),
            child: ListTile(
              title: Text('Memoria Ram'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/uno.jpg'),
              ),
              subtitle: Text('16 GB 1600 MHz DDR3'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            color: Color(0xFFffffb9),
            child: ListTile(
              title: Text('Memoria SSD'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/dos.jpeg'),
              ),
              subtitle: Text('500 GB Unidad de estado sólido de SATA'),
            ),
          ),
          Card(
            color: Color(0xFFeae14b),
            child: ListTile(
              title: Text('Procesador'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/tres.webp'),
              ),
              subtitle: Text('2.5 GHz Intel Core i5 de dos núcleos'),
            ),
          ),
          Card(
            color: Color(0xFFffffb9),
            child: ListTile(
              title: Text('Ventilador'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/cuatro.png'),
              ),
            ),
          ),
          Card(
            color: Color(0xFFeae14b),
            child: ListTile(
              title: Text('Parlante'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/cinco.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
