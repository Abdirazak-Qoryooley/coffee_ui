import 'package:coffee_ui/model.dart/model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class cartcontroller extends GetxController {
  var cartitems = <product>[].obs;

  int get count => cartitems.length;

  RemoveToCart(int index) {
    cartitems.removeAt(index);
  }

  AddToCart(product product) {
    cartitems.add(product);
  }
}
