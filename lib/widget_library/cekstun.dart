import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:tubes_rpl_update/dashboard/cekstun/akg/akg.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/imt/imt.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/z_score/data_zscore.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/z_score/z_score.dart';

class CekStun extends StatefulWidget {
  const CekStun({super.key});

  @override
  State<CekStun> createState() => _CekStunState();
}

class _CekStunState extends State<CekStun> {
  int activeIndex = 0;
  final imageAsset = [
    'assets/images/akg.png',
    'assets/images/z-score.png',
    'assets/images/index.png',
  ];
  final text = [
    'Hitung Angka\nKebutuhan\nGizi (AKG)',
    'Cek Status\nGizi Anak\nZ-Score',
    'Cek Index\nMasa Tubuh\n(IMT)',
  ];
  final ontap = [
    const HitungAkg(),
    HitungZscore(calculator: dataZscore.calculator),
    const HitungImt(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: imageAsset.length,
          itemBuilder: (context, index, reaIndex) {
            final imageAssets = imageAsset[index];
            final texts = text[index];
            final tapWidget = ontap[index];
            return buildImage(imageAssets, texts, index, tapWidget);
          },
          options: CarouselOptions(
            initialPage: 0,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            height: 180,
            autoPlay: true,
            pageSnapping: false,
            onPageChanged: (index, reason) => setState(() => activeIndex = index),
            reverse: true,
            autoPlayInterval: const Duration(seconds: 3),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget buildImage(
    String imageAssets,
    String text,
    int index,
    Widget ontap,
  ) =>
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ontap),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  text,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
            SizedBox(
              height: 180,
              // width: 150,
              child: Image.asset(
                imageAssets,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      );
}
