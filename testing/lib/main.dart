import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    this.data,
  }) : super(key: key);
  final data;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('lol'),
        ),
      ),
    );
  }
}

class WeatherData {
  var data;
  Future getData(BuildContext context) async {
    var url = Uri.https(
        'www.metaweather.com', '/api/location/44418/', {'q': '{http}'});
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);
      return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp(
              data: data,
            ),
          ));
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}

// var temperature = data['consolidated_weather'][0]['the_temp'];
