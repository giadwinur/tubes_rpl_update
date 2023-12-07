import 'package:flutter/material.dart';
import 'package:tubes_rpl_update/widget_library/navbar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(fontFamily: 'Rubik'), home: const NavBar());
  }
}
