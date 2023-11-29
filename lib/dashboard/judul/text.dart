import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/about/about_app.dart';

class JudulText extends StatelessWidget {
  const JudulText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Selamat Datang \nDi Cekstun',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            )),
        Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutApp()));
              },
              style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
              child: const Text(
                "Tentang Aplikasi",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
