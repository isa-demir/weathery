import 'package:flutter/material.dart';
import 'package:weather_app/model/api_params.dart';
import 'package:weather_app/model/apis/api_response.dart';
import 'package:weather_app/model/current/current_weather.dart';
import 'package:weather_app/model/current_repository.dart';

class WeatherViewModel extends ChangeNotifier {
  ApiResponse _apiResponse = ApiResponse.initial('Empty Data');

  CurrentWeather? _currentWeather;
  String? _iconUrl;

  ApiResponse get response => _apiResponse;

  CurrentWeather? get currentWeather => _currentWeather;

  String? get iconUrl => _iconUrl;

  final locationController = TextEditingController();

  void setControllerText() {
    locationController.text =
        '${currentWeather!.location!.country}, ${currentWeather!.location!.name}';
  }

  Future<void> fetchWeatherData(CurrentWeatherParam params) async {
    _apiResponse = ApiResponse.loading('Fetching weather data');
    notifyListeners();

    try {
      final currentWeather =
          await CurrentRepository().fetchCurrentWeather(params);
      _apiResponse = ApiResponse.completed(currentWeather);
      _currentWeather = currentWeather;
      _iconUrl = _currentWeather?.current?.condition?.icon;
    } catch (e) {
      _apiResponse = ApiResponse.error(e.toString());
      debugPrint(e.toString());
    }
    notifyListeners();
  }
}
