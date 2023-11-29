import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/artikel/artikel_comp.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';
import 'package:tubes_rpl_update/widget_library/sub_judul.dart';

class GejalaStunting extends StatelessWidget {
  const GejalaStunting({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Gejala Stunting',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ArtikelComponent(image: 'assets/images/gejala.png'),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubJudul(subjudul: 'Gejala Stunting Pada anak'),
                  Text(
                      'Perlu dipahami bahwa tidak semua pertumbuhan perkembangan balita yang berperawakan pendek mengalami stunting.Melainkan, stunting ditandai keadaan tubuh yang sangat pendek dilihat dari standar baku pengukuran tinggi badan menurut usia dari WHO. \n\nMenurut Kemenkes RI, balita bisa diketahui stunting bila sudah diukur panjang atau tinggi badannya, lalu dibandingkan dengan standar, dan hasil pengukurannya ini berada pada kisaran di bawah normal.\n\nJadi tidak bisa hanya dikira-kira atau ditebak saja tanpa pengukuran. Selain tubuh yang berperawakan pendek dari anak seusianya, ada juga ciri-ciri lainnya yakni sebagai berikut.'),
                  Text(
                      '\n⚈   Pertumbuhan melambat \n⚈   Wajah tampak lebih muda dari anak seusianya\n⚈   Pertumbuhan gigi terlambat\n⚈   Performa buruk pada kemampuan fokus dan \n       memori belajarnya.\n⚈   Berat badan balita tidak naik bahkan cenderung\n      menurun \n⚈   Berat badan balita tidak naik bahkan cenderung\n      menurun \n⚈   Anak mudah terserang berbagai penyakit infeksi\n⚈   Anak mudah terserang berbagai penyakit infeksi \n⚈   Perkembangan tubuh anak terhambat, seperti telat \n     menstruasi pertama anak perempuan \n\nSementara untuk tahu apakah tinggi badan anak normal atau tidak, tetap harus secara rutin memeriksakannya ke pelayanan kesehatan terdekat.'),
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
