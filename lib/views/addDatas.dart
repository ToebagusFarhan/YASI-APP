import 'package:flutter/material.dart';
import 'package:yasi_app/components/BottomNavbar.dart';

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
        title: Text(
          'ADD DATA',
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
      backgroundColor: Color(0xFFD1ECFF),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.fromLTRB(30, 20, 30, 5),
                color: Color.fromRGBO(174, 225, 252, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: TextFormField(
                    controller: provinsiController,
                    decoration: const InputDecoration(
                      labelText: 'Provinsi',
                      hintText: 'Masukkan Masukan Provinsi',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      margin: const EdgeInsets.fromLTRB(30, 10, 10, 5),
                      color: Color.fromRGBO(174, 225, 252, 1),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: TextFormField(
                          controller: kecamatanController,
                          decoration: const InputDecoration(
                            labelText: 'Kecamatan',
                            hintText: 'Masukkan Nama Kecamatan',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      margin: const EdgeInsets.fromLTRB(10, 10, 30, 5),
                      color: Color.fromRGBO(174, 225, 252, 1),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: TextFormField(
                          controller: kotaController,
                          decoration: const InputDecoration(
                            labelText: 'Kota',
                            hintText: 'Masukkan Nama Kota',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Card(
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 5),
                color: Color.fromRGBO(174, 225, 252, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: TextFormField(
                    controller: providerController,
                    decoration: const InputDecoration(
                      labelText: 'Provider',
                      hintText: 'Masukkan Nama Provider',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                color: Color.fromRGBO(174, 225, 252, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: TextFormField(
                    controller: kualitasController,
                    decoration: const InputDecoration(
                      labelText: 'Kualitas Provider',
                      hintText: 'Jelek/Sedang/Bagus',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                color: Color.fromRGBO(174, 225, 252, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: TextFormField(
                    controller: linkController,
                    decoration: const InputDecoration(
                      labelText: 'Link Speedtest',
                      hintText: 'Masukkan Link Hasil Speedtest',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                color: Color.fromRGBO(174, 225, 252, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: TextFormField(
                    controller: komenController,
                    decoration: const InputDecoration(
                      labelText: 'Komen',
                      hintText: 'Masukkan Komen',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
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
                    action: SnackBarAction(
                      label: 'OK',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
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
