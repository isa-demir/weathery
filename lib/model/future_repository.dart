import 'package:weather_app/model/api_params.dart';
import 'package:weather_app/model/services/future_weather.dart';

import 'current/current_weather.dart';

class FutureRepository {
  final _futureWeatherService = FutureWeatherService();

  Future<CurrentWeather> fetchCurrentWeather(FutureWeatherParam params) async {
    dynamic response = await _futureWeatherService.getResponse(params);
    final currentWeather = CurrentWeather.fromJson(response);
    return currentWeather;
  }
}
