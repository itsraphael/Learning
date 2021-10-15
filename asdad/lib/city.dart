import 'package:flutter/material.dart';

class PogodaScreen extends StatelessWidget {
  PogodaScreen({
    Key? key,
    this.data,
  }) : super(key: key);
  final data;
  @override
  Widget build(BuildContext context) {
    int daynumber = 0;
    var temperature1 = data['consolidated_weather'][0]['the_temp'];
    String temperature = temperature1.toStringAsFixed(0);
    var state = data['consolidated_weather'][0]['weather_state_name'];
    var day = data['consolidated_weather'][0]['applicable_date'];
    var icon = data['consolidated_weather'][0]['weather_state_abbr'];
    var humidity = data['consolidated_weather'][0]['humidity'];
    var pressure = data['consolidated_weather'][0]['air_pressure'];
    double wind1 = data['consolidated_weather'][0]['wind_speed'];
    String wind = wind1.toStringAsFixed(0);
    var day1 = data['consolidated_weather'][1]['applicable_date'];
    var icon1 = data['consolidated_weather'][1]['weather_state_abbr'];
    var day2 = data['consolidated_weather'][2]['applicable_date'];
    var icon2 = data['consolidated_weather'][2]['weather_state_abbr'];
    var day3 = data['consolidated_weather'][3]['applicable_date'];
    var icon3 = data['consolidated_weather'][3]['weather_state_abbr'];
    double minTemp0 = data['consolidated_weather'][1]['min_temp'];
    String minTemp1 = minTemp0.toStringAsFixed(0);
    double maxTemp0 = data['consolidated_weather'][1]['max_temp'];
    String maxTemp1 = maxTemp0.toStringAsFixed(0);
    double minTemp2 = data['consolidated_weather'][2]['min_temp'];
    String minTemp3 = minTemp2.toStringAsFixed(0);
    double maxTemp2 = data['consolidated_weather'][2]['max_temp'];
    String maxTemp3 = maxTemp2.toStringAsFixed(0);
    double minTemp4 = data['consolidated_weather'][3]['min_temp'];
    String minTemp5 = minTemp4.toStringAsFixed(0);
    double maxTemp4 = data['consolidated_weather'][3]['max_temp'];
    String maxTemp5 = maxTemp4.toStringAsFixed(0);
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade700,
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '$day',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 200.0,
                  height: 230.0,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          '$state',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Image.network(
                            'https://www.metaweather.com/static/img/weather/png/$icon.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '$temperature°C',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Humidity: $humidity%',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Pressure: $pressure hPa',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Wind: $wind km/h',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 120.0,
                        height: 120.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$day1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            Container(
                              height: 60.0,
                              width: 60.0,
                              child: Image.network(
                                'https://www.metaweather.com/static/img/weather/png/$icon1.png',
                              ),
                            ),
                            Text(
                              '$minTemp1°C/$maxTemp1°C',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 120.0,
                        height: 120.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$day2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            Container(
                              height: 60.0,
                              width: 60.0,
                              child: Image.network(
                                'https://www.metaweather.com/static/img/weather/png/$icon2.png',
                              ),
                            ),
                            Text(
                              '$minTemp3°C/$maxTemp3°C',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 120.0,
                        height: 120.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$day3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            Container(
                              height: 60.0,
                              width: 60.0,
                              child: Image.network(
                                'https://www.metaweather.com/static/img/weather/png/$icon3.png',
                              ),
                            ),
                            Text(
                              '$minTemp5°C/$maxTemp5°C',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
