import 'package:app_ui/core_components/controls/tab_bar/tab_bar.dart';
import 'package:app_ui/core_components/controls/tab_bar/tab_bar_item.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui_example/src/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core_components/core_components_view.dart';
import 'design_tokens/design_tokens_view.dart';
import 'labo/labo_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: controller.currentIndex.value,
          children: [
            DesignTokensView(),
            CoreComponentsView(),
            LaboView(),
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        return AppTabBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.onCurrentIndexChange,
          items: [
            AppTabBarItem(
              icon: const Icon(
                AppIcons.star,
              ),
              label: "Design Tokens",
            ),
            AppTabBarItem(
              icon: const Icon(
                AppIcons.djamo,
              ),
              label: "Core Components",
            ),
            AppTabBarItem(
              icon: const Icon(
                AppIcons.crown,
              ),
              label: "Laboratory",
            ),
          ],
        );
      }),
    );
  }
}
