import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yasi_app/models/user.dart';

String url = 'http://yasi-web.my.id/api';

// Function to fetch a list of users from the server
Future<List<User>> getUsers() async {
  final response = await http.get(Uri.parse('$url/users'));

  if (response.statusCode == 200) {
    // Parse JSON data and map it to a list of User objects
    final Map<String, dynamic> responseData = json.decode(response.body);
    if (responseData.containsKey('data')) {
      List<dynamic> data = responseData['data'];
      List<User> users = data.map((json) => User.fromJson(json)).toList();
      return users;
    } else {
      throw Exception('Response does not contain data key');
    }
  } else {
    throw Exception('Failed to load data. Status code: ${response.statusCode}');
  }
}
