import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yasi_app/components/BottomNavbar.dart';
import 'package:yasi_app/controllers/userProvider.dart';
import 'package:yasi_app/models/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _Homeviewstate();
}

class _Homeviewstate extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Retrieve user information from the provider
    User user = Provider.of<UserProvider>(context).user;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFD1ECFF),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // User Profile Section
              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                width: 350,
                height: 200, // Increased height to accommodate buttons
                decoration: ShapeDecoration(
                  color: const Color(0xFFFBAA36),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // User profile image
                        Image.asset(
                          'assets/images/profile.png',
                          width: 65,
                          height: 65,
                        ),
                        const SizedBox(width: 5), // Spacer(
                        // User details
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Selamat Datang",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 5),
                            if (user.fullname.length <= 15) ...[
                              Text(
                                user.fullname.toUpperCase(),
                                style: const TextStyle(fontFamily: 'Poppins'),
                              ),
                            ] else
                              Text(
                                user.username.toUpperCase(),
                                style: const TextStyle(fontFamily: 'Poppins'),
                              ),
                            Text(user.email)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Logout button
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/');
                            },
                            icon: const Icon(Icons.logout, color: Colors.white),
                            label: const Text(
                              'LOGOUT',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10), // Spacer(
                        // Edit Profile button
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.edit, color: Colors.white),
                            label: const Text(
                              'EDIT PROFILE',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // User Action Section
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                          width: 100,
                          height: 100,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFBAA36),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/addDatas');
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Tambah Data',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ))),
                    ),
                    const SizedBox(width: 10), // Spacer(
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        width: 100,
                        height: 100,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFBAA36),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signalinfo');
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Lihat Data',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Bottom navigation bar
        // bottomNavigationBar: CustomBottomNavigationBar(
        //   selectedIndex: _selectedIndex,
        //   onItemTapped: (index) {
        //     setState(() {
        //       _selectedIndex = index;
        //     });
        //   },
        // ),
      ),
    );
  }
}
