import 'package:app_ui_m2/core/enums/standard_button_style.dart';
import 'package:app_ui_m2/core/models/transaction_type_switcher_item.dart';
import 'package:app_ui_m2/core_components/controls/buttons/main_cta/duo_cta.dart';
import 'package:app_ui_m2/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui_m2/core_components/controls/buttons/main_cta/secondary_cta.dart';
import 'package:app_ui_m2/core_components/controls/buttons/standard_buttons/standard_buttons.dart';
import 'package:app_ui_m2/core_components/controls/list_tile/app_list_tile.dart';
import 'package:app_ui_m2/core_components/controls/text_fields/amount_text_field.dart';
import 'package:app_ui_m2/core_components/controls/text_fields/app_date_picker.dart';
import 'package:app_ui_m2/core_components/controls/text_fields/phone_number_text_field.dart';
import 'package:app_ui_m2/core_components/controls/text_fields/text_field.dart';
import 'package:app_ui_m2/core_components/controls/transaction_type_switcher/transaction_type_switcher.dart';
import 'package:app_ui_m2/core_components/views/tool_tip/tool_tip.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/iconography/app_icons.dart';
import 'package:app_ui_m2/design_tokens/iconography/colored_icons.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

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
            AppAmountTextField(
              placeHolderText: "0",
              enabled: false,
            ),
            Gap(50),
            AppTextField(
              counterText: "",
              validator: (value) =>
                  value == "aziz" ? null : "Mais npourquoi t'es comme ça ?",
            ),
            Gap(50),
            AppPhoneNumberTextField(
              countryCode: '+225',
              countryflag: Container(),
              onCountryTap: () {
                print("object");
              },
            ),
            Gap(50),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StandardButtons.small(),
                  AppGapsM2.s,
                  StandardButtons.medium(),
                  AppGapsM2.s,
                  StandardButtons.large(),
                  AppGapsM2.s,
                  StandardButtons.small(
                    style: StandardButtonStyle.filledLight,
                  ),
                  AppGapsM2.s,
                  StandardButtons.medium(
                    style: StandardButtonStyle.filledLight,
                  ),
                  AppGapsM2.s,
                  StandardButtons.large(
                    style: StandardButtonStyle.filledLight,
                  ),
                  AppGapsM2.s,
                  StandardButtons.small(
                    style: StandardButtonStyle.outlined,
                  ),
                  AppGapsM2.s,
                  StandardButtons.medium(
                    style: StandardButtonStyle.outlined,
                  ),
                  AppGapsM2.s,
                  StandardButtons.large(
                    style: StandardButtonStyle.outlined,
                  ),
                  AppGapsM2.s,
                  StandardButtons.small(
                    style: StandardButtonStyle.outlinedLight,
                  ),
                  AppGapsM2.s,
                  StandardButtons.medium(
                    style: StandardButtonStyle.outlinedLight,
                  ),
                  AppGapsM2.s,
                  StandardButtons.large(
                    style: StandardButtonStyle.outlinedLight,
                  ),
                  AppGapsM2.s,
                  StandardButtons.small(
                    style: StandardButtonStyle.text,
                  ),
                  AppGapsM2.s,
                  StandardButtons.medium(
                    style: StandardButtonStyle.text,
                  ),
                  AppGapsM2.s,
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
            AppListTile(
              leading: SvgPicture.asset(
                AppColoredIcons.vaultCashInColorFull,
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(4),
                child: Center(
                  child: Icon(
                    CupertinoIcons.chevron_right,
                    color: InterfaceColors.action.defaultColor,
                    size: 12,
                  ),
                ),
              ),
              backgroundColor: InterfaceColors.action.specialColor,
              title: "Créez-vous un coffre",
              titleColor: InterfaceColors.action.defaultColor,
              subTitle:
                  "Mettez de l'argent de côté simplement et rapidement avec Djamo",
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
