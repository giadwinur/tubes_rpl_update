import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/artikel/artikel_comp.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';
import 'package:tubes_rpl_update/widget_library/sub_judul.dart';

class InfoStunting extends StatelessWidget {
  const InfoStunting({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Stunting',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ArtikelComponent(image: 'assets/images/stunting.jpeg'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SubJudul(subjudul: 'Apa Itu Stunting ?'),
                  const Text(
                      'Stunting adalah mengacu pada anak yang terlalu pendek menurut usianya. Stunting juga memiliki dampak yang serius baik dalam jangka pendek maupun jangka panjang, dampak yang langsung maupun tidak langsung, seperti menghambat perkembangan kognitif anak, prestasi sekolah anak, memiliki prospek masa depan yang tidak baik, bahkan secara nasional berdampak pada tingkat kematian serta produktivitas ekonomi suatu negara. '),
                  Container(
                    height: 158,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/who.jpg'), fit: BoxFit.fitWidth),
                    ),
                  ),
                  const Text(
                      'Menurut WHO (2015), stunting adalah gangguan pertumbuhan dan perkembangan anak akibat kekurangan gizi kronis dan infeksi berulang, yang ditandai dengan panjang atau tinggi badannya berada di bawah standar. \n\nAnak dikatakan mengalami stunting jika memiliki tinggi badan yang lebih pendek daripada anak lain seusianya, atau tinggi badan anak berada di bawah standar kurva pertumbuhan yang dibuat oleh Badan Kesehatan Dunia (WHO).'),
                  const SizedBox(height: 30)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
