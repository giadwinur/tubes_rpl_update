import 'package:flutter/material.dart';

final dataAkg = AkgData();

class AkgData {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  String gender =
      'Male'; //*Properti ini menyimpan jenis kelamin yang akan digunakan dalam perhitungan BMR. Nilai defaultnya diatur ke 'Male'.
  double result = 0.0; //*Properti ini digunakan untuk menyimpan hasil perhitungan BMR. Nilai defaultnya diatur ke 0.0.
}
