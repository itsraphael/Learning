import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Abcd',
              style: TextStyle(
                backgroundColor: (Colors.blue),
                fontStyle: (FontStyle.italic),
                color: (Colors.black),
              ),
            ),
          ),
          backgroundColor: (Colors.orange),
        ),
        body: Stack(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
                alignment: Alignment.topRight,
                child: Image(
                  height: 70,
                  width: 70,
                  image: NetworkImage(
                      'https://static.wikia.nocookie.net/naruto/images/4/46/Rinnegan_Sasuke.svg/revision/latest/scale-to-width-down/250?cb=20180617080136&path-prefix=pl'),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                alignment: Alignment.center,
                child: Text(
                  'WoW',
                  style: const TextStyle(fontSize: 40, color: Colors.green),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: (Colors.lightGreen),
      ),
    ),
  );
}
