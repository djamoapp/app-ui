import 'package:app_ui_example/src/utils/routes.dart';
import 'package:get/get.dart';

class ViewsController extends GetxController {
  final List<Map<String, dynamic>> items = [
    {
      "label": "System Messages",
      "route": Routes.systemMessages,
    },
    {
      "label": "Popovers",
      "route": Routes.popovers,
    },
    {
      "label": "Loader",
      "route": Routes.loader,
    },
    {
      "label": "Transaction Logos",
      "route": Routes.transactionLogos,
    },
    {
      "label": "Transaction Tags",
      "route": Routes.transactionTags,
    },
    {
      "label": "Accordion",
      "route": Routes.accordions,
    },
    {
      "label": "VC Balance Limit Alert",
      "route": Routes.limitAlert,
    },
    {
      "label": "Analytics Widget",
      "route": Routes.analytics,
    },
    {
      "label": "Pop-up",
      "route": Routes.popUps,
    },
    {
      "label": "Tooltip",
      "route": Routes.toolTip,
    },
    {
      "label": "Transfer Ways",
      "route": Routes.transferWays,
    },
    {
      "label": "Stepper",
      "route": Routes.stepper,
    },
    {
      "label": "Section Label",
      "route": Routes.sectionLabel,
    },
    {
      "label": "Transaction Preview",
      "route": Routes.transactionPreview,
    },
    {
      "label": "Account (Scrolling Set)",
      "route": Routes.accountScrollingSet,
    },
    {
      "label": "Keyboard",
      "route": Routes.keyboard,
    },
  ];

  void onItemTap(int index) {
    if (items[index]["route"] != null) Get.toNamed(items[index]["route"]);
  }
}
