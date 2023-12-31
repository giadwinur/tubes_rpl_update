import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/widget_library/gizi_component.dart';
import 'package:tubes_rpl_update/widget_library/sub_judul.dart';

class KalsiumClass extends StatelessWidget {
  const KalsiumClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubJudul(subjudul: 'Tinggi Kalsium'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GiziComp(image: 'assets/images/keju.jpeg', text: 'Keju'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/bayam.jpg', text: 'Bayam'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/alpukat.jpg', text: 'Alpukat'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/jeruk.jpeg', text: 'Jeruk'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/salmon.jpg', text: 'Salmon'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/oatmeal.jpg', text: 'Oatmeal'),
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
                '⚈   Keju mengandung sekitar 721 mg / 100 gram \n⚈   Bayam mengandung  99 mg / 100 gram,\n⚈   Alpukat mengandung 10,00 mg / 100 gram\n⚈   Jeruk memiliki 40 mg / 100 gram.\n⚈   Salmon mengandung 9 mg / 100 gram\n⚈   OatMeal mencapai 80 mg  / 100  gram')),
      ],
    );
  }
}
