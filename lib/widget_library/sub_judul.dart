import 'package:flutter/material.dart';

class SubJudul extends StatelessWidget {
  final String subjudul;
  const SubJudul({super.key, required this.subjudul});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Text(
        subjudul,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
