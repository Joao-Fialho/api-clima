import 'dart:convert';
import 'package:api_clima/ClimaApp/model/clima_model.dart';
import 'package:http/http.dart' as http;

class Repository {
  Future<ListClima> fetchClima(cidade) async {
    final url = Uri.parse('https://goweather.herokuapp.com/weather/$cidade');
    final response = await http.get(url);
    final json = jsonDecode(response.body);
    //ele nao quer passar daqui
    if (response.statusCode == 200) {
      return ListClima.fromMap(json);
    } else {
      throw Exception('deu erro hahaha');
    }
  }
}

//lista [forecast] - entidade   