import 'package:flutter/material.dart';
import 'package:yasi_app/components/BottomNavbar.dart';
import 'package:yasi_app/components/InputField.dart';
import 'package:yasi_app/views/HomePage.dart';
import 'package:yasi_app/views/LoginPage.dart';
import 'package:yasi_app/views/addDatas.dart';
import 'package:yasi_app/views/detailinfoPage.dart';

class SignalInfo extends StatefulWidget {
  const SignalInfo({super.key});

  @override
  State<SignalInfo> createState() => _SignalInfoState();
}

class _SignalInfoState extends State<SignalInfo> {
  final provinsiController = TextEditingController();
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFD2EDFF),
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Text(
            'Signal Info',
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
                  offset: Offset(0, 5), // change this value to move the shadow
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
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputField(
                    controller: provinsiController,
                    labelText: 'Kota',
                    hintText: 'Masukan Kota'),
                const SizedBox(height: 30),

                //Provider
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Container(
                    width: 270,
                    height: 100,
                    decoration: ShapeDecoration(
                      shadows: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                      color: const Color(0xFFFF8DB6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Telkomsel.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 10),
                        const Center(
                          child: Text(
                            'Telkomsel',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 50),
                        const Center(
                          child: Text(
                            'Bagus',
                            style: TextStyle(
                              color: Color(0xFF40BD14),
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Container(
                    width: 270,
                    height: 100,
                    decoration: ShapeDecoration(
                      shadows: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                      color: const Color(0xFF55C2FD),
                      // color: Color.fromARGB(255, 138, 252, 222),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/INDOSAT.png',
                          width: 70,
                          height: 50,
                        ),
                        //const SizedBox(width: 5),
                        const Center(
                          child: Text(
                            'Indosat',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 50),
                        const Center(
                          child: Text(
                            'Bagus',
                            style: TextStyle(
                              color: Color(0xFF40BD14),
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailInfo()),
                    );
                  },
                  child: Container(
                    width: 270,
                    height: 100,
                    decoration: ShapeDecoration(
                      shadows: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                      color: const Color(0xFFBDC0CE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/XL.png',
                          width: 35,
                          height: 50,
                        ),
                        const SizedBox(width: 10),
                        const Center(
                          child: Text(
                            'XL Axiata',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 50),
                        const Center(
                          child: Text(
                            'Bagus',
                            style: TextStyle(
                              color: Color(0xFF40BD14),
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        )),

        //Bottom Navbar
        bottomNavigationBar: CustomBottomNavigationBar(
            selectedIndex: selectedIndex,
            onItemTapped: (index) {
              setState(() {
                selectedIndex = index;
              });
            }));
  }
}
