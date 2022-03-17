import 'package:app_ui/core/enums/standard_button_style.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/secondary_cta.dart';
import 'package:app_ui/core_components/controls/buttons/standard_buttons/expanded_button.dart';
import 'package:app_ui/core_components/controls/buttons/standard_buttons/standard_buttons.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_ui_example/src/controllers/core_components/controls/buttons_controller.dart';

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
          AppGaps.m,
          Text("Primary"),
          Divider(),
          PrimaryCTA(),
          AppGaps.m,
          Text("Secondary"),
          Divider(),
          SecondaryCTA(),
          AppGaps.xl,
          const Text(
            "Standard Buttons",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGaps.m,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Large"),
              Divider(),
              AppGaps.m,
              // Filled
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(style: StandardButtonStyle.filled),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filled, enabled: false),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      prefixIcon: AppIcons.noteText),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGaps.m,
              // FilledLight
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(style: StandardButtonStyle.filledLight),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filledLight, enabled: false),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.filledLight,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filledLight,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.filledLight,
                      prefixIcon: AppIcons.noteText),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filledLight,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              // Outlined
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(style: StandardButtonStyle.outlined),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined, enabled: false),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      prefixIcon: AppIcons.noteText),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(style: StandardButtonStyle.text),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.text, enabled: false),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      prefixIcon: AppIcons.noteText),
                  AppGaps.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
            ],
          ),
          AppGaps.m,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Medium"),
              Divider(),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.medium(style: StandardButtonStyle.filled),
                  AppGaps.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled, enabled: false),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGaps.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      prefixIcon: AppIcons.noteText),
                  AppGaps.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.medium(style: StandardButtonStyle.outlined),
                  AppGaps.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined, enabled: false),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGaps.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      prefixIcon: AppIcons.noteText),
                  AppGaps.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.medium(style: StandardButtonStyle.text),
                  AppGaps.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.text, enabled: false),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGaps.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      prefixIcon: AppIcons.noteText),
                  AppGaps.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
            ],
          ),
          AppGaps.m,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Small"),
              Divider(),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.small(style: StandardButtonStyle.filled),
                  AppGaps.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.filled, enabled: false),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGaps.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      prefixIcon: AppIcons.noteText),
                  AppGaps.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.small(style: StandardButtonStyle.outlined),
                  AppGaps.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined, enabled: false),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGaps.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      prefixIcon: AppIcons.noteText),
                  AppGaps.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.small(style: StandardButtonStyle.text),
                  AppGaps.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.text, enabled: false),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppGaps.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppGaps.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      prefixIcon: AppIcons.noteText),
                  AppGaps.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppGaps.m,
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
