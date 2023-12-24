import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:yasi_app/controllers/function.dart';
import 'package:yasi_app/models/user.dart';
import 'package:yasi_app/views/homescreen.dart';


Future<void> registerUser(BuildContext context, User newUser) async {
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
    showLoadingIndicator(context, 'Sedang melakukan registrasi...');

    // Check if the email already exists
    final emailCheckResponse =
        await http.get(Uri.parse('$url/users/email/${newUser.email}'));
    if (emailCheckResponse.statusCode == 200) {
      dynamic emailCheckData = json.decode(emailCheckResponse.body)['data'];
      if (emailCheckData.isNotEmpty) {
        Navigator.pop(context); // Hide loading indicator
        popUp('Email ${newUser.email} sudah terdaftar. Gunakan email lain.');
        return;
      }
    } else {
      Navigator.pop(context); // Hide loading indicator
      popUp('Gagal memeriksa email. Silakan coba lagi.');
      return;
    }

    // Check if the username already exists
    final usernameCheckResponse =
        await http.get(Uri.parse('$url/users/name/${newUser.username}'));
    if (usernameCheckResponse.statusCode == 200) {
      dynamic usernameCheckData =
          json.decode(usernameCheckResponse.body)['data'];
      if (usernameCheckData.isNotEmpty) {
        Navigator.pop(context); // Hide loading indicator
        popUp(
            'Username ${newUser.username} sudah terdaftar. Gunakan username lain.');
        return;
      }
    } else {
      Navigator.pop(context); // Hide loading indicator
      popUp('Gagal memeriksa username. Silakan coba lagi.');
      return;
    }

    // If both email and username are unique, proceed with registration
    final registrationResponse = await http.post(
      Uri.parse('$url/users/register'),
      body: {
        'email': newUser.email,
        'fullname': newUser.fullname,
        'username': newUser.username,
        'password': newUser.password,
      },
    );

    if (registrationResponse.statusCode == 200) {
      print('Registration successful. Navigating to ProductScreen...');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
      popUp('Registrasi berhasil. Selamat datang, ${newUser.username}!');
    } else {
      Navigator.pop(context); // Hide loading indicator
      popUp('Gagal melakukan registrasi. Silakan coba lagi.');
    }
  } catch (e) {
    Navigator.pop(context); // Hide loading indicator
    popUp('Error: $e');
  }
}
