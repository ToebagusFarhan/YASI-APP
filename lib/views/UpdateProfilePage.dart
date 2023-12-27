import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yasi_app/components/InputField.dart';
import 'package:yasi_app/controllers/userProvider.dart';
import 'package:yasi_app/testing/GnavTest.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
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
  @override
  Widget build(BuildContext context) {
    String username = Provider.of<UserProvider>(context).username;
    String email = Provider.of<UserProvider>(context).username;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD1ECFF),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: InkWell(
                    onTap: () {
                      if (mounted) {
                        Navigator.pop(context);
                      }
                    },
                    child: Container(
                      child: Image.asset(
                        'assets/images/previous.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFD1ECFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Image.asset(
                  'assets/images/profile.png',
                  width: 105,
                  height: 105,
                ),
                const SizedBox(height: 20),
                Text(
                  username.toUpperCase(),
                  style: const TextStyle(fontFamily: 'Poppins'),
                ),
                Text(
                  email,
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
                const SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Data Diri',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: const Color(0xFFFBAA36)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 390,
                      height: 254,
                      decoration: BoxDecoration(
                        color: const Color(0xFF5170FD),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InputField(
                                controller: NamaController,
                                labelText: 'Nama',
                                hintText: 'masukan nama',
                              ),
                              InputField(
                                controller: EmailController,
                                labelText: 'Email',
                                hintText: 'masukan email',
                              ),
                              InputField(
                                controller: NohpController,
                                labelText: 'No.hp',
                                hintText: 'masukan no.hp',
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: const Color(0xFFFBAA36),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 20,
                                  ),
                                ),
                                icon: const Icon(Icons.system_update),
                                onPressed: () {
                                  String nama = NamaController.text;
                                  String email = EmailController.text;
                                  String noHp = NohpController.text;

                                  // Lakukan pembaruan profil

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Profil diperbarui'),
                                    ),
                                  );
                                },
                                label: const Text('Update'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
