import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/imt/controller_imt.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/kategori.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';

import '../../../widget_library/hasil_comp1.dart';
import 'data_imt.dart';

class HasilIMT extends StatelessWidget {
  const HasilIMT({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Hasil IMT',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HasilComp(
            text: 'IMT',
            hasil: '${data.result.toStringAsFixed(2)}',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Kategori(
                color: Colors.blue,
                text: 'Kekurangan Berat',
                range: '< 18.5',
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              Kategori(
                color: Colors.green,
                text: 'Normal',
                range: '>= 18.5 & <= 25.0',
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              Kategori(
                color: Colors.orange,
                text: 'Kelebihan Berat',
                range: '> 25.0 & <= 27.0',
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              Kategori(
                color: Colors.red,
                text: 'Obesitas',
                range: '> 27.0',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
