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
  Widget build(BuildContext context) {
    String username = Provider.of<UserProvider>(context).username;
    String email = Provider.of<UserProvider>(context).username;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD1ECFF),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              //tombol 1
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
                username.toUpperCase(),
                style: const TextStyle(fontFamily: 'Poppins'),
              ),
              Text(
                email,
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              const SizedBox(height: 30),

              Container(
                width: 390,
                height: 350,
                decoration: BoxDecoration(
                  color: const Color(0xFF5170FD),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(children: [
                    InputField(
                        controller: NamaController,
                        labelText: 'Nama',
                        hintText: 'masukan nama'),
                    InputField(
                        controller: EmailController,
                        labelText: 'Email',
                        hintText: 'masukan email'),
                    InputField(
                        controller: NohpController,
                        labelText: 'No.hp',
                        hintText: 'masukan no.hp'),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 222, 137, 1),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(150, 50),
                      ),
                      icon: const Icon(Icons.system_update),
                      onPressed: () {
                        String nama = NamaController.text;
                        String email = EmailController.text;
                        String noHp = NohpController.text;
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Profil diperbarui'),
                          ),
                        );
                      },
                      label: const Text('Update'),
                    ),
                  ]),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
