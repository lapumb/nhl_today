import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  var client = http.Client(); 
  var url = 'https://statsapi.web.nhl.com/api/v1/schedule';

  // Await the http get response, then decode the json-formatted response.
  var response = await client.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    print('Raw response: \n\n$jsonResponse');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
