import 'package:coffee_ui/screens/cart_page.dart';
import 'package:coffee_ui/screens/favorite_page.dart';
import 'package:coffee_ui/screens/home.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class bottomNav extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: controller.pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff0201520),
        selectedItemColor: Colors.grey,
        // selectedIconTheme: IconThemeData(color: Colors.red),
        unselectedItemColor: Colors.grey.shade400,
        currentIndex: controller.currentIndex.value,

        onTap: (index) => controller.changePage(index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.home,
              ),
              activeIcon: Icon(
                IconlyBold.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Serach"),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyLight.heart,
              ),
              activeIcon: Icon(
                IconlyBold.heart,
              ),
              label: "Favorites"),
          // BottomNavigationBarItem(
          //     icon: Icon(
          //       IconlyLight.profile,
          //     ),
          //     activeIcon: Icon(
          //       IconlyBold.profile,
          //     ),
          //     label: "Profile"),
        ],
      ),
    );
  }
}

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  final List<Widget> pages = [
    homepage(),
    Cart_page(),
    favorite_page(),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
