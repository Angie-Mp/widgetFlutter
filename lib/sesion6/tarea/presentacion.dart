import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Presentacion extends StatefulWidget {
  //const MyWidget({Key? key}) : super(key: key);

  @override
  State<Presentacion> createState() => _PresentacionState();
}

class _PresentacionState extends State<Presentacion> {
  //const MyWidget({Key? key}) : super(key: key);
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
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Presentacion',
          style:
              // GoogleFonts.lato(fontStyle: FontStyle.italic)
              TextStyle(fontSize: 18),
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(children: [
              SizedBox(
                height: 65,
              ),
              Container(
                  child: CircleAvatar(
                      radius: (52),
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/amp.jpg"),
                      ))),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nombre:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      ' Angie Michelle',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFff7bed)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Apellido:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      ' Mariscal Pomacaja',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFff7bed)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Edad:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      ' 22 años',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFff7bed)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                child: Column(
                  children: [
                    const Text(
                      'Contador',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      '$numero',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),

              ///////////////
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                        height: 30,
                        minWidth: 15,
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        onPressed: () => incrementarNum()),
                    ///////////////
                    MaterialButton(
                        height: 30,
                        minWidth: 15,
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Reset',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        onPressed: () => resetNum()),
                    ///////////////
                    MaterialButton(
                        height: 30,
                        minWidth: 15,
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        onPressed: () => disminuirNum()),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
