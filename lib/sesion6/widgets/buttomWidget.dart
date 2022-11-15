import 'package:flutter/material.dart';

class CustomButtomWidget extends StatelessWidget {
  final Function aumentar;
  final Function disminuir;
  final Function reset;

  const CustomButtomWidget(
      {Key? key,
      required this.aumentar,
      required this.disminuir,
      required this.reset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          heroTag: Text('btn1'),
          tooltip: 'aumentar',
          child: Icon(Icons.add),
          onPressed: () => aumentar(),
        ),
        FloatingActionButton(
          heroTag: Text('btn2'),
          tooltip: 'reset',
          child: Icon(Icons.reset_tv_outlined),
          onPressed: () => reset(),
        ),
        FloatingActionButton(
          heroTag: Text('btn3'),
          tooltip: 'disminuir',
          child: Icon(Icons.remove_circle_outline_outlined),
          onPressed: () => disminuir(),
        )
      ],
    );
  }
}
