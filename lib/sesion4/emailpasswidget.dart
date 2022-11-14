import 'package:flutter/material.dart';

class EmailPassWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email y Pass'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(
                //tipo de teclado
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.red),
                        borderRadius: BorderRadius.circular(50)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.red),
                        borderRadius: BorderRadius.circular(50)),
                    filled: true,
                    fillColor: Colors.amber,
                    hintText: 'Correo Electronico',
                    hintStyle: const TextStyle(color: Colors.blue),
                    suffixIcon: const Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                    contentPadding: const EdgeInsets.all(10))),
            ///////////////////////////
            ///
            TextFormField(
                obscureText: true,
                //tipo de teclado
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.red),
                        borderRadius: BorderRadius.circular(50)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.red),
                        borderRadius: BorderRadius.circular(50)),
                    filled: true,
                    fillColor: Colors.amber,
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.blue),
                    suffixIcon: const Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                    contentPadding: const EdgeInsets.all(15))),
          ],
        ),
      ),
    );
  }
}
