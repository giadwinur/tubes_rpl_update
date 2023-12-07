import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/listeners/on_reactive.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:tubes_rpl_update/backend_artikel/ctrl.dart';
import 'package:tubes_rpl_update/backend_artikel/data.dart';
import 'package:tubes_rpl_update/config/xtras.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';

class HomeArtikel extends StatelessWidget {
  const HomeArtikel({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(width, 40),
          child: Bar(
            title: 'Artikel',
          ),
        ),
        body: OnBuilder.all(
            listenToMany: [dta.rxproductloader, dta.rxProductList],
            onWaiting: () => const Center(child: CircularProgressIndicator()),
            onError: (error, refreshError) => const Text('error wae'),
            onData: (data) => Center(
                  child: ListView(
                    children: [
                      ...List.generate(
                        //*---dengan Product List----
                        dta.rxProductList.st.length,
                        //*---Ta,npa Product List----
                        // data.length,
                        (index) => OnReactive(
                          () => Container(
                            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                            width: width,
                            height: 114,
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
                                              textAlign: TextAlign.left,
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
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )));
  }
}
