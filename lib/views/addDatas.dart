import 'package:flutter/material.dart';
import 'package:yasi_app/components/BottomNavbar.dart';
import 'package:yasi_app/components/InputField.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  int _selectedIndex = 2;

  TextEditingController provinsiController = TextEditingController();
  TextEditingController kecamatanController = TextEditingController();
  TextEditingController kotaController = TextEditingController();
  TextEditingController providerController = TextEditingController();
  TextEditingController kualitasController = TextEditingController();
  TextEditingController komenController = TextEditingController();
  TextEditingController linkController = TextEditingController();

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
                  controller: provinsiController,
                  labelText: 'Provinsi',
                  hintText: 'Masukan Provinsi'),
              Row(
                children: [
                  Expanded(
                    child: InputField(
                        cardMargin: const EdgeInsets.fromLTRB(30, 20, 10, 5),
                        controller: kotaController,
                        labelText: 'Kota',
                        hintText: 'Masukan Kota'),
                  ),
                  Expanded(
                    child: InputField(
                        cardMargin: const EdgeInsets.fromLTRB(10, 20, 30, 5),
                        controller: kecamatanController,
                        labelText: 'Kecamatan',
                        hintText: 'Masukan Kecamatan'),
                  ),
                ],
              ),
              InputField(
                  controller: providerController,
                  labelText: 'Provider',
                  hintText: 'Masukan Provider (Telkomsel/Indosat/XL/Axis)'),
              InputField(
                  controller: kualitasController,
                  labelText: 'Kualitas',
                  hintText: 'Masukan Kualitas (Baik/Cukup/Buruk)'),
              InputField(
                  controller: linkController,
                  labelText: 'Link Speedtest',
                  hintText: 'Masukan Link Speedtest'),
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
                  final snackBar = SnackBar(
                    content: const Text('Data telah ditambahkan...'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
