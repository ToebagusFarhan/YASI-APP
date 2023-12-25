import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:yasi_app/controllers/function.dart';
import 'package:yasi_app/models/user.dart';
import 'package:yasi_app/views/HomeScreen.dart';

Future<User> fetchUser(String user) async {
  final response = await http.get(Uri.parse('$url/users/name/$user'));

  if (response.statusCode == 200) {
    dynamic data = json.decode(response.body)['data'];
    if (data is List) {
      if (data.isNotEmpty) {
        data = data[0];
      } else {
        throw Exception('User tidak ditemukan! periksa kembali email anda!');
      }
    }
    User users = User.fromJson(data);
    return users;
  } else {
    throw Exception('Unable to load data');
  }
}

Future<void> loginUser(context, String username, String password) async {
  void popUp(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  try {
    showLoadingIndicator(context, 'Sedang login...');
    User users = await fetchUser(username);

    if (username == users.email && password == users.password) {
      print('Login successful. Navigating to ProductScreen...');

      popUp('Selamat datang, $username!');
    } else {
      popUp('User atau Password yang di inputkan salah!');
    }
  } catch (e) {
    Navigator.pop(context);
    popUp('error $e');
  }
}
