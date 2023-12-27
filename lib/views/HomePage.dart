import 'package:flutter/material.dart';
import 'package:yasi_app/components/BottomNavbar.dart';
import 'package:provider/provider.dart';
import 'package:yasi_app/controllers/userProvider.dart';

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
    //ambil username dari provider
    String username = Provider.of<UserProvider>(context).username;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFFD1ECFF),
          //appbar
          appBar: AppBar(
            toolbarHeight: 100,
            title: const Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 149, 159, 167),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
                gradient: LinearGradient(
                  colors: [Color(0xFF5170FD), Color(0xFF5170FD)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 30),
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //image profile
                        Image.asset('assets/images/profile.png',
                            width: 73, height: 73),
                        //text nameuser, provider
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Selamat Datang",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                            Text(username.toUpperCase(),
                                style: const TextStyle(fontFamily: 'Poppins')),
                          ],
                        ),
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
              })),
    );
  }
}
