import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //only one assignment
  final Color color;
  final cardContent;
  final Function onPress;

  ReusableCard({this.color, this.cardContent, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardContent,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
