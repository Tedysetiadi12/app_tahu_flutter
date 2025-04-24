import 'package:app_tahhu/features/authentication/screens/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Controller untuk PageView
  final PageController pageController = PageController();
  Rx<int> currentPage = 0.obs;

  void updatePageIndicator(index) => currentPage.value = index;

  // Navigasi dengan indikator titik
  void dotNavigationClick(index) {
    currentPage.value = index;
    pageController.jumpTo(index);
  }

  // Ke halaman berikutnya
  void nextPage() {
    if (currentPage.value == 2) {
      // pageController.nextPage(
      //   duration: const Duration(milliseconds: 300),
      //   curve: Curves.easeInOut,
      // );
      Get.offAll(() => const LoginScreen());  // Pindah ke halaman berikutnya
    } else {
      int page = currentPage.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Skip ke halaman terakhir
  void skipPage() {
    currentPage.value = 2;
    pageController.jumpToPage(2);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
