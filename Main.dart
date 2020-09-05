import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:nhl_today/Constants.dart';

import 'models/GameDay.dart';
import 'Display.dart';

/// Main application driver
void main() async {
  // init http client
  var client = http.Client();

  // Await the http get response, then decode the json-formatted response.
  var response = await client.get(url);

  // check for success code
  if (httpSuccess == response.statusCode) {
    // parse json
    Map<String, dynamic> json =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    GameDay day = GameDay.fromJson(json);

    display(day);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
