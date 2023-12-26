import 'package:flutter/material.dart';

String url = 'http://yasi-web.my.id/api';

void showLoadingIndicator(BuildContext context, String message) {
  showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return AlertDialog(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(width: 15),
              Text(message),
            ],
          ),
        );
      });
}
