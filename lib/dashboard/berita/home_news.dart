import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/berita/component_home.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CompNews(
              image: 'assets/images/news1.png',
              link: 'https://humbanghasundutankab.go.id/main/index.php/read/news/828',
            ),
            const SizedBox(height: 20),
            CompNews(
              image: 'assets/images/news2.png',
              link: 'https://dppkbpppa.pontianak.go.id/informasi/berita/ciri-ciri-anak-mengalami-stunting828',
            ),
            const SizedBox(height: 20),
            CompNews(
              image: 'assets/images/news3.png',
              link:
                  'https://paudpedia.kemdikbud.go.id/berita/149-juta-anak-di-dunia-alami-stunting-sebanyak-63-juta-di-indonesia-wapres-minta-keluarga-prioritaskan-kebutuhan-gizi?do=MTY2NC01YjRhOGZkNA==&ix=MTEtYmJkNjQ3YzA=',
            ),
            const SizedBox(height: 20),
            CompNews(
              image: 'assets/images/news4.png',
              link: 'https://www.siloamhospitals.com/informasi-siloam/artikel/apa-itu-stunting',
            ),
          ],
        ),
      ),
    );
  }
}
