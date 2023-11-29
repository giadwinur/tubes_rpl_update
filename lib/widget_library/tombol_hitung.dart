import 'package:flutter/material.dart';

class Hitung extends StatelessWidget {
  final VoidCallback onpressedHitung;
  final VoidCallback onpressedReset;
  const Hitung({
    Key? key,
    required this.onpressedHitung,
    required this.onpressedReset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: onpressedReset,
          child: const Text('Reset'),
        ),
        SizedBox(
          height: 35,
          child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(106, 129, 222, 1),
            )),
            onPressed: onpressedHitung,
            child: const Text(
              "     Hitung     ",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
