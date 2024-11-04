import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ClipOval(
                      child: Image.asset(
                    'assets/foto_profil_rb.jpg',
                    height: 220.0,
                    width: 220.0,
                  )),
                ),
                const Text(
                  "Nama:    Mohammad Usman Asegaf\n" +
                      "Hobi:    Olahraga\n" +
                      "TTL:   Bandung, 5 Juni 2002\n" +
                      "Alamat:    Cimahi selatan, Perumnas Gg Nusa Indah 4 No 29\n" +
                      "Universitas:   Universitas Teknologi Bandung\n" +
                      "Jurusan:   Teknik Informatika\n" +
                      "Pengalaman:    SR Offset(Logistik), Remotask(QA, Reviewer)\n",
                  textAlign: TextAlign.start,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Back",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
