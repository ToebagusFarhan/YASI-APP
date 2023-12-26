import 'package:flutter/material.dart';
import 'package:yasi_app/components/BottomNavbar.dart';
import 'package:yasi_app/components/InputField.dart';
import 'package:yasi_app/controllers/dataController.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  int _selectedIndex = 2;

  TextEditingController kotaController = TextEditingController();
  TextEditingController providerController = TextEditingController();
  TextEditingController kualitasController = TextEditingController();
  TextEditingController komenController = TextEditingController();
  TextEditingController ratingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  //cek apakah ada field yang kosong
                  if (kotaController.text.isEmpty ||
                      providerController.text.isEmpty ||
                      kualitasController.text.isEmpty ||
                      ratingController.text.isEmpty ||
                      komenController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Mohon isi semua field'),
                        action: SnackBarAction(
                          label: 'OK',
                          onPressed: () {},
                        ),
                      ),
                    );
                    return;
                  }
                  //cek apakah rating 1-5
                  if (int.parse(ratingController.text) > 5 ||
                      int.parse(ratingController.text) < 1) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Rating harus 1-5'),
                        action: SnackBarAction(
                          label: 'OK',
                          onPressed: () {},
                        ),
                      ),
                    );
                    return;
                  }
                  //memanggil fungsi addData
                  addData(
                      context,
                      kotaController.text,
                      providerController.text,
                      kualitasController.text,
                      int.parse(ratingController.text),
                      komenController.text);

                  //membersihkan field
                  kotaController.clear();
                  providerController.clear();
                  kualitasController.clear();
                  ratingController.clear();
                  komenController.clear();
                },
                label: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
