import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:tubes_rpl_update/dashboard/cekstun/akg.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/z_score.dart';

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
    // 'assets/images/imt.png',
  ];
  final text = [
    'Hitung Angka\nKebutuhan\nGizi (AKG)',
    'Cek Status\nGizi Anak\nZ-Score',
    // 'Cek Index\nMasa Tubuh\n(IMT)',
  ];
  final ontap = [
    const HitungAkg(),
    const HitungZscore(),
    // const HitungImt(),
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
            height: 170,
            autoPlay: true,
            pageSnapping: false,
            onPageChanged: (index, reason) => setState(() => activeIndex = index),
            reverse: true,
            autoPlayInterval: const Duration(seconds: 2),
          ),
        ),
        const SizedBox(height: 20),
        buildIndicator()
      ],
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageAsset.length,
        effect: const JumpingDotEffect(
          dotWidth: 9,
          dotHeight: 9,
          dotColor: Colors.grey,
        ),
      );

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
            Padding(padding: const EdgeInsets.only(left: 20), child: Text(text)),
            Image.asset(
              imageAssets,
              fit: BoxFit.fill,
            ),
          ],
        ),
      );
}
