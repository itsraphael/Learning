import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Center(
              child: Text(
                'Ask Me Anything',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int Balls = 1;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
            child: TextButton(
          onPressed: () {
            setState(() {
              Balls = Random().nextInt(5) + 1;
              print('Ball Was Clicked');
            });
          },
          child: Image(
            image: AssetImage('images/ball$Balls.png'),
          ),
        )),
      ),
    );
  }
}
