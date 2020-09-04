import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'models/GameDay.dart';

final String url =
      'https://statsapi.web.nhl.com/api/v1/schedule?expand=schedule.linescore';

void main() async {
  var client = http.Client();

  // Await the http get response, then decode the json-formatted response.
  var response = await client.get(url);

  if (response.statusCode == 200) {
    var json = convert.jsonDecode(response.body);

    GameDay games = GameDay.fromJson(json);

    print(games);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }

  return;
}
