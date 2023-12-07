import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tubes_rpl_update/dashboard/artikel/home_artikel.dart';
import 'package:tubes_rpl_update/dashboard/berita/home_news.dart';
import 'package:tubes_rpl_update/dashboard/cekstun/home_cekstun.dart';
import 'package:tubes_rpl_update/dashboard/gizi/home_gizi.dart';
import 'package:tubes_rpl_update/home.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            shadowColor: Colors.black,
            indicatorColor: Color.fromARGB(255, 204, 212, 253),
            height: 60,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) => controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.newspaper),
                label: "Berita",
              ),
              NavigationDestination(
                icon: Icon(Icons.article),
                label: "Artikel",
              ),
              NavigationDestination(
                icon: Icon(Icons.home),
                label: "Beranda",
              ),
              NavigationDestination(
                icon: Icon(Icons.calculate),
                label: "Tools",
              ),
              NavigationDestination(
                icon: Icon(Icons.health_and_safety),
                label: "Nutrisi",
              ),
            ],
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeNews(), const HomeArtikel(), const Home(), const HomeTools(), const HomeGizi()];
}
