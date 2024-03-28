import 'package:http/http.dart' as http;
import 'dart:convert';

const baseUrl = 'https://apiadvisor.climatempo.com.br';

const token = 'f3e4d480a4e1f1c8fcf5f51a56992a09';

String url = '$baseUrl/api/v1/weather/locale/3693/current?token=$token';

Future<Map<String, dynamic>> getWeather() async {
  http.Response response = await http.get(Uri.parse(url));
  if (response.statusCode != 200) throw response.body;

  Map<String, dynamic> responseJson = json.decode(response.body);
  return responseJson;
}
