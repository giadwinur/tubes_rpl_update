import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/listeners/on_reactive.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:tubes_rpl_update/backend_artikel/data.dart';
import 'package:tubes_rpl_update/config/xtras.dart';
import 'package:tubes_rpl_update/dashboard/gizi/gizi.dart';
import 'package:tubes_rpl_update/dashboard/judul/text.dart';
import 'package:tubes_rpl_update/widget_library/cekstun.dart';
import 'package:tubes_rpl_update/widget_library/sub_judul.dart';

import 'backend_artikel/ctrl.dart';
import 'widget_library/news_comp.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: OnBuilder.all(
        listenToMany: [dta.rxproductloader, dta.rxProductList],
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (error, refreshError) => const Text('error wae'),
        onData: (data) => ListView(
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
            ...List.generate(
              //*---dengan Product List----
              dta.rxProductList.st.length,
              //*---Ta,npa Product List----
              // data.length,
              (index) => OnReactive(
                () => Container(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                  width: width,
                  child: InkWell(
                    onTap: () {
                      cta.select(dta.rxProductList.st[index].id, context);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dta.rxProductList.st[index].tema,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(106, 129, 222, 1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 7),
                                  Text(
                                    dta.rxProductList.st[index].judul,
                                    style: const TextStyle(fontSize: 15),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 116,
                              height: 62,
                              color: Colors.grey.shade300,
                              child: Image.network(
                                dta.rxProductList.st[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // const ArtikelComp(
            //     ontap: InfoStunting(),
            //     temaArtikel: 'Mengenal stunting \npada anak',
            //     image: 'assets/images/artikel1.png',
            //     judulArtikel: 'Stunting'),
            // const ArtikelComp(
            //     ontap: PenyebabStunting(),
            //     temaArtikel: 'Penyebab stunting \npada anak',
            //     image: 'assets/images/artikel2.jpg',
            //     judulArtikel: 'Penyebab'),
            // const ArtikelComp(
            //     ontap: GejalaStunting(),
            //     temaArtikel: 'Gejala Stunting',
            //     image: 'assets/images/artikel3.webp',
            //     judulArtikel: 'Gejala'),
            // const ArtikelComp(
            //     ontap: PencegahanStunting(),
            //     temaArtikel: 'Cegah Stunting',
            //     image: 'assets/images/artikel4.png',
            //     judulArtikel: 'Pencegahan'),
          ],
        ),
      ),

      // Column(
      //   children: [
      //     Container(
      //       padding: const EdgeInsets.all(20),
      //       height: 230,
      //       width: width,
      //       decoration: const BoxDecoration(
      //         image: DecorationImage(image: AssetImage('assets/images/Frame.jpg'), fit: BoxFit.cover),
      //       ),
      //       child: const JudulText(),
      //     ),
      //     const GiziBeranda(),
      //     const Align(alignment: Alignment.bottomLeft, child: SubJudul(subjudul: 'Cekstun Tools')),
      //     const CekStun(),
      //     const Align(alignment: Alignment.bottomLeft, child: SubJudul(subjudul: 'Berita')),
      //     const NewsComp(),
      //     const Align(alignment: Alignment.bottomLeft, child: SubJudul(subjudul: 'Artikel')),
      //     // HomeArtikel(),
      //     const ArtikelComp(
      //         ontap: InfoStunting(),
      //         temaArtikel: 'Mengenal stunting \npada anak',
      //         image: 'assets/images/artikel1.png',
      //         judulArtikel: 'Stunting'),
      //     const ArtikelComp(
      //         ontap: PenyebabStunting(),
      //         temaArtikel: 'Penyebab stunting \npada anak',
      //         image: 'assets/images/artikel2.jpg',
      //         judulArtikel: 'Penyebab'),
      //     const ArtikelComp(
      //         ontap: GejalaStunting(),
      //         temaArtikel: 'Gejala Stunting',
      //         image: 'assets/images/artikel3.webp',
      //         judulArtikel: 'Gejala'),
      //     const ArtikelComp(
      //         ontap: PencegahanStunting(),
      //         temaArtikel: 'Cegah Stunting',
      //         image: 'assets/images/artikel4.png',
      //         judulArtikel: 'Pencegahan'),
      //   ],
      // ),
    );
  }
}
