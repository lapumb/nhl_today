import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'models/GameDay.dart';
import 'package:nhl_today/Utilities.dart';
import 'package:nhl_today/Constants.dart';

final String tag = "Main"; 

void main() async {
  // enable debug logs
  Utilities.logIsEnabled(true);

  // init http client
  var client = http.Client();

  // Await the http get response, then decode the json-formatted response.
  var response = await client.get(url);

  // check for success code
  if (httpSuccess == response.statusCode) {
    // parse json
    Map<String, dynamic> json =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    GameDay games = GameDay.fromJson(json);
    Utilities.LOG(tag, '$games'); 
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }

  return;
}
