// ignore_for_file: public_member_api_docs, sort_constructors_first
class FishingBoatData {
  double weight;
  String permit;
  double price;
  String location;
  tradeType type;

  FishingBoatData({
    required this.weight,
    required this.permit,
    required this.price,
    required this.location,
    required this.type,
  });
}

enum tradeType { buy, sell }
