import '../current/condition.dart';

class Hour {
  String? time;
  double? tempC;
  int? isDay;
  Condition? condition;
  double? windKph;
  int? pressureMb;
  int? precipMm;
  int? snowCm;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  int? willItRain;
  int? chanceOfRain;
  int? willItSnow;
  int? chanceOfSnow;
  int? uv;

  Hour(
      {this.time,
      this.tempC,
      this.isDay,
      this.condition,
      this.windKph,
      this.pressureMb,
      this.precipMm,
      this.snowCm,
      this.humidity,
      this.cloud,
      this.feelslikeC,
      this.willItRain,
      this.chanceOfRain,
      this.willItSnow,
      this.chanceOfSnow,
      this.uv});

  Hour.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    tempC = json['temp_c'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    windKph = json['wind_kph'];
    pressureMb = json['pressure_mb'];
    precipMm = json['precip_mm'];
    snowCm = json['snow_cm'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    willItRain = json['will_it_rain'];
    chanceOfRain = json['chance_of_rain'];
    willItSnow = json['will_it_snow'];
    chanceOfSnow = json['chance_of_snow'];
    uv = json['uv'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    data['temp_c'] = tempC;
    data['is_day'] = isDay;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['wind_kph'] = windKph;
    data['pressure_mb'] = pressureMb;
    data['precip_mm'] = precipMm;
    data['snow_cm'] = snowCm;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['will_it_rain'] = willItRain;
    data['chance_of_rain'] = chanceOfRain;
    data['will_it_snow'] = willItSnow;
    data['chance_of_snow'] = chanceOfSnow;
    data['uv'] = uv;
    return data;
  }
}
