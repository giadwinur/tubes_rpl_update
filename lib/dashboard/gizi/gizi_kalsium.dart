import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/widget_library/gizi_component.dart';

class GiziKalsium extends StatelessWidget {
  const GiziKalsium({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: width,
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GiziComp(image: 'assets/images/telur.jpg', text: 'kalsium'),
            SizedBox(width: 30),
            GiziComp(image: 'assets/images/susu.jpg', text: 'kalsium'),
            SizedBox(width: 30),
            GiziComp(image: 'assets/images/dada.jpeg', text: 'kalsium'),
            SizedBox(width: 30),
            GiziComp(image: 'assets/images/tempe.jpeg', text: 'kalsium'),
            SizedBox(width: 30),
            GiziComp(image: 'assets/images/udang.jpg', text: 'kalsium'),
            SizedBox(width: 30),
            GiziComp(image: 'assets/images/almond.jpg', text: 'kalsium'),
          ],
        ),
      ),
    );
  }
}
