class Data {
  // definisikan field dari user
  final int id;
  final String city_name;
  final String provider_name;
  final String signal_stability;
  final int user_rating;
  final String comments;
  final String updated_at;
  final String created_at;

  //constructor user
  Data({
    required this.id,
    required this.city_name,
    required this.provider_name,
    required this.signal_stability,
    required this.user_rating,
    required this.comments,
    required this.updated_at,
    required this.created_at,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'] ?? 0,
      city_name: json['city_name'] ?? '',
      provider_name: json['provider_name'] ?? '',
      signal_stability: json['signal_stability'] ?? '',
      user_rating: json['user_rating'] ?? 0,
      comments: json['comments'] ?? '',
      created_at: json['created_at'] ?? '',
      updated_at: json['updated_at'] ?? '',
    );
  }
}
