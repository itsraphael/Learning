// 'https://www.metaweather.com/api/location/search/?query=$city'
//'https://www.metaweather.com/api/location/44418/'

// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
// import 'network.dart';
// import 'city.dart';

// Future getData() async {
//   var url =
//       Uri.https('www.metaweather.com', '/api/location/44418/', {'q': '{http}'});
//   var response = await http.get(url);
//   if (response.statusCode == 200) {
//     var data = convert.jsonDecode(response.body);
//     // var temperature = data['consolidated_weather'][0]['the_temp'];
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }
// }
