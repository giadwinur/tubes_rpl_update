import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/listeners/on_reactive.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:tubes_rpl_update/be/ctrl.dart';
import 'package:tubes_rpl_update/be/data.dart';
import 'package:tubes_rpl_update/config/xtras.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeNews extends StatelessWidget {
  const HomeNews({super.key});

  get url => null;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(width, 40),
            child: Bar(
              title: 'Berita',
            )),
        body: OnBuilder.all(
            listenToMany: [dt.rxproductloader, dt.rxProductList],
            onWaiting: () => const Center(child: CircularProgressIndicator()),
            onError: (error, refreshError) => const Text('error wae'),
            onData: (data) => Center(
                  child: ListView(
                    children: [
                      ...List.generate(
                        //*---dengan Product List----
                        dt.rxProductList.st.length,
                        //*---Ta,npa Product List----
                        // data.length,
                        (index) => OnReactive(
                          () => InkWell(
                            onTap: () async {
                              final Uri url = Uri.parse(dt.rxProductList.st[index].ontap);

                              if (!await launchUrl(url)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Column(
                              children: [
                                Text(dt.rxProductList.st[index].judul),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 200,
                                  color: Colors.amber,
                                  child: Image.network(
                                    dt.rxProductList.st[index].image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Center(
                      //   child: dt.rxIsEnd.st == true
                      //       ? const Column(
                      //           children: [
                      //             SizedBox(height: 20),
                      //             Text('Data Sudah Habis'),
                      //           ],
                      //         )
                      //       : OutlinedButton(
                      //           onPressed: () {
                      //             ct.getProductLoader();
                      //           },
                      //           child: const Text('load more ...'),
                      //         ),
                      // ),
                    ],
                  ),
                ))

        // SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       CompNews(
        //         image: 'assets/images/news1.png',
        //         link: 'https://humbanghasundutankab.go.id/main/index.php/read/news/828',
        //       ),
        //       const SizedBox(height: 20),
        //       CompNews(
        //         image: 'assets/images/news2.png',
        //         link: 'https://dppkbpppa.pontianak.go.id/informasi/berita/ciri-ciri-anak-mengalami-stunting828',
        //       ),
        //       const SizedBox(height: 20),
        //       CompNews(
        //         image: 'assets/images/news3.png',
        //         link:
        //             'https://paudpedia.kemdikbud.go.id/berita/149-juta-anak-di-dunia-alami-stunting-sebanyak-63-juta-di-indonesia-wapres-minta-keluarga-prioritaskan-kebutuhan-gizi?do=MTY2NC01YjRhOGZkNA==&ix=MTEtYmJkNjQ3YzA=',
        //       ),
        //       const SizedBox(height: 20),
        //       CompNews(
        //         image: 'assets/images/news4.png',
        //         link: 'https://www.siloamhospitals.com/informasi-siloam/artikel/apa-itu-stunting',
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
