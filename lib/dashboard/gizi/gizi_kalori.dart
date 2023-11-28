import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/widget_library/gizi_component.dart';

class GiziKalori extends StatelessWidget {
  const GiziKalori({super.key});

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
            GiziComp(image: 'assets/images/telur.jpg', text: 'kalori'),
            SizedBox(width: 30),
            GiziComp(image: 'assets/images/susu.jpg', text: 'kalori'),
            SizedBox(width: 30),
            GiziComp(image: 'assets/images/dada.jpeg', text: 'kalori'),
            SizedBox(width: 30),
            GiziComp(image: 'assets/images/tempe.jpeg', text: 'kalori'),
            SizedBox(width: 30),
            GiziComp(image: 'assets/images/udang.jpg', text: 'kalori'),
            SizedBox(width: 30),
            GiziComp(image: 'assets/images/almond.jpg', text: 'kalori'),
          ],
        ),
      ),
    );
  }
}
