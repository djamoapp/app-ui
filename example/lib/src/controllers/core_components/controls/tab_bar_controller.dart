import 'package:get/get.dart';

class TabBarController extends GetxController {

  var currentIndex = 0.obs;

  void onTabBarItemTap(int index) {
    currentIndex.value = index;
  }

}