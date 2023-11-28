import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';

class InfoStunting extends StatelessWidget {
  const InfoStunting({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Berita',
        ),
      ),
      body: Container(),
    );
  }
}
