import 'package:app_tahhu/features/personalization/screens/setting/settings.dart';
import 'package:app_tahhu/features/sell/screens/home/home.dart';
import 'package:app_tahhu/features/sell/screens/store/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: Colors.white, // Warna latar belakang putih
          selectedIndex: controller.selectedIndex.value,
          indicatorColor: Colors.blue.withOpacity(0.2), // Efek hover/pilih
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home,
                  color: controller.selectedIndex.value == 0
                      ? Colors.blue
                      : Colors.grey),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shop,
                  color: controller.selectedIndex.value == 1
                      ? Colors.blue
                      : Colors.grey),
              label: 'Sell',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shopping_cart,
                  color: controller.selectedIndex.value == 2
                      ? Colors.blue
                      : Colors.grey),
              label: 'Riwayat',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user,
                  color: controller.selectedIndex.value == 3
                      ? Colors.blue
                      : Colors.grey),
              label: 'User',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const ScreenHomePage(),
    const Store(),
    Container(color: Colors.black),
   const SettingsScreen(),
  ];
}
