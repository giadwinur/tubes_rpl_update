import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/akg/akg_data.dart';

final akgCtrl = AkgCtrl();

class AkgCtrl {
  Widget buildFeedbackColumn() {
    //*Ini adalah sebuah pernyataan kondisional yang memeriksa apakah nilai result (hasil perhitungan BMR) masih 0.0. Jika hasil belum dihitung, maka akan mengembalikan widget kosong (Container()), karena tidak ada umpan balik yang perlu ditampilkan.
    if (dataAkg.result == 0.0) {
      return Container(); // Tidak menampilkan kolom umpan balik jika hasil belum dihitung
    } else {
      //*Jika hasil sudah dihitung (nilai result tidak sama dengan 0.0), maka akan mengembalikan sebuah Column yang berisi umpan balik.
      return const Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Fields Reset! Enter new values to calculate again.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.green,
            ),
          ),
        ],
      );
    }
  }
}
