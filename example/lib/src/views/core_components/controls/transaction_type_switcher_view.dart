import 'package:app_ui_m2/core/models/transaction_type_switcher_item.dart';
import 'package:app_ui_m2/core_components/controls/transaction_type_switcher/transaction_type_switcher.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/iconography/app_icons.dart';
import 'package:flutter/material.dart';

class TransactionTypeSwitcherView extends StatelessWidget {
  const TransactionTypeSwitcherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction Type Switcher"),
      ),
      body: Column(
        children: [
          Center(
            child: AppTransactionTypeSwitcher<int>(
              items: [
                AppTransactionTypeSwitcherItem(
                  value: 1,
                  icon: AppIcons.add,
                  text: "Rechargement",
                  selectedColor: InterfaceColors.success.defaultColor,
                  selectedBackgroundColor:
                      InterfaceColors.success.backGroundColor,
                ),
                AppTransactionTypeSwitcherItem(
                  value: 2,
                  icon: AppIcons.arrowDownRight,
                  text: "Transfert",
                  selectedColor: InterfaceColors.alert.defaultColor,
                  selectedBackgroundColor:
                      InterfaceColors.alert.backGroundColor,
                ),
              ],
              onValueChanged: (int value) {},
            ),
          ),
        ],
      ),
    );
  }
}
