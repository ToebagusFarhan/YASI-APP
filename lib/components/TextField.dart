import 'package:flutter/material.dart';

class TextFielD extends StatelessWidget {
  final controller;
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const TextFielD(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.icon,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SizedBox(
        width: 276,
        height: 42,
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              fillColor: Color(0xFFB0E9FF),
              filled: true,
              hintText: hintText,
              hintStyle: const TextStyle(fontFamily: 'Poppins', fontSize: 13),
              prefixIcon: Icon(icon)),
        ),
      ),
    );
  }
}
