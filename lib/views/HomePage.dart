import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yasi_app/components/BottomNavbar.dart';
import 'package:yasi_app/controllers/userProvider.dart';
import 'package:yasi_app/models/user.dart';
import 'package:yasi_app/testing/GnavTest.dart';
import 'package:yasi_app/views/SignalInfoPage.dart';
import 'package:yasi_app/views/UpdateProfilePage.dart';
import 'package:yasi_app/views/addDatas.dart';

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
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const UpdateProfile()));
                            },
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
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          width: 100,
                          height: 100,
                          decoration: ShapeDecoration(
                            color: Color.fromARGB(255, 63, 169, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {
                                final SnackBar snackBar = SnackBar(
                                  content: const Text('Coming Soon!'),
                                  duration: Duration(milliseconds: 500),
                                  action: SnackBarAction(
                                    label: 'Close',
                                    onPressed: () {},
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.network_cell_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Sumber Daya Jaringan',
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ))),
                    ),
                    const SizedBox(width: 10), // Spacer(
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        width: 100,
                        height: 100,
                        decoration: ShapeDecoration(
                          color: Color.fromARGB(255, 63, 169, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: TextButton(
                            onPressed: () {
                              final SnackBar snackBar = SnackBar(
                                content: const Text('Coming Soon!'),
                                duration: Duration(milliseconds: 500),
                                action: SnackBarAction(
                                  label: 'Close',
                                  onPressed: () {},
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.map_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Pemetaan Sinyal',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
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
                            color: Color.fromARGB(255, 63, 169, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {
                                final SnackBar snackBar = SnackBar(
                                  content: const Text('Coming Soon!'),
                                  duration: Duration(milliseconds: 500),
                                  action: SnackBarAction(
                                    label: 'Close',
                                    onPressed: () {},
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.monitor_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Bandiwth Monitor',
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ))),
                    ),
                    const SizedBox(width: 10), // Spacer(
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        width: 100,
                        height: 100,
                        decoration: ShapeDecoration(
                          color: Color.fromARGB(255, 63, 169, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: TextButton(
                            onPressed: () {
                              final SnackBar snackBar = SnackBar(
                                content: const Text('Coming Soon!'),
                                duration: Duration(milliseconds: 500),
                                action: SnackBarAction(
                                  label: 'Close',
                                  onPressed: () {},
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.speed_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Speedtest',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
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
        bottomNavigationBar: CustomGNav(
          selectedIndex: _selectedIndex,
          onTabChanged: (index) {
            switch (index) {
              case 0:
                //Navigate to the Home page
                print('Print $index');
                break;
              case 1:
                // Navigate to the Add Data page
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AddData()));
                break;
              case 2:
                // Navigate to the Search page
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignalInfo()));
                break;
              case 3:
                // Navigate to the Profile page
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UpdateProfile()));
                break;
            }
          },
        ),
      ),
    );
  }
}
