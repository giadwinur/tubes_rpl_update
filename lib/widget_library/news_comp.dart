import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:url_launcher/url_launcher.dart';

class NewsComp extends StatefulWidget {
  const NewsComp({super.key});

  @override
  State<NewsComp> createState() => _NewsCompState();
}

class _NewsCompState extends State<NewsComp> {
  int activeIndex = 0;
  final imageAsset = [
    'assets/images/news1.png',
    'assets/images/news2.png',
    'assets/images/news3.png',
    'assets/images/news4.png',
  ];
  final urlimage = [
    'https://humbanghasundutankab.go.id/main/index.php/read/news/828',
    'https://dppkbpppa.pontianak.go.id/informasi/berita/ciri-ciri-anak-mengalami-stunting',
    'https://paudpedia.kemdikbud.go.id/berita/149-juta-anak-di-dunia-alami-stunting-sebanyak-63-juta-di-indonesia-wapres-minta-keluarga-prioritaskan-kebutuhan-gizi?do=MTY2NC01YjRhOGZkNA==&ix=MTEtYmJkNjQ3YzA=',
    'https://www.siloamhospitals.com/informasi-siloam/artikel/apa-itu-stunting',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: imageAsset.length,
          itemBuilder: (context, index, reaIndex) {
            final imageAssets = imageAsset[index];
            final urlImage = urlimage[index];
            return buildImage(imageAssets, index, urlImage);
          },
          options: CarouselOptions(
            initialPage: 0,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            height: 170,
            autoPlay: true,
            pageSnapping: false,
            onPageChanged: (index, reason) => setState(() => activeIndex = index),
            reverse: true,
            autoPlayInterval: const Duration(seconds: 2),
          ),
        ),
        const SizedBox(height: 20),
        buildIndicator()
      ],
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageAsset.length,
        effect: const JumpingDotEffect(
          dotWidth: 7,
          dotHeight: 7,
          dotColor: Colors.grey,
        ),
      );

  Widget buildImage(String imageAssets, int index, String urlimage) => InkWell(
        onTap: () async {
          final url = urlimage;

          if (await canLaunchUrl(Uri())) {
            // ignore: deprecated_member_use
            await launch(
              url,
              forceSafariVC: true,
              forceWebView: true,
              enableJavaScript: true,
            );
          }
        },
        child: Container(
          color: Colors.grey,
          child: Image.asset(imageAssets, fit: BoxFit.cover),
        ),
      );
}
