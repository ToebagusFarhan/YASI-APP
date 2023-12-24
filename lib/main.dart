import 'package:flutter/material.dart';
import 'package:yasi_app/views/AddDatas.dart';
import 'package:yasi_app/views/HomePage.dart';
import 'package:yasi_app/views/LoginPage.dart';
import 'package:yasi_app/views/SigninPage.dart';
import 'package:yasi_app/views/detailinfoPage.dart';
import 'package:yasi_app/views/UpdateProfilePage.dart';
import 'package:yasi_app/views/signalinfoPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}
