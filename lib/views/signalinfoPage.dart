import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:yasi_app/components/BottomNavbar.dart';
import 'package:yasi_app/controllers/dataController.dart';
import 'package:yasi_app/controllers/function.dart';
import 'package:yasi_app/models/data.dart';

class SignalInfo extends StatefulWidget {
  const SignalInfo({Key? key}) : super(key: key);

  @override
  State<SignalInfo> createState() => _SignalInfoState();
}

class _SignalInfoState extends State<SignalInfo> {
  final kotaController = TextEditingController();
  late List<Data> signals;
  late List<Data> filteredSignals;
  int selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    signals = [];
    filteredSignals = [];
    getData('');
  }

  /// Fungsi untuk mengambil data sinyal dari server
  Future<void> getData(String city) async {
    try {
      final List<Data> data = await getSignalInfo(city);

      if (mounted) {
        setState(() {
          signals = data;
          // Terapkan filter hanya jika tidak kosong
          filteredSignals = city.isNotEmpty
              ? data.where((signal) {
                  final cityNameLower = signal.city_name.toLowerCase();
                  final keywordLower = city.toLowerCase();
                  return cityNameLower.contains(keywordLower);
                }).toList()
              : data;
        });
      }
    } catch (e) {
      log('Error in getData: $e');
      final snackBar = SnackBar(
        content: const Text('Gagal mengambil data...'),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  /// Fungsi untuk menghapus filter dan mereset data
  void clearFilter() {
    kotaController.clear();
    getData('');
  }

  /// Fungsi untuk memfilter data berdasarkan kata kunci
  void filterSignals(String keyword) {
    getData(keyword);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFD2EDFF),
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Text(
            'Informasi Sinyal',
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
                  offset: Offset(0, 5),
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: const EdgeInsets.fromLTRB(30, 20, 30, 5),
              color: const Color.fromRGBO(174, 225, 252, 1),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: TextFormField(
                  controller: kotaController,
                  decoration: const InputDecoration(
                    labelText: 'Masukkan Filter Kota',
                    hintText: 'Masukkan Berdasarkan Kota',
                    border: InputBorder.none,
                  ),
                  onChanged: filterSignals,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: filteredSignals.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                    color: const Color.fromRGBO(174, 225, 252, 1),
                    child: ListTile(
                      isThreeLine: true,
                      onTap: () {
                        final SnackBar snackBar = SnackBar(
                          duration: const Duration(milliseconds: 500),
                          content: const Text(
                              'Fitur ini belum tersedia untuk saat ini!'),
                          action: SnackBarAction(
                            label: 'OK',
                            onPressed: () {},
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      title: Text(
                          filteredSignals[index].provider_name.toUpperCase()),
                      subtitle: Text(
                        'Kota ${filteredSignals[index].city_name} - Kualitas Sinyal ${filteredSignals[index].signal_stability}',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
    
        // Tombol refresh
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF5170FD),
          foregroundColor: Colors.white,
          tooltip: 'Segarkan Data',
          onPressed: () async {
            showLoadingIndicator(context, 'Mengambil data...');
            await getData(kotaController.text);
            Navigator.pop(context);
            final snackBar = SnackBar(
              content: const Text('Data telah diperbarui...'),
              action: SnackBarAction(
                label: 'OK',
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Icon(Icons.refresh),
        ),
        // Bottom Navbar
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: selectedIndex,
          onItemTapped: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
