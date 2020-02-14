import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour,this.childCard});
  final Color colour;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(8.0),
      ),

      height: 200.0,
      width: 170.0,
    );
  }
}