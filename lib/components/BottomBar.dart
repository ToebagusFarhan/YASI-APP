import 'package:flutter/material.dart';
import 'package:yasi_app/views/SignalInfoPage.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
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
            // currentIndex: _selectedIndex,
            // onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Image.asset(
                    'assets/images/Home.png',
                    width: 58,
                    height: 55,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SignalInfo()), // ke HOME PAGE
                    );
                  },
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Image.asset(
                    'assets/images/Logbook.png',
                    width: 58,
                    height: 55,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignalInfo()),
                    );
                  },
                ),
                label: 'Signal Info',
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Image.asset(
                    'assets/images/Add.png',
                    width: 58,
                    height: 55,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SignalInfo()), // ke ADD DATA PAGE
                    );
                  },
                ),
                label: 'Add Data',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
