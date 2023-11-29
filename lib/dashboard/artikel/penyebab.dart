import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/artikel/artikel_comp.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';
import 'package:tubes_rpl_update/widget_library/sub_judul.dart';

class PenyebabStunting extends StatelessWidget {
  const PenyebabStunting({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Penyebab',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ArtikelComponent(image: 'assets/images/penyebab.jpg'),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubJudul(subjudul: 'Penyebab Anak mengalami stunting ?'),
                  Text(
                      'Penyebab stunting yang biasanya terjadi pada masa kanak-kanak, terutama pada dua tahun pertama kehidupan adalah kekurangan gizi kronis, terutama kekurangan gizi dalam jangka waktu yang panjang. Faktor-faktor yang dapat menyebabkan stunting antara lain : '),
                  Text(
                      '\n1.   Ibu hamil kekurangan asupan gizi\nKurangnya asupan gizi ini bisa membuat ibu hamil mengalami anemia defisiensi zat besi. Akibatnya, kondisi ini bisa menghambat pertumbuhan janin.\n\n2.   Pola makan tidak seimbang\n Pola makan yang tidak seimbang, seperti kurangnya konsumsi sayuran, buah-buahan, dan sumber protein, dapat menyebabkan anak kekurangan nutrisi penting untuk mencapai pertumbuhan optimal\n\n3.   Perawatan yang tidak memadai usai melahirkan\nBukan hanya bayinya saja, ibu juga butuh perawatan yang memadai pasca melahirkan. Tujuannya agar ibu bisa memberikan ASI yang memadai untuk Si Kecil. Ingat, ASI sangat penting untuk 1.000 hari pertama bayi karena bisa memperkuat imunitasnya.\n\n4.   Gizi anak yang tidak terpenuhi\nAnak perlu mendapatkan nutrisi yang cukup pada 2 tahun pertama kehidupannya. Sebab, kurangnya asupan nutrisi seperti protein, zinc (seng) dan zat besi menjadi faktor utama penyebab terhambatnya pertumbuhan fisik anak\n\n5.   Pola asuh orang tua\nPola asuh nyatanya sangat berperan dalam tumbuh kembang anak. Nah, pola asuh yang kurang efektif bahkan bisa melatarbelakangi terjadinya stunting. Pasalnya, hal ini berkaitan erat dengan praktik pemberian makanan kepada anak. Ketika orang tua tidak memperhatikan asupan gizi yang Si Kecil butuhkan, risiko stunting tidak bisa kamu hindari\n\n6.   Infeksi berulang\nAnak yang memiliki imunitas lemah cenderung mudah sakit. Nah, infeksi yang berulang-ulang ini lambat laun bisa menghambat proses pertumbuhannya hingga berujung stunting.\n\n7.   Sanitasi yang kurang baik\nKeterbatasan akses untuk air bersih ternyata juga berperan dalam risiko stunting. Pasalnya, anak yang tumbuh lingkungan dengan sanitasi dan kondisi air yang tidak layak cenderung mudah terkena penyakit.'),
                  SizedBox(height: 30)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
