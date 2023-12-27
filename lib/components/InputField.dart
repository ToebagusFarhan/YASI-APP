import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final EdgeInsetsGeometry cardMargin;
  final Color cardColor;
  final TextEditingController controller;
  final String labelText;
  final String hintText;

  const InputField({
    Key? key,
    this.cardMargin = const EdgeInsets.fromLTRB(30, 20, 30, 5),
    this.cardColor = const Color.fromRGBO(174, 225, 252, 1),
    required this.controller,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: cardMargin,
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: TextFormField(
          onChanged: (value) {
            
          },
          controller: controller,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            border: InputBorder.none,
            
          ),
        ),
      ),
    );
  }
}
