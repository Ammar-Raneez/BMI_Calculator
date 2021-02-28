import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color cardColor = Color(0xff1de33);
const Color footerColor = Color(0xffeb1555);
const Color activeCardColor = Color(0xff1d1e33);
const Color inactiveCardColor = Color(0xff111328);
const double footerHeight = 60.0;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                    color: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    iconContent: IconContent("MALE", FontAwesomeIcons.mars),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    }
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    iconContent: IconContent("FEMALE", FontAwesomeIcons.mars),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    }
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                color: selectedGender == Gender.male
                    ? activeCardColor
                    : inactiveCardColor,
                iconContent: IconContent("MALE", FontAwesomeIcons.mars),
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                }
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    iconContent: IconContent("MALE", FontAwesomeIcons.mars),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    }
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    iconContent: IconContent("MALE", FontAwesomeIcons.mars),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    }
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
