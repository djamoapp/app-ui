import 'package:app_ui/core_components/controls/tab_bar/tab_bar.dart';
import 'package:app_ui/core_components/controls/tab_bar/tab_bar_item.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui_example/src/controllers/core_components/controls/tab_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarView extends GetView<TabBarController> {
  const TabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab Bar"),
      ),
      body: Obx(() {
        return IndexedStack(
          index: controller.currentIndex.value,
          children: const [
            Center(child: Text("Compte")),
            Center(child: Text("Statistiques")),
            Center(child: Text("Cartes")),
            Center(child: Text("Aide")),
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        return AppTabBar(
          onTap: controller.onTabBarItemTap,
          currentIndex: controller.currentIndex.value,
          items: [
            AppTabBarItem(
              icon: const Icon(AppIcons.account),
              activeIcon: const Icon(AppIcons.accountFilled),
              label: "Compte",
            ),
            AppTabBarItem(
              icon: const Icon(AppIcons.stats),
              activeIcon: const Icon(AppIcons.starFilled),
              label: "Statistiques",
            ),
            AppTabBarItem(
              icon: const Icon(AppIcons.card),
              activeIcon: const Icon(AppIcons.cardFilled),
              label: "Cartes",
            ),
            AppTabBarItem(
              icon: const Icon(AppIcons.support),
              activeIcon: const Icon(AppIcons.supportFilled),
              label: "Aide",
            ),
          ],
        );
      }),
    );
  }
}
