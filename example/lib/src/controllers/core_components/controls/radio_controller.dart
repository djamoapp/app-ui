import 'package:get/get.dart';

class RadioController extends GetxController {

  var selectedValue = 1.obs;

  void onSelectRadio(v) {
    selectedValue.value = v;
  }

}