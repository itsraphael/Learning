import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.black54,
          ),
        ),
        scaffoldBackgroundColor: Colors.blueAccent,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.red.shade400,
          primary: Colors.black45,
          onPrimary: Colors.blue,
          onSecondary: Colors.black,
        ),
      ),
      home: InputPage(),
    );
  }
}
