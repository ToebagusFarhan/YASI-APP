import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yasi_app/components/InputField.dart';
//import 'package:yasi_app/controllers/dataController.dart';
import 'package:yasi_app/controllers/userController.dart';
import 'package:yasi_app/controllers/userProvider.dart';
import 'package:yasi_app/models/user.dart';
import 'package:yasi_app/testing/GnavTest.dart';
//import 'package:yasi_app/views/LoginPage.dart';
import 'package:yasi_app/views/SignalInfoPage.dart';
import 'package:yasi_app/views/addDatas.dart';
import 'package:yasi_app/views/homePage.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  int _selectedIndex = 3;

  final TextEditingController NamaController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController NohpController = TextEditingController();

  @override
  void dispose() {
    NamaController.dispose();
    EmailController.dispose();
    NohpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //String username = Provider.of<UserProvider>(context).username;
    User user = Provider.of<UserProvider>(context).user;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFD1ECFF),
        body: SingleChildScrollView(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 30),
              //image profile
              Image.asset(
                'assets/images/profile.png',
                width: 105,
                height: 105,
              ),
              const SizedBox(height: 20),
              Text(
                user.fullname.toUpperCase(),
                style: const TextStyle(fontFamily: 'Poppins'),
              ),
              Text(
                user.email,
                style: const TextStyle(fontFamily: 'Poppins'),
              ),
              const SizedBox(height: 30),

              Container(
                width: 400,
                height: 420,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color(0xFF5170FD),
                ),
                child: Column(children: [
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'Update Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  InputField(
                      controller: NamaController,
                      labelText: 'Nama',
                      hintText: user.fullname),
                  InputField(
                    controller: EmailController,
                    labelText: 'E-Mail',
                    hintText: user.email,
                  ),
                  InputField(
                      controller: NohpController,
                      labelText: 'Nomor Handphone',
                      hintText: user.phone.toString()),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFBAA36),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150, 50),
                    ),
                    icon: const Icon(Icons.save_rounded),
                    onPressed: () async {
                      await updateUser(
                          context,
                          user.id.toInt(),
                          NamaController,
                          EmailController,
                          NohpController,
                          user.fullname,
                          user.email,
                          user.phone.toString());
                    },
                    label: const Text('Update'),
                  ),
                ]),
              ),
              SizedBox(height: 30),
            ]),
          ),
        ),
        bottomNavigationBar: CustomGNav(
          selectedIndex: _selectedIndex,
          onTabChanged: (index) {
            switch (index) {
              case 0:
                //Navigate to the Home page
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
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
                print('Print $index');
                break;
            }
          },
        ),
      ),
    );
  }
}
