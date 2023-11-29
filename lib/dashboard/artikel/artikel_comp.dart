import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArtikelComponent extends StatelessWidget {
  String image;
  ArtikelComponent({
    Key? key,
    this.image = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 158,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
    );
  }
}
