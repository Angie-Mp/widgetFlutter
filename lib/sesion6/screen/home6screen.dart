import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/buttomWidget.dart';

class Home6Screm extends StatefulWidget {
  //const MyWidget({Key? key}) : super(key: key);

  @override
  State<Home6Screm> createState() => _Home6ScremState();
}

class _Home6ScremState extends State<Home6Screm> {
  int numero = 0;
  void incrementarNum() {
    setState(() {
      numero++;
    });
  }

  void disminuirNum() {
    setState(() {
      numero--;
    });
  }

  void resetNum() {
    setState(() {
      numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sesion 6',
          //style: GoogleFonts.rubikBubbles(fontSize: 35)
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contador'),
            Text('$numero'),
          ],
        ),
      ),
      floatingActionButton: CustomButtomWidget(
        aumentar: () => incrementarNum(),
        disminuir: () => disminuirNum(),
        reset: () => resetNum(),
      ),
    );
  }
}
