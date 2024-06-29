import '../current/current.dart';
import '../current/location.dart';
import 'forecast.dart';

class FutureWeather {
  Location? location;
  Current? current;
  Forecast? forecast;

  FutureWeather({this.location, this.current, this.forecast});

  FutureWeather.fromJson(Map<String, dynamic> json) {
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    current =
        json['current'] != null ? Current.fromJson(json['current']) : null;
    forecast =
        json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (location != null) {
      data['location'] = location!.toJson();
    }
    if (current != null) {
      data['current'] = current!.toJson();
    }
    if (forecast != null) {
      data['forecast'] = forecast!.toJson();
    }
    return data;
  }
}

class Astro {
  String? sunrise;
  String? sunset;

  Astro({this.sunrise, this.sunset});

  Astro.fromJson(Map<String, dynamic> json) {
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    return data;
  }
}
