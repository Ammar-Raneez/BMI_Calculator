import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                        ? kActiveCardColor
                        : kInactiveCardColor,
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
                        ? kActiveCardColor
                        : kInactiveCardColor,
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
                    ? kActiveCardColor
                    : kInactiveCardColor,
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
                        ? kActiveCardColor
                        : kInactiveCardColor,
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
                        ? kActiveCardColor
                        : kInactiveCardColor,
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
            color: kFooterColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kFooterHeight,
          )
        ],
      ),
    );
  }
}
