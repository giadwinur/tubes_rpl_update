import 'package:flutter/material.dart';

class GiziComp extends StatelessWidget {
  final String image;
  final String text;

  const GiziComp({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 61,
      height: 92,
      child: Center(
        child: Column(
          children: [
            Container(
              width: 61,
              height: 61,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
