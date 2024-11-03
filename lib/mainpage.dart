import 'package:app_nav_3page/login.dart';
import 'package:app_nav_3page/secondpage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = userNameController.text;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SecondPage();
                  }));
                },
                child: const Text("Pindah Halaman")),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Selamat Datang " + userName),
            ),
          ],
        ),
      ),
    );
  }
}
