import 'package:flutter/material.dart';

class CardsToday extends StatelessWidget {
  final String temperature;
  final String wind;
  final String description;

  const CardsToday({
    Key? key,
    this.temperature = '',
    this.wind = '',
    this.description = '',
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
            Text(temperature),
            Text(wind),
            Text(description),
          ],
        ),
      ),
    );
  }
}
