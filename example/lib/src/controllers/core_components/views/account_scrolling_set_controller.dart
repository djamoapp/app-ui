import 'package:app_ui_m2/core_components/views/account/djamo_3d_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScrollingSetController extends GetxController {
  Rx<int?> selectedAccount = 0.obs;

  ScrollController scrollController = ScrollController();

  final List<String> icons3d = [
    App3dIcons.bank,
    App3dIcons.cart,
    App3dIcons.moneyBag,
    App3dIcons.piggyBank,
    App3dIcons.pileOfMoney,
    App3dIcons.vault,
    App3dIcons.wallet,
    App3dIcons.padlock
  ];

  void onTap(int index, int? id) {
    selectedAccount.value = id;
  }
}
