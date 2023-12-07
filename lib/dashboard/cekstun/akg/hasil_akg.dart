import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/akg/akg_data.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';
import 'package:tubes_rpl_update/widget_library/hasil_comp1.dart';

class HasilAkg extends StatelessWidget {
  const HasilAkg({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Bar(
          title: 'Hasil AKG',
        ),
      ),
      body: Column(
        children: [
          HasilComp(
            hasil: dataAkg.result.toStringAsFixed(2),
            text: 'AKG',
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kamu Membutuhkan : ${dataAkg.result.toStringAsFixed(2)}, Kalori/Hari',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                    '\nAngka Kecukupan Gizi (AKG) adalah suatu nilai yang menunjukkan kebutuhan rata-rata zat gizi tertentu yang harus dipenuhi setiap hari bagi hampir semua orang dengan karakteristik tertentu untuk hidup sehat \n\nKalori adalah jumlah energi yang diperoleh dari makanan dan minuman. Penting bagi setiap orang untuk memenuhi kebutuhan kalori hariannya guna memperoleh energi untuk melakukan aktivitas sepanjang hari. Perlu diketahui, kebutuhan kalori setiap orang berbeda-beda tergantung dari usia, jenis kelamin dan kondisi tertentu.\n\njumlah energi Kalori dalam makanan dan minuman ini berasal dari aneka nutrisi di dalamnya, seperti karbohidrat, protein, dan lemak. Setiap nutrisi memiliki jumlah kalori yang berbeda,'),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lihat nutrisi....',
                    style: TextStyle(
                      color: const Color.fromRGBO(106, 129, 222, 1),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
