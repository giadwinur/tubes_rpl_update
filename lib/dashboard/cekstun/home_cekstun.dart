import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/akg/akg.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/imt/imt.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/z_score/data_zscore.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/z_score/z_score.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';
import 'package:tubes_rpl_update/widget_library/tools_comp.dart';

class HomeTools extends StatelessWidget {
  const HomeTools({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(width, 40),
          child: Bar(
            title: 'Cekstun Tools',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ToolsComp(
              ontap: const HitungImt(),
              icon: Icons.accessibility,
              judul: 'Kalkulator IMT',
              subJudul: 'ukur index masa tubuh kamu agar\ntahu status gizi tubuhnya normal atau tidak',
            ),
            ToolsComp(
              ontap: HitungZscore(calculator: dataZscore.calculator),
              icon: Icons.child_care,
              judul: 'Kalkulator z-score',
              subJudul: 'hitung status gizi anak kamu agar mengetahui\nindex pertumbuhannya normal atau tidak',
            ),
            ToolsComp(
              ontap: const HitungAkg(),
              icon: Icons.fastfood,
              judul: 'Kalkulator AKG',
              subJudul: 'ukur index masa tubuh kamu agar\ntahu status gizi tubuhnya normal atau tidak',
            ),
          ],
        ));
  }
}
