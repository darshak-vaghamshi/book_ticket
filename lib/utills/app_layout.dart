import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  // ignore: non_constant_identifier_names
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }

  static getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
