import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/core/enums/standard_button_style.dart';
import 'package:app_ui/core_components/controls/basic_tag/basic_tag.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/secondary_cta.dart';
import 'package:app_ui/core_components/controls/buttons/standard_buttons/standard_buttons.dart';
import 'package:app_ui/core_components/controls/text_fields/amount_text_field.dart';
import 'package:app_ui/core_components/controls/transaction_type_switcher/transaction_type_switcher.dart';
import 'package:app_ui/core_components/controls/transaction_type_switcher/transaction_type_switcher_item.dart';
import 'package:app_ui/core_components/other_tokens/app_icon_label.dart';
import 'package:app_ui/core_components/views/account/app_account_card.dart';
import 'package:app_ui/core_components/views/title_with_switch/title_with_switch.dart';
import 'package:app_ui/core_components/views/tool_tip/tool_tip.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/iconography/colored_icons.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/core_components/views/vault_target_tracker/vault_target_tracker.dart';
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
        padding: const EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            StandardButtons.medium(
              //enabled: false,
              //isLoading: true,
              style: StandardButtonStyle.text,
              onPressed: () {
                print("#########");
              },
            ),
            Gap(50),
            AppAmountTextField(),
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
            Gap(50),
            AppBasicTag(
              label: "Bonjour",
              onSelected: (value) {
                print(value);
              },
            ),
            Gap(15),
            AppIconLabel(
              icon: Icon(
                AppIcons.account,
                size: 20,
              ),
              label: 'label',
            ),
            AppTitleWithSwitch(
              onChanged: (bool value) {},
              title: "This is a long title",
              subTitle: "Hello This is a subtitle",
            )
          ],
        ),
      ),
    );
  }
}
