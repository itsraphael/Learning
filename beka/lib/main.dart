import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              ' A D I D A S ',
              style: const TextStyle(
                  backgroundColor: Colors.yellow,
                  fontStyle: (FontStyle.italic),
                  color: Colors.blue),
            ),
          ),
          backgroundColor: (Colors.red),
        ),
        backgroundColor: (Colors.amberAccent),
        body: Center(
          child: Image(
            image: AssetImage('images/Kegare.jpg'),
          ),
        ),
      ),
    ),
  );
}
