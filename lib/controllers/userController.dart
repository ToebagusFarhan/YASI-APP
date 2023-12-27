import 'dart:convert';
// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:yasi_app/controllers/function.dart';
import 'package:yasi_app/models/user.dart';

Future<User> getUserByName(String user) async {
  final response = await http.get(Uri.parse('$url/users/name/$user'));

  if (response.statusCode == 200) {
    dynamic data = json.decode(response.body)['data'];
    if (data is List) {
      if (data.isNotEmpty) {
        data = data[0];
      } else {
        throw Exception('User tidak ditemukan! periksa kembali username anda!');
      }
    }
    User users = User.fromJson(data);
    return users;
  } else {
    throw Exception('User tidak ditemukan! periksa kembali username anda!');
  }
}


Future<int> getUserIdByUsername(String username) async {
  try {
    User user = await getUserByName(username);
    return user.id;
  } catch (e) {
    // Handle the exception or rethrow it based on your requirements
    rethrow;
  }
}
