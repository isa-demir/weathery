import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_text_styles.dart';

class WeatherViewColumnItem extends StatelessWidget {
  const WeatherViewColumnItem(
      {super.key, required this.icon, required this.title, required this.type});

  final IconData icon;
  final String title;
  final String type;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon, color: Colors.white),
          Text(
            title,
            style: const BodyTextStyle(),
          ),
          Text(
            type,
            style: const BodyTextStyle(),
          ),
        ],
      ),
    );
  }
}
