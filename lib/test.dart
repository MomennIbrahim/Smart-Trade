import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color Changing Slider'),
        ),
        body: Center(
          child: ColorChangingSlider(),
        ),
      ),
    );
  }
}

class ColorChangingSlider extends StatefulWidget {
  const ColorChangingSlider({super.key});

  @override
  _ColorChangingSliderState createState() => _ColorChangingSliderState();
}

class _ColorChangingSliderState extends State<ColorChangingSlider> {
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: 300,
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
              colors: [
                Colors.red,
                Colors.yellow,
                Colors.green,
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Slider(
          value: _sliderValue,
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
            });
          },
        ),
      ],
    );
  }
}
