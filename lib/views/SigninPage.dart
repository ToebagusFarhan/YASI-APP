// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yasi_app/views/LoginPage.dart';
import 'package:yasi_app/components/TextField.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _Signinviewstate();
}

class _Signinviewstate extends State<SigninPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final repeatpassController = TextEditingController();
  final fullnameController = TextEditingController();
  final providerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD1ECFF),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          //button back
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loginpage()),
                  );
                },
                child: Container(
                  child: Image.asset(
                    'assets/images/previous.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFD1ECFF),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //title
                const Text(
                  'Create Your Account',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF6E85BB),
                      fontSize: 27,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Please fill the input below here',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF6E85BB),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 50),
                //email textfield
                TextFielD(
                  controller: emailController,
                  hintText: 'Email',
                  icon: Icons.email,
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                //fullname textfield
                TextFielD(
                  controller: fullnameController,
                  hintText: 'Fullname',
                  icon: Icons.account_circle_sharp,
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                //username textfield
                TextFielD(
                    controller: usernameController,
                    hintText: 'Username',
                    icon: Icons.account_circle_outlined,
                    obscureText: false),
                const SizedBox(height: 20),
                //provider textfield
                TextFielD(
                    controller: providerController,
                    hintText: 'Provider',
                    icon: Icons.network_check,
                    obscureText: false),
                const SizedBox(height: 20),
                //password textfield
                TextFielD(
                    controller: passwordController,
                    hintText: 'Password',
                    icon: Icons.lock,
                    obscureText: true),
                const SizedBox(height: 20),
                //repeat password textfield
                TextFielD(
                    controller: repeatpassController,
                    hintText: 'Repeat Passoword',
                    icon: Icons.lock,
                    obscureText: true),
                const SizedBox(height: 40),

                // button create account
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
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => loginpage()),
                      );
                    },
                    child: const Center(
                      child: Text(
                        "Create Account", //bikin pop up jika account berhasil dibuat
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
