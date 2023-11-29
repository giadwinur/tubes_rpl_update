import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/gizi/home_gizi.dart';

class GiziBeranda extends StatelessWidget {
  const GiziBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 220,
      decoration:
          const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/gizi.jpg'), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'PERHATIKAN GIZI\nUNTUK PETUMBUHAN ANAK',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 25,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeGizi()));
              },
              child: const Text(
                "  L  I  H  A  T  ",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
