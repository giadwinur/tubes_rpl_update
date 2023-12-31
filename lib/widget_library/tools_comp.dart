import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToolsComp extends StatelessWidget {
  ToolsComp({
    Key? key,
    this.judul = '',
    this.subJudul = '',
    required this.ontap,
  }) : super(key: key);

  String judul;
  Widget ontap;
  String subJudul;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ontap));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 9.0,
            ),
          ],
        ),
        height: 123,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(subJudul),
              ],
            ),
            const Icon(
              Icons.send,
              color: Color.fromARGB(144, 38, 59, 142),
            )
          ],
        ),
      ),
    );
  }
}
