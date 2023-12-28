class User {
  // definisikan field dari user
  final int id;
  final String username;
  final String password;
  String email;
  String fullname;
  String phone;
  final String updated_at;
  final String created_at;

  //constructor user
  User({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    required this.fullname,
    required this.phone,
    required this.updated_at,
    required this.created_at,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      username: json['username'] ?? '',
      password: json['password'] ?? '',
      email: json['email'] ?? '',
      fullname: json['fullname'] ?? '',
      phone: json['phone'] ?? '',
      updated_at: json['updated_at'] ?? '',
      created_at: json['last_login'] ?? '',
    );
  }
}
