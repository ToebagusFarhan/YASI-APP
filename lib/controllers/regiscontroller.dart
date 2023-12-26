import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:yasi_app/controllers/function.dart';

Future<void> addUsers(context, String email, String fullname, String username,
    String phoneNumber, String password) async {
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

  final response = await http.post(
    Uri.parse('$url/users'),
    body: jsonEncode({
      'username': username,
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
    log('User added!');
    popUp('Registrasi Berhasil, Silahkan Login Wahai $username');
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  } else {
    throw Exception('Failed to add user');
  }
}
