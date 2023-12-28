import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:yasi_app/controllers/function.dart';
import 'package:yasi_app/controllers/userController.dart';
import 'package:yasi_app/models/data.dart';

Future<void> addData(
    BuildContext context,
    TextEditingController NamaController,
    TextEditingController EmailController,
    TextEditingController NohpController,
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
  String Nama = NamaController.text;
  String Email = EmailController.text;
  String Nohp = NohpController.text;

  //ambil id user dari provider
  int userId = await getUserIdByUsername(username);

  //validasi untuk text fieldnya

  //validasi jika field kosong
  if (Nama.isEmpty || Email.isEmpty || Nohp.isEmpty) {
    popUp('Data tidak boleh kosong');
    return;
  }

  final response = await http.post(
    Uri.parse('$url/informations'),
    body: jsonEncode({
      'user_id': userId,
      'name_name': Nama,
      'Email_name': Email,
      'nohp_stability': Nohp,
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
  NamaController.clear();
  EmailController.clear();
  NohpController.clear();
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
