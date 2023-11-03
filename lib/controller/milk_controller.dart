
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class MilkController extends GetxController {
  var selectedIndex = RxInt(-1);

  void selectOption(int index) {
    selectedIndex.value = index;
  }
}