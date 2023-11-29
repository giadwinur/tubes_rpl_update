import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/widget_library/gizi_component.dart';
import 'package:tubes_rpl_update/widget_library/sub_judul.dart';

class ProteinClass extends StatelessWidget {
  const ProteinClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubJudul(subjudul: 'Sumber Protein'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GiziComp(image: 'assets/images/telur.jpg', text: 'telur'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/susu.jpg', text: 'susu'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/dada.jpeg', text: 'Ayam'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/tempe.jpeg', text: 'Tempe'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/udang.jpg', text: 'Udang'),
              SizedBox(width: 30),
              GiziComp(image: 'assets/images/almond.jpg', text: 'Almond'),
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.all(20),
            child: Text('Protein berguna untuk pertumbuhan, meningkatkan masa otot, dan fungsi sel')),
        Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
                '⚈   Telur mengandung sekitar 6 gram protein / butir \n⚈   Udang mengandung 24 gram protein / 28 gram\n⚈   Susu mengandung 8 gram protein / cangkir\n⚈   Almond memiliki  6 gram / 28 gram.\n⚈   Ayam mengandung 30 gram protein / 28 gram\n⚈   OatMeal mencapai 80 mg  / 100  gram')),
      ],
    );
  }
}
