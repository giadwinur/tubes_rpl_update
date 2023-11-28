import 'package:flutter/material.dart';

import '../../widget_library/bar.dart';

class PencegahanStunting extends StatelessWidget {
  const PencegahanStunting({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Pencegahan Stunting',
        ),
      ),
      body: Container(),
    );
  }
}
