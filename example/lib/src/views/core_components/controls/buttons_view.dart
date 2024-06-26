import 'package:app_ui_example/src/controllers/core_components/controls/buttons_controller.dart';
import 'package:app_ui_m2/core/enums/standard_button_style.dart';
import 'package:app_ui_m2/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui_m2/core_components/controls/buttons/main_cta/secondary_cta.dart';
import 'package:app_ui_m2/core_components/controls/buttons/standard_buttons/expanded_button.dart';
import 'package:app_ui_m2/core_components/controls/buttons/standard_buttons/standard_buttons.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/iconography/app_icons.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonsView extends GetView<ButtonsController> {
  const ButtonsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          const Text(
            "Main CTA",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGapsM2.m,
          Text("Primary"),
          Divider(),
          PrimaryCTA(),
          AppGapsM2.m,
          Text("Secondary"),
          Divider(),
          SecondaryCTA(),
          AppGapsM2.xl,
          const Text(
            "Standard Buttons",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGapsM2.m,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Large"),
              Divider(),
              AppGapsM2.m,
              // Filled
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(style: StandardButtonStyle.filled),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filled, enabled: false),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      prefixIcon: AppIcons.noteText),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGapsM2.m,
              // FilledLight
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(style: StandardButtonStyle.filledLight),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filledLight, enabled: false),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.filledLight,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filledLight,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.filledLight,
                      prefixIcon: AppIcons.noteText),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filledLight,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              // Outlined
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(style: StandardButtonStyle.outlined),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined, enabled: false),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      prefixIcon: AppIcons.noteText),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(style: StandardButtonStyle.text),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.text, enabled: false),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      prefixIcon: AppIcons.noteText),
                  AppGapsM2.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
            ],
          ),
          AppGapsM2.m,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Medium"),
              Divider(),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.medium(style: StandardButtonStyle.filled),
                  AppGapsM2.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled, enabled: false),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGapsM2.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      prefixIcon: AppIcons.noteText),
                  AppGapsM2.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.medium(style: StandardButtonStyle.outlined),
                  AppGapsM2.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined, enabled: false),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGapsM2.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      prefixIcon: AppIcons.noteText),
                  AppGapsM2.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.medium(style: StandardButtonStyle.text),
                  AppGapsM2.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.text, enabled: false),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGapsM2.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      prefixIcon: AppIcons.noteText),
                  AppGapsM2.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
            ],
          ),
          AppGapsM2.m,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Small"),
              Divider(),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.small(style: StandardButtonStyle.filled),
                  AppGapsM2.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.filled, enabled: false),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGapsM2.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      prefixIcon: AppIcons.noteText),
                  AppGapsM2.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.small(style: StandardButtonStyle.outlined),
                  AppGapsM2.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined, enabled: false),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGapsM2.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      prefixIcon: AppIcons.noteText),
                  AppGapsM2.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.small(style: StandardButtonStyle.text),
                  AppGapsM2.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.text, enabled: false),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGapsM2.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGapsM2.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      prefixIcon: AppIcons.noteText),
                  AppGapsM2.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGapsM2.m,
              Container(
                height: 150,
                width: 100,
                child: AppExpandedButton(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(AppIcons.add),
                      Text(
                        "Ajouter de l’argent",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
