import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  double _currentSliderValue = 20;

  double _inicio = 0;
  double _fin = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Slider(
            value: _currentSliderValue,
            max: 100,
            divisions: 5,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          ///////////////
          RangeSlider(
            min: 0.0,
            max: 100.0,
            activeColor: Colors.amber,
            inactiveColor: Colors.red,
            values: RangeValues(_inicio, _fin),
            onChanged: ((value) {
              setState(() {
                _inicio = value.start;
                _fin = value.end;
              });
            }),
          )
        ]),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
