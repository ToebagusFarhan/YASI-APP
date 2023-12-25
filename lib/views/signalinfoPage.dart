import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2EDFF),
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          icon: Image.asset(
            'assets/images/previous.png',
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
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
          child: Text(
            'SIGNAL INFO',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 149, 159, 167),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset:
                        Offset(0, 5), // change this value to move the shadow
                  ),
                ],
                gradient: LinearGradient(
                    colors: [Color(0xFF5170FD), Color(0xFF5170FD)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter))),
      ),

      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(7.7),
                child: Container(
                  width: 430,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF53C2FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Provinsi',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 2.8,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      width: 195,
                      height: 42,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF53C2FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Kecamatan',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 2.8,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      width: 173,
                      height: 42,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF53C2FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Kota',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 2.8,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              //Provider
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DetailInfo()),
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
                    MaterialPageRoute(builder: (context) => const DetailInfo()),
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
                    MaterialPageRoute(builder: (context) => const DetailInfo()),
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
                              const HomePage()), // navigate to home page
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
                          builder: (context) => AddData()), // ke ADD DATA PAGE
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
