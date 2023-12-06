class Respon {
  double hitunghalo(double lebarLayar) {
    if (lebarLayar > 1200) {
      return 80.0;
    } else if (lebarLayar < 500) {
      return 40.0;
    } else {
      const fontMax = 80.0;
      const fontMin = 40.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1200 - 500;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double hitunghalo2(double lebarLayar) {
    if (lebarLayar > 1200) {
      return 80.0;
    } else if (lebarLayar < 500) {
      return 55.0;
    } else {
      const fontMax = 80.0;
      const fontMin = 55.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1200 - 500;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double welcome(double lebarLayar) {
    if (lebarLayar > 1200) {
      return 30.0;
    } else if (lebarLayar < 500) {
      return 20.0;
    } else {
      const fontMax = 30.0;
      const fontMin = 20.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1200 - 500;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double about(double lebarLayar) {
    if (lebarLayar > 500) {
      return 45.0;
    } else if (lebarLayar < 1000) {
      return 20;
    } else {
      const fontMax = 50.0;
      const fontMin = 20.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1000 - 800;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double about2(double lebarLayar) {
    if (lebarLayar > 1000) {
      return 24.0;
    } else if (lebarLayar < 1000) {
      return 12;
    } else {
      const fontMax = 24.0;
      const fontMin = 10.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1000 - 800;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double about3(double lebarLayar) {
    if (lebarLayar > 1000) {
      return 20.0;
    } else if (lebarLayar < 1000) {
      return 15;
    } else {
      const fontMax = 20.0;
      const fontMin = 15.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1000 - 800;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double expe(double lebarLayar) {
    if (lebarLayar > 1200) {
      return 60.0;
    } else if (lebarLayar < 500) {
      return 40;
    } else {
      const fontMax = 60.0;
      const fontMin = 14.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1200 - 500;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double tentang(double lebarLayar) {
    if (lebarLayar > 1200) {
      return 20.0;
    } else if (lebarLayar < 500) {
      return 5;
    } else {
      const fontMax = 20.0;
      const fontMin = 5.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1200 - 500;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double mainHome(double lebarLayar) {
    if (lebarLayar > 1000) {
      return 30.0;
    } else if (lebarLayar < 500) {
      return 20;
    } else {
      const fontMax = 30.0;
      const fontMin = 10.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1200 - 500;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }
}
