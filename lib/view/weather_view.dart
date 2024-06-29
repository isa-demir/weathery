import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather_app/view/mixins/weather_view_mixin.dart';
import 'package:weather_app/view_model/weather_view_model.dart';
import '../constants/constants.dart';
import 'widgets/search_location_widget.dart';

class WeatherViewPage extends StatefulWidget {
  const WeatherViewPage({super.key});

  @override
  State<WeatherViewPage> createState() => _WeatherViewPageState();
}

class _WeatherViewPageState extends State<WeatherViewPage>
    with WeatherViewMixin {
  @override
  Widget build(BuildContext context) {
    final apiResponse = Provider.of<WeatherViewModel>(context).response;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          title: SearchLocationWidget(onPressed: fetchBaseWeather),
        ),
        body: getWeatherWidget(apiResponse),
      ),
    );
  }
}
