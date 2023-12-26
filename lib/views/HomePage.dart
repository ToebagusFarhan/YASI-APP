import 'package:flutter/material.dart';
import 'package:yasi_app/components/BottomNavbar.dart';
import 'package:yasi_app/views/UpdateProfilePage.dart';

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
                      Image.asset(
                        'assets/images/profile.png',
                        width: 73,
                        height: 73,
                      ),
                      //text nameuser, provider
                      const Column(
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
                                    builder: (context) =>
                                        const UpdateProfile()),
                              );
                            },
                            child: Image.asset(
                              'assets/images/settings.png',
                              width: 25,
                              height: 25,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const SizedBox(height: 30),

                    const SizedBox(height: 40),
                    //container provider 1
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      width: 270,
                      height: 100,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFF8DB6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
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
                            const Text(
                              'Telkomsel',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 15),
                            ),
                            const SizedBox(width: 0),
                            const Text(
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
                      padding: const EdgeInsets.all(16.0),
                      width: 270,
                      height: 100,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF55C2FD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
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
                            const Text(
                              'Indosat',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 15),
                            ),
                            const SizedBox(width: 30),
                            const Text(
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
                      padding: const EdgeInsets.all(16.0),
                      width: 270,
                      height: 100,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFBDC0CE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
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
                            const Text(
                              'XL',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 15),
                            ),
                            const SizedBox(width: 30),
                            const Text(
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
