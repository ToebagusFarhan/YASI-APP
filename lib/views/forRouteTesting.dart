import 'package:flutter/material.dart';

class RouteTest extends StatelessWidget {
  const RouteTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Route Test'),
              SizedBox(width: 10),
              Icon(Icons.check_circle_rounded, color: Colors.green)
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
              onPressed: () {
                // Navigator.pop(context);
                // Navigator.pushNamed(context, '/homepage');
                Navigator.pushNamed(context, '/addDatas');
              },
              icon: Icon(Icons.arrow_back),
              label: const Text('Back'))
        ],
      )),
    );
  }
}
