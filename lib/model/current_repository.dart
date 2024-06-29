import 'package:weather_app/model/api_params.dart';
import 'package:weather_app/model/services/current_weather_service.dart';

import 'current/current_weather.dart';

class CurrentRepository {
  final _currentWeatherService = CurrentWeatherService();

  Future<CurrentWeather> fetchCurrentWeather(CurrentWeatherParam params) async {
    dynamic response = await _currentWeatherService.getResponse(params);
    final currentWeather = CurrentWeather.fromJson(response);
    return currentWeather;
  }
}
