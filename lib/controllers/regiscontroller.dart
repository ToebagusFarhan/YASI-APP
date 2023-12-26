import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yasi_app/controllers/function.dart';

Future<void> addUsers(String email, String fullname, String Username,
    String phoneNumber, String password) async {
  final response = await http.post(
    Uri.parse('$url/users'),
    body: jsonEncode({
      'username': Username,
      'password': password,
      'email': email,
      'fullname': fullname,
      'phone': phoneNumber,
    }),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if (response.statusCode == 200) {
    print('User added!');
  } else {
    throw Exception('Failed to add user');
  }
}
