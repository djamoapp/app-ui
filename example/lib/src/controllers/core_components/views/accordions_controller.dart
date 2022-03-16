import 'package:get/get.dart';

class AccordionsController extends GetxController {

  var selectedValue = 1.obs;

  void onChoose(v) {
    selectedValue.value = v;
  }

}