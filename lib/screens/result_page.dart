import 'package:bmi_calculator_app/contents/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constents.dart';
import 'package:flutter/cupertino.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.calculate, this.status, this.message, this.height, this.weight, this.age, this.gender});

  final String calculate;
  final String status;
  final String message;
  final String height;
  final String weight;
  final String age;
  final String gender;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate BMI'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Text(
                      'Your Result',
                      style: yourResultText,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'height:' + height +'cm',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'weight:' + weight +'kg',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'age:' + age,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(0xFF1C1B2F),
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    gender,
                    style: normalTextStyle,
                  ),
                  Text(
                    status,
                    style: normalTextStyle,
                  ),
                  Text(
                    calculate,
                    style: largeTextStyle,
                  ),
                  Text(
                    message,
                    style: normalTextStyle,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RECALCULATE',
                  style: calculateButtonStyle,
                ),
              ),
              color: Colors.pink,
              height: 50.0,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 5.0),
            ),
          ),
        ],
      ),
    );
  }
}
