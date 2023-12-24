// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:yasi_app/views/HomePage.dart';
import 'package:yasi_app/components/TextField.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginviewstate();
}

class _loginviewstate extends State<loginpage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1ECFF),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              //LOGO YASI
              Image.asset(
                'assets/images/LOGO YASI.png',
                width: 160,
                height: 160,
              ),

              const SizedBox(height: 10),

              //text "YASI"
              const Text(
                'YASI',
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Color(0xFF6E85BB),
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                ),
              ),
              //text "yet another signal info"
              const Text(
                "Yet Another Signal Info",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),
              //container login
              Container(
                width: 342,
                height: 290,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(31)),
                  color: const Color(0xFF5170FD),
                  shadows: [
                    const BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 10),
                        spreadRadius: 0)
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFielD(
                          controller: email,
                          hintText: 'email',
                          icon: Icons.email_rounded,
                          obscureText: false),
                      const SizedBox(height: 30),
                      TextFielD(
                          controller: password,
                          hintText: 'Password',
                          icon: Icons.lock_outline_rounded,
                          obscureText: false),
                      const SizedBox(height: 30),
                      //button login
                      // TextButton.icon(
                      //   onPressed: () async {
                      //     // await LoginUser(context, email.text, password.text);
                      //   },
                      //   icon: const Icon(Icons.login),
                      //   label: const Text('Login'),
                      // ),
                      Container(
                        width: 276,
                        height: 42,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFBAA36),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          child: const Center(
                            child: Text(
                              "Login", //bikin pop up jika account berhasil dibuat
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      //text sign in
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dont have an account?',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(width: 4),
                          //pake gesture
                          Text(
                            'Create Account',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
