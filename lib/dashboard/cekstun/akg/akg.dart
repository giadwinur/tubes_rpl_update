import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/akg/akg_data.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/akg/hasil_akg.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';
import 'package:tubes_rpl_update/widget_library/textfield.dart';
import 'package:tubes_rpl_update/widget_library/tombol_hitung.dart';

class HitungAkg extends StatefulWidget {
  const HitungAkg({super.key});

  @override
  State<HitungAkg> createState() => _HitungAkgState();
}

class _HitungAkgState extends State<HitungAkg> {
  void calculateBmr() {
    setState(() {
      double weight = double.parse(dataAkg.weightController.text);
      double height = double.parse(dataAkg.heightController.text);
      int age = int.parse(dataAkg.ageController.text);
      if (dataAkg.gender == 'Male') {
        dataAkg.result = 66.5 + (13.7 * weight) + (5.0 * height) - (6.8 * age);
      } else {
        dataAkg.result = 655.0 + (9.6 * weight) + (1.8 * height) - (4.7 * age);
      }
    });
  }

//*fungsi reset
  void resetFields() {
    setState(() {
      dataAkg.weightController.text = '';
      dataAkg.heightController.text = '';
      dataAkg.ageController.text = '';
      dataAkg.gender = 'Male';
      dataAkg.result = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Hitung AKG',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            FormHitung(
              controller: dataAkg.weightController,
              keyboard: TextInputType.number,
              hintText: 'Berat Badan (kg)',
              labelText: 'Masukan Berat Badan',
            ),
            const SizedBox(height: 40),
            FormHitung(
              controller: dataAkg.heightController,
              keyboard: TextInputType.number,
              hintText: 'Tinggi Badan (cm)',
              labelText: 'Masukan Tinggi Badan',
            ),
            const SizedBox(height: 40),
            FormHitung(
              controller: dataAkg.ageController,
              keyboard: TextInputType.number,
              hintText: 'Usia (tahun)',
              labelText: 'Masukan Usia',
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Radio(
                  value: 'Male',
                  groupValue: dataAkg.gender,
                  onChanged: (value) {
                    setState(() {
                      dataAkg.gender = value.toString();
                    });
                  },
                ),
                const Text('Male'),
                Radio(
                  value: 'Female',
                  groupValue: dataAkg.gender,
                  onChanged: (value) {
                    setState(() {
                      dataAkg.gender = value.toString();
                    });
                  },
                ),
                const Text('Female'),
              ],
            ),
            const SizedBox(height: 40),
            Hitung(
              onpressedHitung: () {
                calculateBmr();
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HasilAkg()));
                debugPrint(' Print dari Hitung');
              },
              onpressedReset: () {
                resetFields();
                debugPrint(' Print dari reset');
              },
            ),
          ],
        ),
      ),
    );
  }
}
