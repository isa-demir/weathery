import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/model/current/current_weather.dart';

import '../../constants/constants.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key, required this.currentWeather});

  final CurrentWeather currentWeather;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 50),
        decoration: const BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Text(
                DateFormat.yMMMd('en_US').format(DateTime.now()),
                style: const TitleTextStyle(),
              ),
            ),
            Expanded(
              flex: 5,
              child: Image.network(
                Uri.parse('https:${currentWeather.current!.condition!.icon!}')
                    .toString(),
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                '${currentWeather.current!.condition!.text!} ${currentWeather.current!.tempC} \u2103',
                style: const TitleTextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
