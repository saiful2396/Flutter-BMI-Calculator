import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main(){
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        //0xFF use for custom color selection supported
        primaryColor: Color(0xFF0C0F1E),
        scaffoldBackgroundColor: Color(0xFF0C0F1E),
      ),
      home: InputPage(),
    );
  }
}

