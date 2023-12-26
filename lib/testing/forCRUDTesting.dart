import 'package:flutter/material.dart';
import 'package:yasi_app/components/InputField.dart';
import 'package:yasi_app/controllers/loginController.dart';

class CrudTest extends StatefulWidget {
  const CrudTest({super.key});

  @override
  State<CrudTest> createState() => _CrudTestState();
}

class _CrudTestState extends State<CrudTest> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'CRUD Testing',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
            const SizedBox(height: 20),
            InputField(
                controller: usernameController,
                labelText: 'Input Username',
                hintText: 'Masukan Username'),
            const SizedBox(height: 20),
            InputField(
                controller: passwordController,
                labelText: 'Input Password',
                hintText: 'Masukan Password'),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  if (usernameController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    SnackBar snackBar = SnackBar(
                      content:
                          Text('Username atau Password tidak boleh kosong!'),
                      action: SnackBarAction(
                        label: 'OK',
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  }
                  loginUser(context, usernameController.text,
                      passwordController.text);
                  // print(controller.text);
                },
                child: const Text('Print to Console!')),
          ],
        ),
      ),
    );
  }
}
