import 'package:app_ui_example/src/utils/routes.dart';
import 'package:get/get.dart';

class ControlsController extends GetxController {
  final List<Map<String, dynamic>> items = [
    {
      "label": "Buttons",
      "route": Routes.buttons,
    },
    {
      "label": "Tab Bar",
      "route": Routes.tabBar,
    },
    {
      "label": "Switcher",
      "route": Routes.switcher,
    },
    {
      "label": "Radio",
      "route": Routes.radio,
    },
    {
      "label": "Checkbox",
      "route": Routes.checkbox,
    },
    {
      "label": "Search Bars",
      "route": Routes.searchBars,
    },
    {
      "label": "Text Fields",
      "route": Routes.textFields,
    },
    {
      "label": "Transaction Type Switcher",
      "route": Routes.transactionTypeSwitcher,
    },
  ];

  void onItemTap(int index) {
    if (items[index]["route"] != null) Get.toNamed(items[index]["route"]);
  }
}
