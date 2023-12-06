import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:tubes_rpl_update/config/inits.dart';
import 'package:tubes_rpl_update/config/inject.dart';
import 'package:tubes_rpl_update/config/platform_type.dart';
import 'package:tubes_rpl_update/myapp.dart';

void main() async {
  RM.env = Flavor.dev;
  await inits();
  runApp(
    DevicePreview(
      enabled: PlatformType.isLinux,
      storage: DevicePreviewStorage.preferences(),
      builder: (context) => const MyApp(), //* Wrap your app
    ),
  );
}
