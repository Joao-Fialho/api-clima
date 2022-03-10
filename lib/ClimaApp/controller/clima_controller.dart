import 'package:api_clima/ClimaApp/model/clima_model.dart';
import 'package:flutter/cupertino.dart';

class ClimaController extends ChangeNotifier {
  ClimaModel instanceModel = ClimaModel();

  List<Forecast> listForecast = [];

  Future<List<Forecast>> onPressed() async {
    final getForecastList = await instanceModel.getForecastList();
    listForecast = getForecastList;
    print(getForecastList);
    notifyListeners();
    return listForecast;
  }
}
