// ignore_for_file: public_member_api_docs, sort_constructors_first
class SeaData {
  String windDir;
  double windSpeed;
  String tideDir;
  double tideSpeed;
  double tideheight;
  double temperatures;

  SeaData({
    required this.windDir,
    required this.windSpeed,
    required this.tideDir,
    required this.tideSpeed,
    required this.tideheight,
    required this.temperatures,
  });
}
