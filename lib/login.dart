import 'package:flutter/material.dart';
import 'package:app_nav_3page/mainpage.dart';
import 'package:fluttertoast/fluttertoast.dart';

final userNameController = TextEditingController();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Biodata"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Username'),
                controller: userNameController,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    onPressed: () {
                      print(userNameController.text);

                      if (userNameController.text == "Mohammad Usman Asegaf") {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const MainPage();
                        }));
                      } else if (userNameController.text == "") {
                        Fluttertoast.showToast(
                            msg: "Username tidak boleh kosong",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else
                        (Fluttertoast.showToast(
                            msg: "Username Tidak Terdaftar",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0));
                    },
                    child: const Text("Masuk")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
