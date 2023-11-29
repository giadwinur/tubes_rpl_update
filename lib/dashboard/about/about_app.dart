import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';
import 'package:tubes_rpl_update/widget_library/sub_judul.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Tentang Aplikasi',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SubJudul(subjudul: 'TENTANG APLIKASI'),
                  const Text(
                      'Aplikasi tentang stunting dapat dirancang untuk memberikan informasi, edukasi, dan dukungan kepada orang tua, pengasuh, serta masyarakat umum. \nBerikut adalah penjelasan tentang aplikasi cekstun :'),
                  const Text(
                      '\nCekstun adalah aplikasi yang bertujuan untuk mengedukasi dan memberikan dukungan terkait stunting, kondisi pertumbuhan anak yang terhambat akibat kekurangan gizi dalam jangka waktu yang panjang. Aplikasi ini didesain untuk memberikan informasi yang mudah dipahami dan berguna bagi orang tua, pengasuh, dan tenaga kesehatan dalam upaya mencegah serta mengatasi stunting pada anak-anak.'),
                  const SubJudul(subjudul: 'Fitur Aplikasi'),
                  const Text(
                      '1. Panduan Gizi Sehat : \nInformasi tentang nutrisi yang diperlukan untuk pertumbuhan optimal anak, makanan sehat dan  bergizi untuk membantu orang tua menyusun menu harian.\n'),
                  const Text(
                      '2. Pemantauan Pertumbuhan Anak : \nFitur untuk menghitung perkembangan fisik anak, melalui perhitungan z-score, \nFitur untuk menghitung angka kebutuhan gizi pada anak,\nFitur untuk menghitung index masa tubuh\n'),
                  const Text(
                      '3. Artikel dan Berita Terbaru: \nInformasi terkini tentang riset terbaru, perubahan pedoman gizi, dan berita terkait stunting\n'),
                  const Text(
                      '4. Edukasi stunting \nInformasi dasar tentang pengertian stunting, penyebab, gejala dan pencegahan yang harus dilakukan\n'),
                  const SubJudul(subjudul: 'Depelover'),
                  TextButton(
                    onPressed: () async {
                      final Uri url = Uri.parse('https://dhea-25a5e.web.app');

                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    },
                    child: const Text('⚈   https://dhea-25a5e.web.app'),
                  ),
                  TextButton(
                    onPressed: () async {
                      final Uri url = Uri.parse('https://giadwi.web.app');

                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    },
                    child: const Text('⚈   https://giadwi.web.app'),
                  ),
                  TextButton(
                    onPressed: () async {
                      final Uri url = Uri.parse('https://nadhilahaz.web.app/');

                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    },
                    child: const Text('⚈   https://nadhilahaz.web.app'),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              color: const Color.fromRGBO(106, 129, 222, 1),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Give Us Feedback',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
