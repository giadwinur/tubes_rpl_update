import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/imt/data_imt.dart';

final ctrlImt = CtrlImt();

class CtrlImt {
  String getConclusion() {
    if (data.result < 18.5) {
      return 'Kategori : Kekurangan Berat';
    } else if (data.result >= 18.5 && data.result <= 25.0) {
      return 'Kategori : Normal';
    } else if (data.result > 25.0 && data.result <= 27.0) {
      return 'Kategori : Kelebihan Berat';
    } else {
      return 'Kategori : Obesitas';
    }
  }

  Color getColorForResult() {
    if (data.result < 18.5) {
      return Colors.blue;
    } else if (data.result >= 18.5 && data.result <= 25.0) {
      return Colors.green;
    } else if (data.result > 25.0 && data.result <= 27.0) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }
}
