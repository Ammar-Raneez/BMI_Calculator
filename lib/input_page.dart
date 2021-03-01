import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/round_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  Expanded genderCard(Gender gender, IconData icon, String genderText) {
    return Expanded(
      child: ReusableCard(
          color: selectedGender == gender
              ? kActiveCardColor
              : kInactiveCardColor,
          cardContent: IconContent(genderText, icon),
          onPress: () {
            setState(() {
              selectedGender = gender;
            });
          }),
    );
  }

  Expanded weightAgeCard(String label, int val) {
    return Expanded(
      child: ReusableCard(
        cardContent: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              label,
              style: kLabelTextStyle,
            ),
            Text(
              val.toString(),
              style: kNumberTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        val--;
                      });
                    }),
                SizedBox(
                  width: 10.0,
                ),
                RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {
                      setState(() {
                        val++;
                      });
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                genderCard(Gender.male, FontAwesomeIcons.mars, "MALE"),
                genderCard(Gender.female, FontAwesomeIcons.venus, "FEMALE"),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardContent: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newHeight) {
                      setState(() {
                        height = newHeight.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                weightAgeCard("WEIGHT", weight),
                weightAgeCard("AGE", age),
              ],
            ),
          ),
          BottomButton(
            onTap: () => Navigator.pushNamed(context, "/results"),
            buttonTitle: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}