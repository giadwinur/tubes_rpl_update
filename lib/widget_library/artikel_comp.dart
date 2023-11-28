import 'package:flutter/material.dart';

class ArtikelComp extends StatelessWidget {
  final String temaArtikel;
  final String judulArtikel;
  final String image;
  final Widget ontap;

  const ArtikelComp(
      {super.key, required this.temaArtikel, required this.image, required this.judulArtikel, required this.ontap});

  @override
  Widget build(BuildContext context) {
    final lebarLayar = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ontap));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        width: lebarLayar,
        height: 114,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      judulArtikel,
                      style: const TextStyle(
                          fontSize: 15, color: Color.fromARGB(144, 38, 59, 142), fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      temaArtikel,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Container(
                  width: 116,
                  height: 62,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0), image: DecorationImage(image: AssetImage(image))),
                ),
              ],
            ),
            Container(
              height: 1,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
