// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yasi_app/views/LoginPage.dart';
import 'package:yasi_app/components/TextField.dart';

class RegisPage extends StatefulWidget {
  const RegisPage({super.key});

  @override
  State<RegisPage> createState() => _RegisViewState();
}

class _RegisViewState extends State<RegisPage> {
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
                  Navigator.pop(context);
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
                ElevatedButton(
                    onPressed: () {
                      print('Create Account Button Pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(251, 170, 54, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      minimumSize: const Size(276, 42),
                    ),
                    child: Text('Create Account',
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.white))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
