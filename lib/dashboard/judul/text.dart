import 'package:flutter/material.dart';

class JudulText extends StatelessWidget {
  const JudulText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // const Align(
        //   alignment: Alignment.bottomLeft,
        //   child: Text(
        //     'HELLO\nEVERYONE',
        //     style: TextStyle(fontSize: 30),
        //     textAlign: TextAlign.left,
        //   ),
        // ),
        const Align(alignment: Alignment.bottomLeft, child: Text('Selamat Datang \nDi Cekstun')),
        Align(
          alignment: Alignment.bottomLeft,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
            child: const Text(
              "About Us",
            ),
          ),
        ),
      ],
    );
  }
}
