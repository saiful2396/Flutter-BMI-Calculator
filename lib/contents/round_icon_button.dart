import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({this.icon, this.onPress});
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,

      constraints: BoxConstraints.tightFor(
        height: 55.0,
        width: 55.0,
      ),
      fillColor: Color(0xFF323244),
      shape: CircleBorder(),
    );
  }
}