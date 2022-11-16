import 'package:flutter/material.dart';

class PlantillaScreen extends StatelessWidget {
  //const MyWidget({Key? key}) : super(key: key);
  final String? img;
  final String? title;
  final String? subtitle;
  final String? content;

  const PlantillaScreen(
      {Key? key, this.img, this.title, this.subtitle, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Image.network(
              '$img',
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
                    children: [
                      Text(
                        '$title',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('$subtitle'),
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
          Padding(
            padding: EdgeInsets.all(10.0),
            child: SizedBox(
              child: Text(
                '$content',
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ],
      ),
    );
  }
}
