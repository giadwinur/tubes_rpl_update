import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/artikel/gejala.dart';
import 'package:tubes_rpl_update/dashboard/artikel/info_stunting.dart';
import 'package:tubes_rpl_update/dashboard/artikel/pencegahan.dart';
import 'package:tubes_rpl_update/dashboard/artikel/penyebab.dart';
import 'package:tubes_rpl_update/dashboard/gizi/gizi.dart';
import 'package:tubes_rpl_update/dashboard/judul/text.dart';
import 'package:tubes_rpl_update/widget_library/artikel_comp.dart';
import 'package:tubes_rpl_update/widget_library/cekstun.dart';
import 'package:tubes_rpl_update/widget_library/sub_judul.dart';

import 'widget_library/news_comp.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: AppBar(
          title: const Text(
            'Beranda',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: 230,
              width: width,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/Frame.jpg'), fit: BoxFit.cover),
              ),
              child: const JudulText(),
            ),
            const GiziBeranda(),
            const Align(alignment: Alignment.bottomLeft, child: SubJudul(subjudul: 'Cekstun Tools')),
            const CekStun(),
            const Align(alignment: Alignment.bottomLeft, child: SubJudul(subjudul: 'Berita')),
            const NewsComp(),
            const Align(alignment: Alignment.bottomLeft, child: SubJudul(subjudul: 'Artikel')),
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
        ),
      ),
    );
  }
}
