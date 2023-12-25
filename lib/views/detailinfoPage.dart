import 'package:flutter/material.dart';
import 'package:yasi_app/views/signalinfoPage.dart';

class DetailInfo extends StatefulWidget {
  const DetailInfo({super.key});

  @override
  State<DetailInfo> createState() => _DetailInfoState();
}

class _DetailInfoState extends State<DetailInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2EDFF),
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          icon: Image.asset(
            'assets/images/Previous.png',
            width: 34,
            height: 44,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignalInfo()),
            );
          },
        ),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
          child: Text(
            'DETAIL INFO',
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
              Container(
                width: 450,
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
                    'Nama',
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
              const SizedBox(height: 30),
              Container(
                width: 450,
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
                    'Provider',
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
              const SizedBox(height: 30),
              Container(
                width: 450,
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
                    'Link Speedtest',
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
              const SizedBox(height: 50),
            ],
          ),
        )),
      ),
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
