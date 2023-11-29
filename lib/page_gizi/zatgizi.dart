import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/widget_library/gizi_component.dart';
import 'package:tubes_rpl_update/widget_library/sub_judul.dart';

class ZatGizi extends StatelessWidget {
  const ZatGizi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubJudul(subjudul: 'Mengandung Zat Gizi'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GiziComp(image: 'assets/images/nasi.jpg', text: 'Nasi'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/sapi.jpg', text: 'Sapi'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/tahu.jpg', text: 'Tahu'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/brokoli.jpg', text: 'Brokoli'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/tuna.jpg', text: 'Tuna'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/kismis.jpg', text: 'Kismis'),
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.all(20),
            child: Text(
                'Kalsium adalah mineral yang amat penting bagi manusia, antara lain bagi metabolisme tubuh, penghubung antar saraf, kerja jantung, dan pergerakan otot.')),
        Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
                '⚈   Nasi Putih mengandung sekitar 7,97 zat besi \n⚈   Daging Sapi mengandung  5,24 miligram / 85 gram\n⚈   Tahu mengandung 3 miligram zat besi\n⚈   Brokoli memiliki 0.75 miligram / 100 gram\n⚈   Tuna mengandung 2,52 miligram / 165 gram\n⚈   Kismis mencapai 1,9 miligram  / 100  gram')),
      ],
    );
  }
}
