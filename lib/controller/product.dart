import 'package:coffee_ui/model.dart/model.dart';
import 'package:get/get.dart';

class productcontroller extends GetxController {
  var products = <product>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchproducts();
  }

  void fetchproducts() async {
    await Future.delayed(Duration(seconds: 1));

    var productlist = [
      product(image: 'images/2.jpg', name: 'Cinnamon & Cocoa', price: 1),
      product(image: 'images/3.jpg', name: 'Drizzled with Caramel', price: 2),
      product(image: 'images/4.jpg', name: 'Bursting Blueberry', price: 3),
      product(image: 'images/2.jpg', name: 'Dalgona Whipped Macha', price: 0.5),
    ];
    products.value = productlist;
  }
}
