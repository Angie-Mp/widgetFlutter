import 'package:flutter/material.dart';
import 'package:flutter_app/sesion7/widget/plantillaTarea.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

import '../widget/plantilla screen.dart';

class ScrollTarea extends StatefulWidget {
  const ScrollTarea({Key? key}) : super(key: key);

  get testingController => null;

  @override
  State<ScrollTarea> createState() => _ScrollTareaState();
}

class _ScrollTareaState extends State<ScrollTarea> {
  late Controller controller;
  late final Controller? testingController;

  @override
  initState() {
    controller = widget.testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });

    // controller.jumpToPosition(4);
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }

  final List<dynamic> data = [
    {
      'img':
          'https://cdn.pixabay.com/photo/2017/02/25/07/47/china-2097075_960_720.jpg',
      'title': 'LA GRAN MURALLA (CHINA)',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2020/03/26/22/15/petra-4971956_960_720.jpg',
      'title': 'PETRA (JORDANIA)',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2018/07/20/14/02/rome-3550739_960_720.jpg',
      'title': 'EL COLISEO (ITALIA)',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/11/08/01/01/mexico-1032966_960_720.jpg',
      'title': 'CHICHEN ITZA (MÉXICO)',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2016/01/13/17/48/machupicchu-1138641_960_720.jpg',
      'title': 'MACHU PICCHU (PERÚ)',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2020/01/31/21/25/brazil-4809011_960_720.jpg',
      'title': 'EL CRISTO REDENTOR (BRASIL)',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2018/09/04/16/48/taj-mahal-3654227_960_720.jpg',
      'title': 'TAJ MAHAL (INDIA)',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TikTokStyleFullPageScroller(
        contentSize: data.length,
        swipePositionThreshold: 0.2,
        swipeVelocityThreshold: 2000,
        animationDuration: const Duration(milliseconds: 400),
        controller: controller,
        builder: (BuildContext context, int index) {
          final dato = data[index];
          return PlantillaTarea(
            img: dato['img'],
            title: dato['title'],
          );
        },
      ),
    );
  }
}
