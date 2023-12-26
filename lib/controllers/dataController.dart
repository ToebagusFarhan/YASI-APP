import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:yasi_app/controllers/function.dart';

Future<void> addData(context, String kota, String provider, String kualitas,
    int rating, String komentar) async {
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
    Uri.parse('$url/informations'),
    body: jsonEncode({
      'city_name': kota,
      'provider_name': provider,
      'signal_stability': kualitas,
      'user_rating': rating,
      'comments': komentar,
    }),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );
  if (response.statusCode == 200) {
    log('User added!');
    popUp('Data berhasil ditambahkan, Terima Kasih');
  } else {
    throw Exception('Gagal menambahkan data!');
  }
}
