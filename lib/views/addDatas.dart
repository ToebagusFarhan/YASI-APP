import 'package:flutter/material.dart';
import 'package:yasi_app/components/BottomNavbar.dart';
import 'package:yasi_app/components/InputField.dart';
import 'package:yasi_app/controllers/dataController.dart';
import 'package:provider/provider.dart';
import 'package:yasi_app/controllers/userProvider.dart';
import 'package:yasi_app/testing/GnavTest.dart';
import 'package:yasi_app/views/SignalInfoPage.dart';
import 'package:yasi_app/views/UpdateProfilePage.dart';
import 'package:yasi_app/views/homePage.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  int _selectedIndex = 1;

  TextEditingController kotaController = TextEditingController();
  TextEditingController providerController = TextEditingController();
  TextEditingController kualitasController = TextEditingController();
  TextEditingController komenController = TextEditingController();
  TextEditingController ratingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //ambil username dari provider
    String username = Provider.of<UserProvider>(context).username;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: const Text(
          'Add Data',
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
      backgroundColor: const Color(0xFFD1ECFF),
      body: Center(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              InputField(
                  controller: kotaController,
                  labelText: 'Kota',
                  hintText: 'Masukan Kota'),
              InputField(
                  controller: providerController,
                  labelText: 'Provider',
                  hintText: 'Masukan Provider (Telkomsel/Indosat/XL/Axis)'),
              InputField(
                  controller: kualitasController,
                  labelText: 'Kualitas',
                  hintText: 'Masukan Kualitas (Baik/Cukup/Buruk)'),
              InputField(
                  controller: ratingController,
                  labelText: 'Rating Sinyal',
                  hintText: 'Masukan Rating Sinyal (1-5)'),
              InputField(
                  controller: komenController,
                  labelText: 'Komentar',
                  hintText: 'Masukan Komentar Anda'),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade500,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(150, 50),
                ),
                icon: const Icon(Icons.add),
                onPressed: () {
                  //memanggil fungsi addData
                  addData(
                      context,
                      kotaController,
                      providerController,
                      kualitasController,
                      ratingController,
                      komenController,
                      username);
                },
                label: const Text('Submit'),
              ),
              SizedBox(height: 30),
            ],
          ),
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
              print('Print $index');
              break;
            case 2:
              // Navigate to the Search page
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignalInfo()));
              break;
            case 3:
              // Navigate to the Profile page
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const UpdateProfile()));
              break;
          }
        },
      ),
    );
  }
}
