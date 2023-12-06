import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/development_booster/injected_form_field/injected_text_editing.dart';
import 'package:tubes_rpl_update/be/ctrl.dart';
import 'package:tubes_rpl_update/be/data.dart';
import 'package:tubes_rpl_update/dashboard/artikel/gejala.dart';
import 'package:tubes_rpl_update/dashboard/artikel/info_stunting.dart';
import 'package:tubes_rpl_update/dashboard/artikel/pencegahan.dart';
import 'package:tubes_rpl_update/dashboard/artikel/penyebab.dart';
import 'package:tubes_rpl_update/widget_library/artikel_comp.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';

class HomeArtikel extends StatelessWidget {
  const HomeArtikel({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(width, 40),
          child: Bar(
            title: 'Artikel',
          ),
        ),
        body: Column(
          children: [
            OnFormBuilder(
              listenTo: dt.rxForm,
              builder: () => TextField(
                focusNode: dt.rxJudul.focusNode,
                controller: dt.rxJudul.controller,
                onEditingComplete: () => dt.rxOntap.focusNode.requestFocus(),
                decoration: InputDecoration(
                  labelText: 'nama',
                  hintText: 'input your product name',
                  errorText: dt.rxJudul.error,
                ),
              ),
            ),
            OnFormBuilder(
              listenTo: dt.rxForm,
              builder: () => ElevatedButton(
                onPressed: dt.rxForm.isValid ? () => ct.submit() : null,
                child: const Text(
                  "submit",
                ),
              ),
            ),
            const ArtikelComp(
                ontap: InfoStunting(),
                temaArtikel: 'Mengenal stunting \npada anak',
                image: 'assets/images/artikel1.png',
                judulArtikel: 'Stunting'),
            const ArtikelComp(
                ontap: PenyebabStunting(),
                temaArtikel: 'Penyebab stunting \npada anak',
                image: 'assets/images/artikel2.jpg',
                judulArtikel: 'Penyebab'),
            const ArtikelComp(
                ontap: GejalaStunting(),
                temaArtikel: 'Gejala Stunting',
                image: 'assets/images/artikel3.webp',
                judulArtikel: 'Gejala'),
            const ArtikelComp(
                ontap: PencegahanStunting(),
                temaArtikel: 'Cegah Stunting',
                image: 'assets/images/artikel4.png',
                judulArtikel: 'Pencegahan'),
          ],
        ));
  }
}
