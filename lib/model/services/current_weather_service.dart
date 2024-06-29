import 'dart:io';

import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/ignore/api_key.dart';
import 'package:weather_app/model/api_params.dart';
import 'package:weather_app/model/apis/app_exception.dart';
import 'package:weather_app/model/services/base_service.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/services/response_mixin.dart';

class CurrentWeatherService extends BaseService<CurrentWeatherParam>
    with ResponseHelperMixin {
  @override
  Future getResponse(CurrentWeatherParam params) async {
    dynamic responseJson;

    try {
      final queryParameters = {
        'q': params.city,
        'lang': params.lang,
        'key': apiKey,
      };
      final uri = Uri.https(weatherBaseUrl, params.url, queryParameters);
      final response = await http.get(uri);
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(AppStrings.noConnection);
    }
    return responseJson;
  }
}
