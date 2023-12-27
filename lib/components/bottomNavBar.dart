// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:yasi_app/views/SignalInfoPage.dart';
import 'package:yasi_app/views/addDatas.dart';
import 'package:yasi_app/views/homePage.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF5170FD),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(
                  Icons.home,
                  size: 40,
                ),
                color: selectedIndex == 0 ? Colors.black : Colors.white,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(
                  Icons.signal_cellular_alt,
                  size: 40,
                ),
                color: selectedIndex == 1 ? Colors.black : Colors.white,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const SignalInfo(),
                    ),
                  );
                },
              ),
              label: 'Signal Info',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(
                  Icons.add,
                  size: 40,
                ),
                color: selectedIndex == 2 ? Colors.black : Colors.white,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const AddData(),
                    ),
                  );
                },
              ),
              label: 'Add Data',
            ),
          ],
        ),
      ),
    );
  }
}
