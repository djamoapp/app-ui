import 'package:get/get.dart';

class HomeController extends GetxController {

  var currentIndex = 2.obs;

  void onCurrentIndexChange(int tabIndex) {
    currentIndex.value = tabIndex;
    update();
  }

}