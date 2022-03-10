import 'dart:convert';
import 'package:http/http.dart' as http;

class Repository {
  Future<List<Map<String, dynamic>>> fetch() async {
    final url = Uri.parse('https://goweather.herokuapp.com/weather/Curitiba');
    final response = await http.get(url);
    final json = jsonDecode(response.body);
    final jsonForecast = List<Map<String, dynamic>>.from(json['forecast']);
    final List<Map<String, dynamic>> listClima = jsonForecast;
    return listClima;
  }
}

//lista [forecast] - entidade   