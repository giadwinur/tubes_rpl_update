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
  void calculateAKG() {
    setState(() {
      // Mendapatkan nilai dari controller
      String weightText = dataAkg.weightController.text;
      String heightText = dataAkg.heightController.text;
      String ageText = dataAkg.ageController.text;

      double weight = double.tryParse(weightText) ?? 0.0;
      double height = double.tryParse(heightText) ?? 0.0;
      int age = int.tryParse(ageText) ?? 0;

      // Menghitung BMR
      double bmr;
      if (dataAkg.gender == 'Male') {
        bmr = 66.5 + (13.7 * weight) + (5.0 * height) - (6.8 * age);
      } else {
        bmr = 655.0 + (9.6 * weight) + (1.8 * height) - (4.7 * age);
      }

      // Menghitung AKG berdasarkan BMR dan faktor aktivitas
      double activityFactor = activityLevelFactors[dataAkg.selectedActivityLevel];
      dataAkg.result = bmr * activityFactor;
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
      dataAkg.selectedActivityLevel = 'Jarang Olahraga';
    });
  }

  Map<String, dynamic> activityLevelFactors = {
    'Jarang Olahraga': 1.2,
    '1-2x seminggu': 1.375,
    '3-4x seminggu': 1.55,
    '5-7x seminggu': 1.725,
    'lebih dari 2x seminggu': 1.9,
  };

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
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
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
              const SizedBox(height: 20),
              Text(
                'Kategori Olahraga',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(106, 129, 222, 1),
                ),
              ),
              const SizedBox(height: 10),
              DropdownButton<String>(
                value: dataAkg.selectedActivityLevel,
                onChanged: (String? value) {
                  setState(() {
                    dataAkg.selectedActivityLevel = value!;
                  });
                },
                items: activityLevelFactors.keys
                    .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 10),
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
                  calculateAKG();
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
      ),
    );
  }
}
