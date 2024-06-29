import 'package:flutter/material.dart';
import 'package:weather_app/model/current/current_weather.dart';
import 'package:weather_app/view/widgets/widgets.dart';

class CompletedWeatherView extends StatelessWidget {
  const CompletedWeatherView({
    super.key,
    required this.result,
  });

  final CurrentWeather result;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WeatherCard(currentWeather: result),
          ContainerRow(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WeatherViewColumnItem(
                  icon: Icons.wind_power_rounded,
                  title: '${result.current!.windKph} KM/H',
                  type: 'Wind',
                ),
                WeatherViewColumnItem(
                  icon: Icons.sunny,
                  title: result.current!.feelslikeC.toString(),
                  type: 'Temperature',
                ),
                WeatherViewColumnItem(
                  icon: Icons.water_drop,
                  title: '${result.current!.humidity}%',
                  type: 'Humidity',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
