import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToolsComp extends StatelessWidget {
  ToolsComp({
    Key? key,
    this.judul = '',
    this.subJudul = '',
    required this.ontap,
    required this.icon,
  }) : super(key: key);

  IconData icon;
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
            Icon(
              icon,
              color: const Color.fromARGB(144, 38, 59, 142),
            ),
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
