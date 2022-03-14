import 'package:api_clima/ClimaApp/model/clima_model.dart';
import 'package:api_clima/ClimaApp/repositories/repository.dart';
import 'package:flutter/cupertino.dart';

class ClimaController extends ChangeNotifier {
  ClimaModel instanceModel = ClimaModel();

  ListClima listClima =
      ListClima(forecastList: [], temperature: '', wind: '', description: '');

  String cidade = '';
  final repositor = Repository();

  Future<void> getListClima() async {
    listClima = await repositor.fetchClima(cidade);

    notifyListeners();
  }

  onChange(value) {
    cidade = value;
    notifyListeners();
  }
}
