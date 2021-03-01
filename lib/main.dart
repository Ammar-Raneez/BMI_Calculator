import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Color(0xff0a0e21),
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 13.0),
          thumbColor: Color(0xffeb1555),
          activeTrackColor: Colors.white,
          overlayColor: Color(0x29eb1555),
          inactiveTrackColor: Color(0xff8d8e98),
          trackHeight: 0.5,
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => InputPage(),
        ResultsPage.routeName: (context) => ResultsPage()
      },
    );
  }
}
