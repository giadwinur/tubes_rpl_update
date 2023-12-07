import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tubes_rpl_update/backend_berita/ctrl.dart';
import 'package:tubes_rpl_update/backend_berita/xtra/prov.dart';
import 'package:tubes_rpl_update/config/validator.dart';

final dt = Data();

class Data {
  final rxproductloader = pv.rxproductloader;

  final rxProductList = pv.rxProductList;

  final rxIsEnd = pv.rxIsEnd;

  final rxForm = RM.injectForm(
      submit: () async => await ct.createproduct(),

      //*error berdasarkan ketikan user
      autovalidateMode: AutovalidateMode.onUserInteraction);

  final rxJudul = RM.injectTextEditing(
    // text: 'product baru',
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxImage = RM.injectTextEditing(
    // text: 'product baru',
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxOntap = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );
}
