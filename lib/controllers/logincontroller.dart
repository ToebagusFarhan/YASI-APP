import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:yasi_app/controllers/function.dart';
import 'package:yasi_app/models/user.dart';
import 'package:yasi_app/views/homePage.dart';

Future<User> fetchUser(String user) async {
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

Future<void> loginUser(context, String username, String password) async {
  void popUp(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(milliseconds: 500),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  try {
    User users = await fetchUser(username);

    if (username == users.username && password == users.password) {
      popUp('Login Berhasil, Selamat datang $username');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      popUp('Login Gagal, Periksa kembali username dan password anda!');
    }
  } catch (e) {
    popUp('error $e');
  }
}
