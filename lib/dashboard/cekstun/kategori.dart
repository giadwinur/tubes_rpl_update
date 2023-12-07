import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Kategori extends StatelessWidget {
  Color color;
  String text;
  String range;
  Kategori({
    Key? key,
    required this.color,
    this.text = '',
    this.range = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            height: 90,
            width: 10,
            color: color,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kategori : ${text}',
                style: TextStyle(fontSize: 16.0, color: color),
              ),
              SizedBox(width: 9),
              Text(
                'Hasil IMT : ${range}',
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
