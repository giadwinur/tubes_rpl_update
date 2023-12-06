import 'package:flutter/foundation.dart';
import 'dart:io' as io;

class PlatformType {
  static bool get isWeb => kIsWeb;
  static bool get isAndroid => kIsWeb ? false : io.Platform.isAndroid;
  static bool get isIOS => kIsWeb ? false : io.Platform.isIOS;
  static bool get isWindows => kIsWeb ? false : io.Platform.isWindows;
  static bool get isMacOS => kIsWeb ? false : io.Platform.isMacOS;
  static bool get isLinux => kIsWeb ? false : io.Platform.isLinux;
  static bool get isFuchsia => kIsWeb ? false : io.Platform.isFuchsia;
}
