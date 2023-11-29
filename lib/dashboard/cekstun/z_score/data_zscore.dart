import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/z_score/ctrl_zscore.dart';

final dataZscore = DataZscore();

class DataZscore {
  final CtrlZscore calculator = CtrlZscore();

  TextEditingController usiaController = TextEditingController();
  TextEditingController jenisKelaminController = TextEditingController();
  TextEditingController beratBadanController = TextEditingController();
  TextEditingController tinggiBadanController = TextEditingController();
  TextEditingController imtController = TextEditingController();

  // Tambahkan variabel untuk menyimpan nilai jenis kelamin yang dipilih
  String selectedJenisKelamin = 'L'; //
}
