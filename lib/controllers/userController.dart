import 'dart:convert';
// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:yasi_app/controllers/function.dart';
import 'package:yasi_app/controllers/userProvider.dart';
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

Future<void> updateUser(
    BuildContext context,
    int id,
    TextEditingController fullnamecontroller,
    TextEditingController emailcontroller,
    TextEditingController phonecontroller,
    String defName,
    String defEmail,
    String defPhone) async {
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

  //fungsi untuk cek email valid atau tidak
  bool isEmailValid(String email) {
    // Regular expression for a simple email validation
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
    );

    // check apakah emailnya valid atau tidak
    return emailRegex.hasMatch(email);
  }

  //Ekstrak data dari controller
  String fullname = fullnamecontroller.text;
  String email = emailcontroller.text;
  String phone = phonecontroller.text;

  //gunakan data default jika field kosong
  if (fullname.isEmpty) {
    fullname = defName;
  }
  if (email.isEmpty) {
    email = defEmail;
  }
  if (phone.isEmpty) {
    phone = defPhone;
  }
  //validasi jika field kosong
  if (fullname.isEmpty || email.isEmpty || phone.isEmpty) {
    popUp('Data tidak boleh kosong');
    return;
  }
  //validasi jika email tidak valid
  if (!isEmailValid(email)) {
    popUp('Email tidak valid');
    return;
  }
  try {
    final response = await http.put(
      Uri.parse('$url/users/id/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'fullname': fullname,
        'email': email,
        'phone': phone,
      }),
    );

    if (response.statusCode == 200) {
      print('User updated.');
      // ignore: use_build_context_synchronously
      Provider.of<UserProvider>(context, listen: false).setProfile(fullname, email, phone);
    } else {
      throw Exception('Failed to update user. ${response.body}');
    }
  } catch (e) {
    print('Error updating user: $e');
    throw Exception('Failed to update user. $e');
  }

  //bersihkan text field
  fullnamecontroller.clear();
  emailcontroller.clear();
  phonecontroller.clear();

  popUp('Data berhasil diupdate');
}
