import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/imt/controller_imt.dart';
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
            hasil: data.result.toStringAsFixed(2),
            text: 'IMT',
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  ctrlImt.getConclusion(),
                  style: TextStyle(
                    fontSize: 16.0,
                    color: ctrlImt.getColorForResult(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
