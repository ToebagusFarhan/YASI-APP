import 'package:flutter/material.dart';
import 'package:yasi_app/components/BottomNavbar.dart';

class AddDataTest extends StatefulWidget {
  const AddDataTest({super.key});

  @override
  State<AddDataTest> createState() => _AddDataTestState();
}

class _AddDataTestState extends State<AddDataTest> {
  int _selectedIndex = 2;

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
                fontWeight: FontWeight.w700),
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
        backgroundColor: Color(0xFFD1ECFF),
        body: Center(
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                color: Color.fromRGBO(174, 225, 252, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Provinsi',
                      hintText: 'Masukkan Nama Barang',
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
                  label: const Text('Submit')),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
            selectedIndex: _selectedIndex,
            onItemTapped: (index) {
              setState(() {
                _selectedIndex = index;
              });
            }));
  }
}
