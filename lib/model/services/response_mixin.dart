import 'dart:convert';

import 'package:http/http.dart' as http;

import '../apis/app_exception.dart';

mixin ResponseHelperMixin {
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException('Error occured while communication with server'
            ' with status code : ${response.statusCode}');
    }
  }
}
