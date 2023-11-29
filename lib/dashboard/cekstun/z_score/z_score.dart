import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/z_score/ctrl_zscore.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/z_score/data_zscore.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/z_score/hasil_zscore.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';
import 'package:tubes_rpl_update/widget_library/sub_judul.dart';
import 'package:tubes_rpl_update/widget_library/textfield.dart';
import 'package:tubes_rpl_update/widget_library/tombol_hitung.dart';

class HitungZscore extends StatefulWidget {
  final CtrlZscore calculator;

  const HitungZscore({super.key, required this.calculator});

  @override
  State<HitungZscore> createState() => _HitungZscoreState();
}

class _HitungZscoreState extends State<HitungZscore> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Hitung Z-SCORE',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormHitung(
              controller: dataZscore.usiaController,
              keyboard: TextInputType.number,
              hintText: 'Usia (bulan)',
              labelText: 'Masukan Usia Anak (bulan)'),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SubJudul(subjudul: 'Jenis Kelamin'),
                DropdownButton<String>(
                  value: dataZscore.selectedJenisKelamin,
                  onChanged: (String? newValue) {
                    setState(() {
                      dataZscore.selectedJenisKelamin = newValue!;
                    });
                  },
                  items: <String>['L', 'P'].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          FormHitung(
              controller: dataZscore.beratBadanController,
              keyboard: TextInputType.number,
              hintText: 'Berat Badan (kg)',
              labelText: 'Masukan Berat Badan (kg)'),
          const SizedBox(height: 20),
          FormHitung(
              controller: dataZscore.tinggiBadanController,
              keyboard: TextInputType.number,
              hintText: 'Tinggi Badan (cm)',
              labelText: 'Masukan Tinggi Badan (cm)'),
          const SizedBox(height: 20),
          FormHitung(
              controller: dataZscore.imtController,
              keyboard: TextInputType.number,
              hintText: 'Indeks masa tubuh (IMT)',
              labelText: 'Masukan Indeks Masa Tubuh (IMT)'),
          const SizedBox(height: 20),
          Hitung(
            onpressedHitung: () {
              navigateToResultPage(context);

              debugPrint(' Print dari Hitung');
            },
            onpressedReset: () {
              resetForm();

              debugPrint(' Print dari reset');
            },
          )
        ],
      ),
    );
  }

  void navigateToResultPage(BuildContext context) {
    int usia = int.tryParse(dataZscore.usiaController.text) ?? 0;
    String jenisKelamin = dataZscore.selectedJenisKelamin;
    double beratBadan = double.tryParse(dataZscore.beratBadanController.text) ?? 0;
    double tinggiBadan = double.tryParse(dataZscore.tinggiBadanController.text) ?? 0;
    double imt = double.tryParse(dataZscore.imtController.text) ?? 0;

    // Use the correct method name
    Map<String, dynamic> result = widget.calculator.calculateZScoresAndClassifications(
      usia,
      jenisKelamin,
      beratBadan,
      tinggiBadan,
      imt,
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HasilZscore(zScores: result),
      ),
    );
  }

  void resetForm() {
    dataZscore.usiaController.clear();
    // Reset selectedJenisKelamin ke nilai default
    dataZscore.selectedJenisKelamin = 'L';
    dataZscore.beratBadanController.clear();
    dataZscore.tinggiBadanController.clear();
    dataZscore.imtController.clear();
  }
}
