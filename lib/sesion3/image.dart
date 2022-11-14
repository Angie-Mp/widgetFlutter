import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spy x Family'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
        child: SizedBox(
            width: double.infinity,
            child: FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: AssetImage('assets/spy.jpg'))),
      ),
    );
  }
}
