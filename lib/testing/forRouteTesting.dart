import 'package:flutter/material.dart';
import 'package:yasi_app/components/BottomNavbar.dart';
import 'package:yasi_app/models/data.dart';
import 'package:yasi_app/models/user.dart';
import 'package:yasi_app/testing/GnavTest.dart';

class RouteTest extends StatefulWidget {
  const RouteTest({super.key});

  @override
  State<RouteTest> createState() => _RouteTestState();
}

class _RouteTestState extends State<RouteTest> {
  late List<User> users;
  int selectedIndex = 4;

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
                Navigator.pop(context);
                // Navigator.pushNamed(context, '/homepage');
                // Navigator.pushNamed(context, '/addDatas');
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text('Back'))
        ],
      )),
      bottomNavigationBar: CustomGNav(
          selectedIndex: selectedIndex,
          onTabChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          }),
    );
  }
}
