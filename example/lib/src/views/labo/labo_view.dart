import 'package:app_ui/core/enums/standard_button_style.dart';
import 'package:app_ui/core/models/transaction_type_switcher_item.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/duo_cta.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/secondary_cta.dart';
import 'package:app_ui/core_components/controls/buttons/standard_buttons/standard_buttons.dart';
import 'package:app_ui/core_components/controls/text_fields/app_date_picker.dart';
import 'package:app_ui/core_components/controls/transaction_type_switcher/transaction_type_switcher.dart';
import 'package:app_ui/core_components/controls/vaults/vault_level.dart';
import 'package:app_ui/core_components/controls/vaults/vault_overview.dart';
import 'package:app_ui/core_components/views/tool_tip/tool_tip.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/iconography/colored_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/core_components/controls/vault_cta/app_vault_creation_cta.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';

class LaboView extends StatelessWidget {
  LaboView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Labo"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StandardButtons.small(),
                  AppGaps.s,
                  StandardButtons.medium(),
                  AppGaps.s,
                  StandardButtons.large(),
                  AppGaps.s,
                  StandardButtons.small(
                    style: StandardButtonStyle.filledLight,
                  ),
                  AppGaps.s,
                  StandardButtons.medium(
                    style: StandardButtonStyle.filledLight,
                  ),
                  AppGaps.s,
                  StandardButtons.large(
                    style: StandardButtonStyle.filledLight,
                  ),
                  AppGaps.s,
                  StandardButtons.small(
                    style: StandardButtonStyle.outlined,
                  ),
                  AppGaps.s,
                  StandardButtons.medium(
                    style: StandardButtonStyle.outlined,
                  ),
                  AppGaps.s,
                  StandardButtons.large(
                    style: StandardButtonStyle.outlined,
                  ),
                  AppGaps.s,
                  StandardButtons.small(
                    style: StandardButtonStyle.outlinedLight,
                  ),
                  AppGaps.s,
                  StandardButtons.medium(
                    style: StandardButtonStyle.outlinedLight,
                  ),
                  AppGaps.s,
                  StandardButtons.large(
                    style: StandardButtonStyle.outlinedLight,
                  ),
                  AppGaps.s,
                  StandardButtons.small(
                    style: StandardButtonStyle.text,
                  ),
                  AppGaps.s,
                  StandardButtons.medium(
                    style: StandardButtonStyle.text,
                  ),
                  AppGaps.s,
                  StandardButtons.large(
                    style: StandardButtonStyle.text,
                  ),
                ],
              ),
            ),
            Gap(50),
            DuoCTA(),
            Gap(50),
            PrimaryCTA(),
            Gap(50),
            SecondaryCTA(),
            Gap(50),
            AppDatePicker(),
            Gap(50),
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
                  icon: AppIcons.arrowDownRight,
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
              subTitle:
                  "Épargner simplement et rapidement Épargner simplement et rapidement Épargner.",
              leading: SvgPicture.asset(
                AppColoredIcons.car,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
