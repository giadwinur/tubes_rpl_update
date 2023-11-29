import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HasilComp extends StatelessWidget {
  String hasil;
  String text;

  HasilComp({
    Key? key,
    this.hasil = '',
    this.text = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 9.0),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hasil Perhitungan $text :',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            textAlign: TextAlign.center,
          ),
          Text(
            hasil,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Color.fromRGBO(106, 129, 222, 1),
            ),
          ),
        ],
      ),
    );
  }
}
