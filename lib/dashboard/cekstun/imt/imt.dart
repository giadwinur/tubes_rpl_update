import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/imt/hasil_imt.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/imt/data_imt.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';
import 'package:tubes_rpl_update/widget_library/textfield.dart';
import 'package:tubes_rpl_update/widget_library/tombol_hitung.dart';

class HitungImt extends StatefulWidget {
  const HitungImt({super.key});

  @override
  State<HitungImt> createState() => _HitungImtState();
}

class _HitungImtState extends State<HitungImt> {
  void calculateIMT() {
    double weight = double.parse(data.weightController.text);
    double height = double.parse(data.heightController.text) / 100; // Convert height to meters
    double imt = weight / (height * height);
    setState(() {
      data.result = imt; // Mengubah nilai result untuk memperbarui tampilan
    });
  }

  void resetValues() {
    setState(() {
      data.weightController.clear();
      data.heightController.clear();
      data.result = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Hitung IMT',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormHitung(
                controller: data.weightController,
                keyboard: TextInputType.number,
                hintText: 'Berat Badan',
                labelText: 'Masukan Berat Badan'),
            const SizedBox(height: 30),
            FormHitung(
                controller: data.heightController,
                keyboard: TextInputType.number,
                hintText: 'Tinggi Badan',
                labelText: 'Masukan Tinggi Badan'),
            const SizedBox(height: 30),
            Hitung(
              onpressedHitung: () {
                calculateIMT();
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HasilIMT()));
                debugPrint(' Print dari Hitung');
              },
              onpressedReset: () {
                resetValues();
                debugPrint(' Print dari reset');
              },
            )
          ],
        ),
      ),
    );
  }
}
