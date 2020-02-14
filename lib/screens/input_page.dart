import 'package:bmi_calculator_app/contents/gestur_detector.dart';
import 'package:bmi_calculator_app/contents/round_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constents.dart';
import '../contents/icon_content.dart';
import '../contents/reusable_card.dart';
import 'result_page.dart';
import '../final.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.Male;
  int height = 180;
  int weight = 60;
  int age = 19;

  Color maleCardColor = activeCardColor;
  Color femaleCardColor = inactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      colour: gender == Gender.Male
                          ? activeCardColor
                          : inactiveCardColor,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        gender = Gender.Male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      colour: gender == Gender.Female
                          ? activeCardColor
                          : inactiveCardColor,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        gender = Gender.Female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1C1B2F),
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Height',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF7D7C89),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: labelTextStyle,
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Colors.yellow,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 8.0),
                            overlayColor: Colors.purple.withAlpha(32),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 14.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            inactiveColor: Color(0xFF9898A4),
                            activeColor: Color(0xFFEA114B),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                            onChangeStart: (double startValue) {},
                            onChangeEnd: (double newValue) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1C1B2F),
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF7D7C89),
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: labelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1C1B2F),
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF7D7C89),
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: labelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetectors(
            height: height,
            weight: weight,
            age: age,
            gender: gender,
            onTap: () {
              CalculateBrain cal = CalculateBrain(
                height: height,
                weight: weight,
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            calculate: cal.getCalculate(),
                            status: cal.getStatus(),
                            message: cal.getMessage(),
                            height: height.toString(),
                            weight: weight.toString(),
                            age: age.toString(),
                            gender: gender.toString(),
                          )));
            },
          ),
        ],
      ),
    );
  }
}
