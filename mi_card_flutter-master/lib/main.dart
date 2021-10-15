import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade600,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 210,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/Kegare.jpg'),
                radius: 50,
              ),
              Text(
                'Raphael',
                style: TextStyle(
                  fontFamily: 'Allison',
                  fontSize: 50,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                'NOOB DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Architects',
                  fontSize: 15,
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  horizontal: 150,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey.shade200,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.phone, color: Colors.brown, size: 40),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        '+48 312 435 645',
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontFamily: 'Architects',
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.grey.shade200,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.email, color: Colors.brown, size: 40),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'noobdeveloper@gmail.com',
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontFamily: 'Architects',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
