import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:yasi_app/controllers/function.dart';
import 'package:yasi_app/controllers/userController.dart';
import 'package:yasi_app/models/data.dart';

Future<void> addData(
    BuildContext context,
    TextEditingController kotaController,
    TextEditingController providerController,
    TextEditingController kualitasController,
    TextEditingController ratingController,
    TextEditingController komentarController,
    String username) async {
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

  //Ekstrak data dari controller
  String kota = kotaController.text;
  String provider = providerController.text;
  String kualitas = kualitasController.text;
  int rating = int.tryParse(ratingController.text) ?? 0;
  String komentar = komentarController.text;

  //ambil id user dari provider
  int userId = await getUserIdByUsername(username);

  //validasi untuk text fieldnya

  //validasi jika field kosong
  if (kota.isEmpty ||
      provider.isEmpty ||
      kualitas.isEmpty ||
      rating == 0 ||
      komentar.isEmpty) {
    popUp('Data tidak boleh kosong');
    return;
  }
  //validasi jika rating tidak 1-5
  if (rating < 1 || rating > 5) {
    popUp('Rating harus 1-5');
    return;
  }

  final response = await http.post(
    Uri.parse('$url/informations'),
    body: jsonEncode({
      'user_id': userId,
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

  //bersihkan text field
  kotaController.clear();
  providerController.clear();
  kualitasController.clear();
  ratingController.clear();
  komentarController.clear();
}

// Fungsi untuk mengambil daftar data dari server
Future<List<Data>> getSignalInfo(String city) async {
  // Lakukan permintaan HTTP GET ke URL yang telah ditentukan
  final response = await http.get(Uri.parse('$url/informations'));

  // Periksa jika kode status respons adalah 200 (OK)
  if (response.statusCode == 200) {
    // Parse data JSON dan map ke daftar objek data
    List<dynamic> data = json.decode(response.body)['data'];
    List<Data> products = data.map((json) => Data.fromJson(json)).toList();

    // Filter data by city if it is provided
    if (city.isNotEmpty) {
      products = products
          .where((signal) =>
              signal.city_name.toLowerCase().contains(city.toLowerCase()))
          .toList();
    }

    return products;
  } else {
    // Lempar pengecualian jika kode status respons bukan 200
    throw Exception('Gagal memuat data'); // Gagal memuat data
  }
}
