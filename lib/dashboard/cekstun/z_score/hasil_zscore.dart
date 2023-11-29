import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/widget_library/bar.dart';

class HasilZscore extends StatelessWidget {
  final Map<String, dynamic> zScores;

  const HasilZscore({super.key, required this.zScores});

  @override
  Widget build(BuildContext context) {
    // print(zScores);

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(width, 40),
          child: Bar(
            title: 'Hasil Z-Score',
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 120,
              decoration: const BoxDecoration(
                  color: Colors.white, boxShadow: [BoxShadow(blurRadius: 6.0, spreadRadius: 3, color: Colors.grey)]),
              child: const Center(
                child: Text(
                  'Hasil Perhitungan Gizi\nMenggunakan Rumus Z-Score',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '\nKategori:',
                    style: TextStyle(
                      // fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(106, 129, 222, 1),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...zScores.entries.map((MapEntry<String, dynamic> entry) {
                    if (entry.key != 'Keterangan') {
                      var value = entry.value is num ? (entry.value as num).toStringAsFixed(2) : entry.value.toString();
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              '${entry.key}:',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              value,
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                        ],
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${entry.key}:',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Berat Badan/Usia:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Hasil: ${zScores['Berat Badan/Usia']['Hasil']}',
                              style: const TextStyle(
                                fontSize: 18.0, // Adjust the font size as needed
                              ),
                            ),
                            Text(
                              'Keterangan: ${zScores['Berat Badan/Usia']['Keterangan']}',
                              style: const TextStyle(
                                fontSize: 18.0, // Adjust the font size as needed
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                            const Text(
                              'Tinggi Badan/Usia:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0, // Adjust the font size as needed
                              ),
                            ),
                            Text(
                              'Hasil: ${zScores['Tinggi Badan/Usia']['Hasil']}',
                              style: const TextStyle(
                                fontSize: 18.0, // Adjust the font size as needed
                              ),
                            ),
                            Text(
                              'Keterangan: ${zScores['Tinggi Badan/Usia']['Keterangan']}',
                              style: const TextStyle(
                                fontSize: 18.0, // Adjust the font size as needed
                              ),
                            ),
                            // Add other categories similarly
                            const Divider(
                              color: Colors.black,
                            ),
                          ],
                        ),
                      );
                    }
                  }).toList(),
                ],
              ),
            ),
            // const Text(
            //   '\nKategori:',
            //   style: TextStyle(
            //     // fontSize: 20.0,
            //     color: Colors.blue,
            //   ),
            // ),
            // const SizedBox(height: 16),
            // ...zScores.entries.map((MapEntry<String, dynamic> entry) {
            //   if (entry.key != 'Keterangan') {
            //     var value = entry.value is num ? (entry.value as num).toStringAsFixed(2) : entry.value.toString();
            //     return Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 8.0),
            //           child: Text(
            //             '${entry.key}:',
            //             style: const TextStyle(fontWeight: FontWeight.bold),
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 8.0),
            //           child: Text(
            //             '$value',
            //           ),
            //         ),
            //         const Divider(
            //           color: Colors.black,
            //         ),
            //       ],
            //     );
            //   } else {
            //     return Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 8.0),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             '${entry.key}:',
            //             style: const TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontSize: 20.0,
            //               color: Colors.blue,
            //             ),
            //           ),
            //           const SizedBox(height: 8),
            //           const Text(
            //             'Berat Badan/Usia:',
            //             style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           Text(
            //             'Hasil: ${zScores['Berat Badan/Usia']['Hasil']}',
            //             style: const TextStyle(
            //               fontSize: 18.0, // Adjust the font size as needed
            //             ),
            //           ),
            //           Text(
            //             'Keterangan: ${zScores['Berat Badan/Usia']['Keterangan']}',
            //             style: const TextStyle(
            //               fontSize: 18.0, // Adjust the font size as needed
            //             ),
            //           ),
            //           const Divider(
            //             color: Colors.black,
            //           ),
            //           const Text(
            //             'Tinggi Badan/Usia:',
            //             style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontSize: 18.0, // Adjust the font size as needed
            //             ),
            //           ),
            //           Text(
            //             'Hasil: ${zScores['Tinggi Badan/Usia']['Hasil']}',
            //             style: const TextStyle(
            //               fontSize: 18.0, // Adjust the font size as needed
            //             ),
            //           ),
            //           Text(
            //             'Keterangan: ${zScores['Tinggi Badan/Usia']['Keterangan']}',
            //             style: const TextStyle(
            //               fontSize: 18.0, // Adjust the font size as needed
            //             ),
            //           ),
            //           // Add other categories similarly
            //           const Divider(
            //             color: Colors.black,
            //           ),
            //         ],
            //       ),
            //     );
            //   }
            // }).toList(),
            const SizedBox(height: 16),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: const Text('Back'),
            // ),
          ],
        ));
  }
}
