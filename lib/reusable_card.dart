import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //only one assignment
  final Color color;
  final IconContent iconContent;
  final Function onPress;

  ReusableCard({this.color, this.iconContent, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: iconContent,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
