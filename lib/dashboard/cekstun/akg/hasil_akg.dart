import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/akg/akg_data.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';
import 'package:tubes_rpl_update/widget_library/hasil_comp1.dart';

class HasilAkg extends StatelessWidget {
  const HasilAkg({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Hasil AKG',
        ),
      ),
      body: Column(
        children: [
          HasilComp(
            hasil: dataAkg.result.toStringAsFixed(2),
            text: 'AKG',
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kamu Membutuhkan : ${dataAkg.result.toStringAsFixed(2)}, Per-Hari'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
