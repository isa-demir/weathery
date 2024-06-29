import 'package:weather_app/model/api_params.dart';
import 'package:weather_app/model/current_repository.dart';

Future<void> main() async {
  CurrentRepository repository = CurrentRepository();
  CurrentWeatherParam params = CurrentWeatherParam(city: 'London');
  final result = await repository.fetchCurrentWeather(params);
  print(result);
}
