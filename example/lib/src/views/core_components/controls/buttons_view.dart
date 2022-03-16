import 'package:app_ui/core/enums/standard_button_style.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/secondary_cta.dart';
import 'package:app_ui/core_components/controls/buttons/standard_buttons/standard_buttons.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
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
          AppSpacing.m,
          Text("Primary"),
          Divider(),
          PrimaryCTA(),
          AppSpacing.m,
          Text("Secondary"),
          Divider(),
          SecondaryCTA(),
          AppSpacing.xl,
          const Text(
            "Standard Buttons",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppSpacing.m,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Large"),
              Divider(),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.large(style: StandardButtonStyle.filled),
                  AppSpacing.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filled, enabled: false),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppSpacing.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      prefixIcon: AppIcons.noteText),
                  AppSpacing.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.large(style: StandardButtonStyle.outlined),
                  AppSpacing.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined, enabled: false),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppSpacing.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      prefixIcon: AppIcons.noteText),
                  AppSpacing.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.large(style: StandardButtonStyle.text),
                  AppSpacing.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.text, enabled: false),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppSpacing.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      prefixIcon: AppIcons.noteText),
                  AppSpacing.l,
                  StandardButtons.large(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
            ],
          ),
          AppSpacing.m,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Medium"),
              Divider(),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.medium(style: StandardButtonStyle.filled),
                  AppSpacing.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled, enabled: false),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppSpacing.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      prefixIcon: AppIcons.noteText),
                  AppSpacing.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.medium(style: StandardButtonStyle.outlined),
                  AppSpacing.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined, enabled: false),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppSpacing.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      prefixIcon: AppIcons.noteText),
                  AppSpacing.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.medium(style: StandardButtonStyle.text),
                  AppSpacing.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.text, enabled: false),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppSpacing.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      prefixIcon: AppIcons.noteText),
                  AppSpacing.l,
                  StandardButtons.medium(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
            ],
          ),
          AppSpacing.m,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Small"),
              Divider(),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.small(style: StandardButtonStyle.filled),
                  AppSpacing.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.filled, enabled: false),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppSpacing.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      prefixIcon: AppIcons.noteText),
                  AppSpacing.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.filled,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.small(style: StandardButtonStyle.outlined),
                  AppSpacing.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined, enabled: false),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppSpacing.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      prefixIcon: AppIcons.noteText),
                  AppSpacing.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.outlined,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.small(style: StandardButtonStyle.text),
                  AppSpacing.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.text, enabled: false),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      suffixIcon: CupertinoIcons.chevron_forward),
                  AppSpacing.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      suffixIcon: CupertinoIcons.chevron_forward),
                ],
              ),
              AppSpacing.m,
              Row(
                children: [
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      prefixIcon: AppIcons.noteText),
                  AppSpacing.l,
                  StandardButtons.small(
                      style: StandardButtonStyle.text,
                      enabled: false,
                      prefixIcon: AppIcons.noteText),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
