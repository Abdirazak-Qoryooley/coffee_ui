import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  final List<Widget> pages = [
    // homescreen(),
    // cartpage(),
    // FavoritePage(),
    // profilescreen(),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}