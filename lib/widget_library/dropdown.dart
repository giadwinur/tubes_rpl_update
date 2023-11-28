import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tubes_rpl_update/dashboard/gizi/gizi.dart';
import 'package:tubes_rpl_update/dashboard/gizi/gizi_kalori.dart';
import 'package:tubes_rpl_update/dashboard/gizi/gizi_kalsium.dart';

class DropGizi extends StatefulWidget {
  const DropGizi({super.key});

  @override
  State<DropGizi> createState() => _DropGiziState();
}

class _DropGiziState extends State<DropGizi> {
  final items = ['tinggi protein', 'tinggi kalsium', 'tinggi kalori'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        // selectedItemBuilder: DropController().,
        padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
        value: value,
        items: items.map(buildMenuItem).toList(),
        onChanged: (value) => setState(() => this.value = value));
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item),
      );
}

class DropController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const GiziProtein(),
    const GiziKalsium(),
    const GiziKalori(),
  ];
}
