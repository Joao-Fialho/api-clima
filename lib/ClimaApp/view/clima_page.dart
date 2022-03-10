import 'package:api_clima/ClimaApp/controller/clima_controller.dart';
import 'package:api_clima/ClimaApp/model/clima_model.dart';
import 'package:api_clima/ClimaApp/view/components/cards_clima.dart';
import 'package:flutter/material.dart';

class ClimaPage extends StatefulWidget {
  const ClimaPage({Key? key}) : super(key: key);

  @override
  State<ClimaPage> createState() => _ClimaPageState();
}

class _ClimaPageState extends State<ClimaPage> {
  // List<Forecast> listForecast = [];

  @override
  Widget build(BuildContext context) {
    ClimaController controller = ClimaController();

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: AnimatedBuilder(
            animation: controller,
            builder: (buildcontext, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: controller.onPressed,
                    child: const Text(
                      'Consultar o Clima',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 560,
                    width: 450,
                    // color: Colors.blue.shade200,
                    child: Container(
                      height: 450,
                      child: ListView.builder(
                          itemCount: controller.listForecast.length,
                          itemBuilder: (context, index) {
                            final forecast = controller.listForecast[index];
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CardsClima(
                                  day: forecast.day,
                                  wind: forecast.wind,
                                  temperature: forecast.temperature,
                                ),
                              ],
                            );
                          }),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
  // Container(
            //   height: 500,
            //   child: ListView.builder(
            //     itemCount: listForecast.length,
            //     itemBuilder: (context, index) {
            //       final forecast = listForecast[index];
            //       return Text(forecast.day);
            //     },
            //   ),
            // ),