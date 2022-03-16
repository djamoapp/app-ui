import 'package:get/get.dart';

class SwitcherController extends GetxController {

  var isOn = false.obs;

  void switchValue() {
    isOn.toggle();
  }

}