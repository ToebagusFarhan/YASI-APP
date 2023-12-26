import 'package:flutter/material.dart';
import 'package:yasi_app/components/BottomNavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _Homeviewstate();
}

class _Homeviewstate extends State<HomePage> {
  int _selectedIndex = 0;

  //a
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFD1ECFF),
          centerTitle: true,
          title: const Text(
            'Yet Another Signal Info',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 23,
                fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: const Color(0xFFD1ECFF),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: 299,
                height: 135,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFBAA36),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //image profile
                      Image.asset('assets/images/profile.png',
                          width: 73, height: 73),
                      //text nameuser, provider
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Nama User',
                              style: TextStyle(fontFamily: 'Poppins')),
                          //provider
                          Text('Provider',
                              style: TextStyle(fontFamily: 'Poppins')),
                        ],
                      ),
                      //button setting
                      Column(
                        children: [
                          //navigate to update profile page
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/updateprofile');
                            },
                            child: Image.asset('assets/images/settings.png',
                                width: 25, height: 25),
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
        //bottom navigation bar
        bottomNavigationBar: CustomBottomNavigationBar(
            selectedIndex: _selectedIndex,
            onItemTapped: (index) {
              setState(() {
                _selectedIndex = index;
              });
            }));
  }
}
