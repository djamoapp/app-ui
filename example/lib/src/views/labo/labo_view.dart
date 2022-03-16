import 'package:app_ui/core_components/controls/transaction_type_switcher/transaction_type_switcher.dart';
import 'package:app_ui/core_components/controls/transaction_type_switcher/transaction_type_switcher_item.dart';
import 'package:app_ui/core_components/views/tool_tip/tool_tip.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_example/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/core_components/controls/text_fields/flat_text_field.dart';
import 'package:app_ui/core_components/views/vault_target_tracker/vault_target_tracker.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';

class LaboView extends StatelessWidget {
  LaboView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Labo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            AppTransactionTypeSwitcher(
              items: [
                AppTransactionTypeSwitcherItem(
                  value: 1,
                  icon: AppIcons.arrowDownLeft,
                  text: "Rechargement",
                  selectedColor: InterfaceColors.success.defaultColor,
                  selectedBackgroundColor:
                      InterfaceColors.success.backGroundColor,
                ),
                AppTransactionTypeSwitcherItem(
                  value: 2,
                  icon: AppIcons.arrowTopRight,
                  text: "Transfert",
                  selectedColor: InterfaceColors.alert.defaultColor,
                  selectedBackgroundColor:
                      InterfaceColors.alert.backGroundColor,
                ),
              ],
              onValueChanged: (v) {
                print(v);
              },
            ),
            Gap(50),
            const AppFlatTextField(placeHolderText: "placeHolderText"),
            Gap(50),
            const AppToolTip(
              title: "Créez-vous un coffre",
              subTitle: "Épargner simplement et rapidement",
              image: kSgbciLogo,
              isVaultToolTip: true,
            ),
            Gap(50),
            AppVaultTargetTracker(
              limitAmount: 200000,
              balance: 50000,
              endDate: DateTime.now(),
              amountFormatter: kAmountFormatter,
            ),
          ],
        ),
      ),
    );
  }
}
