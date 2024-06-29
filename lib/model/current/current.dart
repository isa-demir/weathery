import 'package:weather_app/model/current/condition.dart';

class Current {
  String? lastUpdated;
  double? tempC;
  int? isDay;
  Condition? condition;
  double? windKph;
  double? pressureMb;
  double? precipMm;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? heatindexC;
  double? dewpointC;
  double? uv;

  Current(
      {this.lastUpdated,
      this.tempC,
      this.isDay,
      this.condition,
      this.windKph,
      this.pressureMb,
      this.precipMm,
      this.humidity,
      this.cloud,
      this.feelslikeC,
      this.heatindexC,
      this.dewpointC,
      this.uv});

  Current.fromJson(Map<String, dynamic> json) {
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    windKph = json['wind_kph'];
    pressureMb = json['pressure_mb'];
    precipMm = json['precip_mm'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    heatindexC = json['heatindex_c'];
    dewpointC = json['dewpoint_c'];
    uv = json['uv'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['last_updated'] = lastUpdated;
    data['temp_c'] = tempC;
    data['is_day'] = isDay;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['wind_kph'] = windKph;
    data['pressure_mb'] = pressureMb;
    data['precip_mm'] = precipMm;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['heatindex_c'] = heatindexC;
    data['dewpoint_c'] = dewpointC;
    data['uv'] = uv;
    return data;
  }
}
