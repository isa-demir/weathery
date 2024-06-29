import 'package:weather_app/constants/constants.dart';

class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, AppStrings.comminicationError);
}

class BadRequestException extends AppException {
  BadRequestException([String? message])
      : super(message, AppStrings.invalidRequest);
}

class UnauthorisedException extends AppException {
  UnauthorisedException([String? message])
      : super(message, AppStrings.unauthorisedRequest);
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message])
      : super(message, AppStrings.invalidInput);
}
