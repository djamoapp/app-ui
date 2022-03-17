import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/core_components/controls/transaction_type_switcher/transaction_type_switcher.dart';
import 'package:app_ui/core_components/controls/transaction_type_switcher/transaction_type_switcher_item.dart';
import 'package:app_ui/core_components/views/account/app_account_card.dart';
import 'package:app_ui/core_components/views/tool_tip/tool_tip.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/iconography/colored_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/core_components/views/vault_target_tracker/vault_target_tracker.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/core_components/controls/vault_cta/app_vault_creation_cta.dart';

class LaboView extends StatelessWidget {
  LaboView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Labo"),
      ),
      body: SingleChildScrollView(
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
            AppAccountCard(
              leading: SvgPicture.asset(
                AppColoredIcons.book,
              ),
              trailing: Icon(AppIcons.add),
              balance: "2000000",
              title: "Principal",
            ),
            Gap(50),
            AppVaultCreationCTA(
              leading: SvgPicture.asset(
                AppColoredIcons.book,
              ),
              title: "Créez-vous un coffre",
              subTitle: "Épargner simplement et rapidement",
            ),
            Gap(50),
            AppToolTip(
              title: "Créez-vous un coffre",
              subTitle: "Épargner simplement et rapidement",
              leading: SvgPicture.asset(
                AppColoredIcons.car,
              ),
            ),
            Gap(50),
            AppVaultTargetTracker(
              label: 'label',
              endDate: '10/10/1999',
              level: 0.10,
              title: 'title',
            ),
          ],
        ),
      ),
    );
  }
}
