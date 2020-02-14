import 'package:bmi_calculator_app/screens/input_page.dart';
import 'package:flutter/material.dart';

import '../constents.dart';

class GestureDetectors extends StatelessWidget {
  const GestureDetectors({
    Key key,
    @required this.height,
    @required this.weight,
    @required this.age,
    @required this.gender,
    @required this.onTap,
  }) : super(key: key);

  final int height;
  final int weight;
  final int age;
  final Gender gender;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            'CALCULATE',
            style: calculateButtonStyle,
          ),
        ),
        color: Colors.pink,
        height: 45.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 5.0),
      ),
    );
  }
}