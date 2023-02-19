import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  @override
  State<SliderScreen> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderScreen> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(children: [
        Text(_currentSliderValue.toString()),
        Slider(
          value: _currentSliderValue,
          max: 100,
          divisions: 100,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ]),
    ));
  }
}
