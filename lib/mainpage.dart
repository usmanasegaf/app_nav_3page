import 'package:app_nav_3page/login.dart';
import 'package:app_nav_3page/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = userNameController.text;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/background_1.svg',
            alignment: Alignment.bottomCenter,
            width: 2560.0,
            height: 1440.0,
            fit: BoxFit.scaleDown,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/foto_profil_rb.jpg',
                        height: 220.0,
                        width: 220.0,
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SecondPage();
                        }));
                      },
                      child: const Text(
                        "Pindah Halaman",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Selamat Datang " + userName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
