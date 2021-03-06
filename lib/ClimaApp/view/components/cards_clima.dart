import 'package:flutter/material.dart';

class CardsClima extends StatelessWidget {
  final String day;
  final String wind;
  final String temperature;
  const CardsClima({
    Key? key,
    this.day = '',
    this.wind = '',
    this.temperature = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black12,
      height: 150,
      width: 250,
      child: Card(
        color: Colors.grey[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(day),
            Text(temperature),
            Text(wind),
          ],
        ),
      ),
    );
  }
}
