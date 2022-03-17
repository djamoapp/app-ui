import 'package:app_ui/core_components/views/account/account_widget.dart';
import 'package:app_ui/core_components/views/account/accounts_scrolling_set.dart';
import 'package:app_ui/core_components/views/account/djamo_3d_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_example/src/controllers/core_components/views/account_scrolling_set_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScrollingSetView extends GetView<AccountScrollingSetController> {
  const AccountScrollingSetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accounts (Scrolling Set)"),
      ),
      body: ListView(
        controller: controller.scrollController,
        padding: const EdgeInsets.all(20),
        children: [
          Text("Core Tokens"),
          Divider(),
          AppGaps.m,
          Obx(() {
            return AppAccountsScrollingSet<int>(
              onTap: controller.onTap,
              accounts: [
                AppAccountWidget(
                  label: "Courses",
                  imagePath: App3dIcons.cart,
                  balance: "26150",
                  id: 0,
                  selected: controller.selectedAccount.value == 0,
                ),
                AppAccountWidget(
                  label: "Epargne",
                  imagePath: App3dIcons.piggyBank,
                  balance: "58000",
                  id: 1,
                  selected: controller.selectedAccount.value == 1,
                ),
                AppAccountWidget(
                  label: "Portefeuille",
                  imagePath: App3dIcons.wallet,
                  balance: "10000",
                  id: 2,
                  selected: controller.selectedAccount.value == 2,
                ),
              ],
            );
          }),
          AppGaps.xl,
          const Text("Djamo 3D Icons"),
          const Divider(),
          AppGaps.m,
          GridView.count(
            controller: controller.scrollController,
            crossAxisCount: 3,
            shrinkWrap: true,
            children: List.generate(
              controller.icons3d.length,
              (index) => Image.asset(
                controller.icons3d[index],
                height: 90,
              ),
            ),
          )
        ],
      ),
    );
  }
}
