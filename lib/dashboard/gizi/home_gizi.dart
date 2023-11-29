import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/page_gizi/kalsium.dart';
import 'package:tubes_rpl_update/page_gizi/protein.dart';
import 'package:tubes_rpl_update/page_gizi/zatgizi.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';

class HomeGizi extends StatelessWidget {
  const HomeGizi({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(width, 40),
          child: Bar(
            title: 'Informasi Gizi',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                height: 158,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/gizi.jpg'), fit: BoxFit.cover)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'PERHATIKAN GIZI\nUNTUK PETUMBUHAN ANAK',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Tinggi badan buah hati tidak hanya dipengaruhi oleh faktor genetik, tetapi juga pemberian nutrisi yang terbaik. Nutrisi adalah stimulus bagi organ tubuh untuk diserap dan diolah manfaatnya berikut adalah nutrisi yang baik untuk pertumbuhan yang bisa dapatkan di makanan dan minuman berikut ini :',
                  textAlign: TextAlign.left,
                ),
              ),
              const ProteinClass(),
              const KalsiumClass(),
              const ZatGizi()
            ],
          ),
        ));
  }
}
