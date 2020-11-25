import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1DE33);
const bottomContainerColor = Color(0xFF1DE33);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

const maleSignIcon = Icon(
  FontAwesomeIcons.mars,
  size: 80.0,
);
const femaleSignIcon = Icon(
  FontAwesomeIcons.venus,
  size: 80.0,
);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  //1 = male, 2 = female
  void updateColour(Gender gelen) {
    //male card pressed
    if (gelen == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    //female card selected
    if (gelen == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        renk: selectedGender == Gender.male
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: IconContent(
                          myText: 'MALE',
                          myIcon: maleSignIcon,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        renk: selectedGender == Gender.female
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: IconContent(
                          myText: 'FEMALE',
                          myIcon: femaleSignIcon,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                renk: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      renk: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      renk: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
