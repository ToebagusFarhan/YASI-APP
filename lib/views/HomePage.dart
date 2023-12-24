import 'package:flutter/material.dart';
import 'package:yasi_app/views/LoginPage.dart';
import 'package:yasi_app/views/UpdateProfilePage.dart';
import 'package:yasi_app/views/addDatas.dart';
import 'package:yasi_app/views/signalinfoPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _Homeviewstate();
}

class _Homeviewstate extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD1ECFF),
        leading: Container(
          child: IconButton(
            icon: Image.asset(
              'images/Previous.png',
              width: 34,
              height: 44,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const loginpage()), // navigate to login page
              );
            },
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Yet Another Signal Info',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 23,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFD1ECFF),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(16.0),
                  width: 299,
                  height: 135,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFBAA36),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //image profile
                        Image.asset(
                          'assets/images/profile.png',
                          width: 73,
                          height: 73,
                        ),
                        //text nameuser, provider
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Nama User',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            //provider
                            Text(
                              'Provider',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                        //button setting
                        Column(
                          children: [
                            //navigate to update profile page
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UpdateProfile()),
                                );
                              },
                              child: Container(
                                child: Image.asset(
                                  'assets/images/settings.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                //container provider 1
                Container(
                  padding: EdgeInsets.all(16.0),
                  width: 270,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFF8DB6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0),
                    ],
                  ),
                  //isi container provider 1
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //image provider telkomsel
                        Image.asset(
                          'assets/images/Telkomsel.png',
                          width: 40,
                          height: 40,
                        ),
                        //text provider 1
                        Text(
                          'Telkomsel',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
                        ),
                        const SizedBox(width: 0),
                        Text(
                          'Bagus',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF3FBD13),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                //container provider 2
                Container(
                  padding: EdgeInsets.all(16.0),
                  width: 270,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Color(0xFF55C2FD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0),
                    ],
                  ),
                  //isi container provider 2
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //image provider
                        Image.asset(
                          'assets/images/INDOSAT.png',
                          width: 40,
                          height: 40,
                        ),
                        //text provider 2
                        Text(
                          'Indosat',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
                        ),
                        const SizedBox(width: 30),
                        Text(
                          'Bagus',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF3FBD13),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                //container provider 3
                Container(
                  padding: EdgeInsets.all(16.0),
                  width: 270,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Color(0xFFBDC0CE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0),
                    ],
                  ),
                  //isi container provider 3
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //image provider
                        Image.asset(
                          'assets/images/XL.png',
                          width: 40,
                          height: 40,
                        ),
                        //text provider 3
                        Text(
                          'XL',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
                        ),
                        const SizedBox(width: 30),
                        Text(
                          'Bagus',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF3FBD13),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
                    'images/Home.png',
                    width: 58,
                    height: 55,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const HomePage()), // ke HOME PAGE
                    );
                  },
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Image.asset(
                    'images/Logbook.png',
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
                    'images/Add.png',
                    width: 58,
                    height: 55,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AddData()), // ke ADD DATA PAGE
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
