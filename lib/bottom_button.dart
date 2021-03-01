
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({this.onTap, this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 25),
          ),
        ),
        color: kFooterColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kFooterHeight,
      ),
    );
  }
}