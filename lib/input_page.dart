import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color cardColor = Color(0xff1de33);
const Color footerColor = Color(0xffeb1555);
const double footerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: footerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: footerHeight,
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  //only one assignment
  final Color color;

  ReusableCard(this.color);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
