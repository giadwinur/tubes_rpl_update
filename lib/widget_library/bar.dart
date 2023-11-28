import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bar extends StatelessWidget {
  String title;
  Bar({
    Key? key,
    this.title = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: const Color.fromRGBO(106, 129, 222, 1),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
