import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TDeviceUtils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  static bool isLandscapeOrientation(BuildContext context) {
    final viewIssert = View.of(context).viewInsets;
    return viewIssert.bottom == 0;
  }

  static bool isPotriitOrientation(BuildContext context) {
    final viewIssert = View.of(context).viewInsets;
    return viewIssert.bottom != 0;
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  // static double getScreenHeight() {
  //   return MediaQuery.of(Get.context).size.height;
  // }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static double getAppBarheight() {
    return kToolbarHeight;
  }
  static double getBottomNavigationBarHeight() {
    // Menggunakan MediaQuery untuk mendapatkan tinggi navigasi bawah
    return kBottomNavigationBarHeight;
  }

}
