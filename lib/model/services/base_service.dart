import 'package:weather_app/model/api_params.dart';

abstract class BaseService<T extends BaseApiParams> {
  final String weatherBaseUrl = 'api.weatherapi.com';

  Future<dynamic> getResponse(T params);
}
