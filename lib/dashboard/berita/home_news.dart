import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/listeners/on_reactive.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:tubes_rpl_update/backend_berita/data.dart';
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
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              height: 200,
                              width: double.infinity,
                              color: Colors.grey.shade300,
                              child: Image.network(
                                dt.rxProductList.st[index].image,
                                fit: BoxFit.cover,
                              ),
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
                )));
  }
}
