import 'package:app_ui_example/src/utils/routes.dart';
import 'package:get/get.dart';

class DesignTokensController extends GetxController {
  final List<Map<String, dynamic>> items = [
    {
      "label": "Colors",
      "route": Routes.colors,
    },
    {
      "label": "Spacing",
      "route": Routes.spacing,
    },
    {
      "label": "Typography",
      "route": Routes.typography,
    },
    {
      "label": "Iconography",
      "route": Routes.icons,
    },
  ];

  void onItemTap(int index) {
    if (items[index]["route"] != null) Get.toNamed(items[index]["route"]);
  }
}
