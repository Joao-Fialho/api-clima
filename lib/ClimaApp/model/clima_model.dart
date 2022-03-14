import 'dart:convert';

import 'package:api_clima/ClimaApp/repositories/repository.dart';

//estudar melhor essa parte, eu sei o que faz mas nao entendi bem como
class ClimaModel {
  // Future<List<Forecast>> getForecastList() async {
  //   final repositor = Repository();
  //   final resposta = await repositor.fetch();
  //   // final temperature = resposta['temperature']
  //   final List<Forecast> forecastList = [];
  //   //for para percorrer a lista
  //   for (var i = 0; i < resposta.length; i++) {
  //     final forecast = Forecast.fromMap(resposta[i]);

  //     forecastList.add(forecast);
  //   }
  //   return forecastList;
  // }
}

class Forecast {
  final String day;
  final String temperature;
  final String wind;
  Forecast({
    required this.day,
    required this.temperature,
    required this.wind,
  });

  factory Forecast.fromMap(Map<String, dynamic> map) {
    return Forecast(
      day: map['day'],
      temperature: map['temperature'],
      wind: map['wind'],
    );
  }

  @override
  String toString() =>
      'Forecast(day: $day, temperature: $temperature, wind: $wind)';
}

class ListClima {
  final String temperature;
  final String wind;
  final String description;
  final List<Forecast> forecastList;
  ListClima({
    required this.forecastList,
    required this.temperature,
    required this.wind,
    required this.description,
  });

  factory ListClima.fromMap(Map map) {
    return ListClima(
      temperature: map['temperature'],
      wind: map['wind'],
      description: map['description'],
      forecastList:
          (map['forecast'] as List).map((e) => Forecast.fromMap(e)).toList(),
    );
  }

  @override
  String toString() =>
      'ListClima(temperature: $temperature, wind: $wind, description: $description)';
}
