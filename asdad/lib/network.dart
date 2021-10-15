import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'city.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Network extends StatefulWidget {
  const Network({
    Key? key,
  }) : super(key: key);
  @override
  State<Network> createState() => _NetworkState();
}

class _NetworkState extends State<Network> {
  bool beka = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'London',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100.0,
                    color: Colors.black,
                  ),
                ),
                beka
                    ? Center(
                        child: SpinKitDoubleBounce(
                          color: Colors.red,
                          size: 100.0,
                        ),
                      )
                    : SizedBox(),
                SizedBox(
                  height: 50.0,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      beka = true;
                      WeatherData().getData(context);
                    });
                  },
                  child: Text(
                    'Check Weather',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
            builder: (context) => PogodaScreen(
              data: data,
            ),
          ));
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
// var temperature = data['consolidated_weather'][0]['the_temp'];
