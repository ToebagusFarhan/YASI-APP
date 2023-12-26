import 'package:flutter/material.dart';
import 'package:yasi_app/views/HomePage.dart';
import 'package:yasi_app/views/signalinfoPage.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                //image profile
                Image.asset(
                  'assets/images/profile.png',
                  width: 105,
                  height: 105,
                ),
                const SizedBox(height: 20),
                Text(
                  'Nama user',
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
                Text(
                  'adminyasi@gmail.com',
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
                const SizedBox(height: 30),
                //text 'data diri'
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  color: Color(0xFFFBAA36)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 390,
                      height: 254,
                      decoration: BoxDecoration(color: Color(0xFF5170FD)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //text field 1
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 235,
                                    height: 42,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFB0E9FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Nama',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 2.8,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 42,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFBAA36),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Poppins',
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              //text field 2
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 235,
                                    height: 42,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFB0E9FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Email',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 2.8,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 42,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFBAA36),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Poppins',
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              //text field 3
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 235,
                                    height: 42,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFB0E9FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'No hp',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 2.8,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 42,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFBAA36),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Poppins',
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                //text 'provider'
                const SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Provider',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: Color(0xFFFBAA36)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 390,
                      height: 184,
                      decoration: BoxDecoration(color: Color(0xFF5170FD)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //text field 1
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 235,
                                    height: 42,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFB0E9FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Provider',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 2.8,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 42,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFBAA36),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Poppins',
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              //text field 2
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 235,
                                    height: 42,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFB0E9FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Email',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 2.8,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 42,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFBAA36),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Poppins',
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
