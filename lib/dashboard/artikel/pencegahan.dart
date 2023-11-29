import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/artikel/artikel_comp.dart';
import 'package:tubes_rpl_update/widget_library/sub_judul.dart';

import '../../widget_library/bar.dart';

class PencegahanStunting extends StatelessWidget {
  const PencegahanStunting({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Pencegahan Stunting',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ArtikelComponent(image: 'assets/images/cegah.jpg'),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubJudul(subjudul: 'Cegah Stunting Sejak Usia Dini'),
                  Text(
                      'Gangguan tumbuh kembang akibat stunting bersifat menetap, yang artinya tidak dapat diatasi. Namun, kondisi tersebut sangat bisa dicegah, terutama pada saat 1.000 hari pertama kehidupan anak.'),
                  Text(
                      '\nBerikut adalah beberapa cara mencegah stunting pada anak:\n\n⚈   Penuhi kecukupan nutrisi ibu selama kehamilan dan menyusui, terutama zat besi, asam folat, dan yodium\n⚈   Lakukan inisiasi menyusui dini dan memberikan ASI eksklusif kepada anak\n⚈   Biasakan berperilaku hidup bersih dan sehat untuk mencegah anak terkena penyakit infeksi, seperti mencuci tangan menggunakan sabun dan air, terutama sebelum menyiapkan makanan dan setelah buang air besar atau buang air kecil, dan mencuci peralatan makan dengan sabun cuci piring.'),
                  Text(
                      '\nSelain itu, orang tua juga perlu memeriksakan anak ke Posyandu atau Puskesmas secara rutin. Hal ini dilakukan agar kenaikan berat badan dan tinggi badan anak dapat dipantau untuk kemudian dibandingkan dengan kurva pertumbuhan dari WHO.'),
                  Text(
                      '\nPemeriksaan rutin tersebut dianjurkan untuk dilakukan setiap bulan bagi anak berusia di bawah 1 tahun dan setiap 3 bulan bagi anak berusia 1–2 tahun.Selain untuk memantau tinggi badan dan berat badan anak, pemeriksaan rutin ini juga diperlukan untuk mengevaluasi kemungkinan terjadinya infeksi pada anak, seperti cacingan, TBC, infeksi saluran kencing, dan diare berulang.'),
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
