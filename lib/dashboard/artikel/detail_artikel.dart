import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tubes_rpl_update/backend_artikel/data.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';

class DetailArtikel extends StatelessWidget {
  const DetailArtikel({Key? key}) : super(key: key);

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
        listenTo: dta.rxProductDetail,
        onWaiting: () => const Center(
          child: CircularProgressIndicator(),
        ),
        onError: (error, refreshError) => const Center(child: Text('MAINTENANCE')),
        onData: (data) => SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: width,
                color: Colors.grey.shade100,
                child: Image.network(
                  '${data?.image}',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '${data?.judul}\n',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('${data?.paragraf1}\n'),
                    Text('${data?.paragraf2}\n'),
                    Text('${data?.paragraf3}\n'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
