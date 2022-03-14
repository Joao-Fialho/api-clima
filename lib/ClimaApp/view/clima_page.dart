import 'package:api_clima/ClimaApp/controller/clima_controller.dart';
import 'package:api_clima/ClimaApp/view/components/cards_clima.dart';
import 'package:api_clima/ClimaApp/view/components/cards_today.dart';
import 'package:flutter/material.dart';

class ClimaPage extends StatefulWidget {
  const ClimaPage({Key? key}) : super(key: key);

  @override
  State<ClimaPage> createState() => _ClimaPageState();
}

class _ClimaPageState extends State<ClimaPage> {
  // List<Forecast> listClima = [];

  @override
  Widget build(BuildContext context) {
    ClimaController controller = ClimaController();

    return Scaffold(
      body: AnimatedBuilder(
          animation: controller,
          builder: (buildcontext, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 360,
                  child: TextFormField(
                    onChanged: controller.onChange,
                  ),
                ),
                TextButton(
                  onPressed: controller.getListClima,
                  child: const Text(
                    'Consultar o Clima',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CardsToday(
                  description: controller.listClima.description,
                  temperature: controller.listClima.temperature,
                  wind: controller.listClima.wind,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.listClima.forecastList.length,
                    itemBuilder: (context, index) {
                      final clima = controller.listClima.forecastList[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CardsClima(
                            day: clima.day,
                            wind: clima.wind,
                            temperature: clima.temperature,
                          ),
                        ],
                      );
                    }),
              ],
            );
          }),
    );
  }
}
  // Container(
            //   height: 500,
            //   child: ListView.builder(
            //     itemCount: listClima.length,
            //     itemBuilder: (context, index) {
            //       final forecast = listClima[index];
            //       return Text(forecast.day);
            //     },
            //   ),
            // ),