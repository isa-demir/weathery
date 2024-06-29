abstract class BaseApiParams {
  late String city;
  final lang = 'en';
  BaseApiParams({required this.city});
}

class CurrentWeatherParam extends BaseApiParams {
  final String url = 'v1/current.json';
  CurrentWeatherParam({required super.city});
}

class FutureWeatherParam extends BaseApiParams {
  final String url = 'v1/forecast.json';
  final int days = 5;
  FutureWeatherParam({required super.city});
}
