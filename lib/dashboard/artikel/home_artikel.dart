import 'package:flutter/material.dart';
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
        body: const Column(
          children: [
            ArtikelComp(
                ontap: InfoStunting(),
                temaArtikel: 'Mengenal stunting \npada anak',
                image: 'assets/images/artikel1.png',
                judulArtikel: 'Stunting'),
            ArtikelComp(
                ontap: PenyebabStunting(),
                temaArtikel: 'Penyebab stunting \npada anak',
                image: 'assets/images/artikel2.jpg',
                judulArtikel: 'Penyebab'),
            ArtikelComp(
                ontap: GejalaStunting(),
                temaArtikel: 'Gejala Stunting',
                image: 'assets/images/artikel3.webp',
                judulArtikel: 'Gejala'),
            ArtikelComp(
                ontap: PencegahanStunting(),
                temaArtikel: 'Cegah Stunting',
                image: 'assets/images/artikel4.png',
                judulArtikel: 'Pencegahan'),
          ],
        ));
  }
}
