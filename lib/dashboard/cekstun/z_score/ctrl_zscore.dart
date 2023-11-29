class CtrlZscore {
  double medianBB = 16;
  double sdBB = 2;
  double medianTB = 105;
  double sdTB = 3;
  double medianBBTB = 17;
  double sdBBTB = 1.5;
  double medianIMT = 16;
  double sdIMT = 1;

  double calculateZScore(double value, double median, double standardDeviation) {
    return (value - median) / standardDeviation;
  }

  Map<String, dynamic> calculateZScoresAndClassifications(
      int usia, String jenisKelamin, double beratBadan, double tinggiBadan, double imt) {
    Map<String, dynamic> result = {};

    double medianBB = 16;
    double sdBB = 2;
    double medianTB = 105;
    double sdTB = 3;
    double medianBBTB = 17;
    double sdBBTB = 1.5;
    double medianIMT = 16;
    double sdIMT = 1;

    double zScoreBBU = calculateZScore(beratBadan, medianBB, sdBB);
    double zScoreTBU = calculateZScore(tinggiBadan, medianTB, sdTB);
    double zScoreBBTB = calculateZScore(beratBadan, medianBBTB, sdBBTB);
    double zScoreIMTU = calculateZScore(imt, medianIMT, sdIMT);

    // Format Z-scores to have only two decimal places
    zScoreBBU = double.parse(zScoreBBU.toStringAsFixed(2));
    zScoreTBU = double.parse(zScoreTBU.toStringAsFixed(2));
    zScoreBBTB = double.parse(zScoreBBTB.toStringAsFixed(2));
    zScoreIMTU = double.parse(zScoreIMTU.toStringAsFixed(2));

    // Klasifikasi status gizi untuk BB/U
    String klasifikasiBBU = zScoreBBU < -3.0
        ? 'Berat badan sangat kurang'
        : zScoreBBU < -2.0
            ? 'Berat badan kurang'
            : zScoreBBU < 1.0
                ? 'Berat badan normal'
                : 'Resiko berat badan lebih';

    // Klasifikasi status gizi untuk TB/U
    String klasifikasiTBU = zScoreTBU < -3.0
        ? 'Sangat pendek'
        : zScoreTBU < -2.0
            ? 'Pendek'
            : zScoreTBU < 1.0
                ? 'Normal'
                : 'Tinggi';

    // Klasifikasi status gizi untuk BB/TB
    String klasifikasiBBTB = zScoreBBTB < -3.0
        ? 'Gizi buruk'
        : zScoreBBTB < -2.0
            ? 'Gizi kurang'
            : zScoreBBTB < 1.0
                ? 'Gizi baik (normal)'
                : zScoreBBTB < 2.0
                    ? 'Beresiko gizi lebih'
                    : 'Gizi lebih (obesitas)';

    // Klasifikasi status gizi untuk IMT/U
    String klasifikasiIMTU = zScoreIMTU < -3.0
        ? 'Sangat rendah'
        : zScoreIMTU < -2.0
            ? 'Rendah'
            : zScoreIMTU < 1.0
                ? 'Normal'
                : 'Tinggi';

    result['Berat Badan/Usia'] = {'Hasil': zScoreBBU, 'Keterangan': klasifikasiBBU};
    result['Tinggi Badan/Usia'] = {'Hasil': zScoreTBU, 'Keterangan': klasifikasiTBU};
    result['Berat Badan/Tinggi Badan'] = {'Hasil': zScoreBBTB, 'Keterangan': klasifikasiBBTB};
    result['Indeks Massa Tubuh/Usia'] = {'Hasil': zScoreIMTU, 'Keterangan': klasifikasiIMTU};

    return result;
  }
}
