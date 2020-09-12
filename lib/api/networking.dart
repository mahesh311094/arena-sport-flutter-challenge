import 'dart:convert';

import 'package:http/http.dart' as http;

const BASE_URL = 'https://api-football-v1.p.rapidapi.com/v2/';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(
      BASE_URL + url,
      headers: {
        'X-RapidAPI-Key': 'XXXXXXXXXXXXXXXXXXXXXXXXX',
      },
    );
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
