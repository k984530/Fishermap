// ignore_for_file: public_member_api_docs, sort_constructors_first
class WeatherData {
  weatherType weather;
  double temperatures;
  int seaTime;
  String location;

  WeatherData({
    required this.weather,
    required this.temperatures,
    required this.seaTime,
    required this.location,
  });
}

enum weatherType { sunny, foggy, rain }
