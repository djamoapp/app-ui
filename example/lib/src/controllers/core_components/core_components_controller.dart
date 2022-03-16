import 'package:app_ui_example/src/utils/routes.dart';
import 'package:get/get.dart';

class CoreComponentsController extends GetxController {
  final List<Map<String, dynamic>> items = [
    {
      "label": "Controls",
      "route": Routes.controls,
    },
    {
      "label": "Views",
      "route": Routes.views,
    },
    {
      "label": "Page Header",
      "route": Routes.pageHeader,
    },
    {
      "label": "Other Tokens",
      "route": Routes.otherTokens,
    },
  ];

  void onItemTap(int index) {
    if (items[index]["route"] != null) Get.toNamed(items[index]["route"]);
  }
}
