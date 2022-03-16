import 'package:app_ui/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui/core_components/views/popovers/no_action_popover.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:flutter/material.dart';

class PopoverView extends StatelessWidget {
  const PopoverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popovers"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Box",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppSpacing.m,
          Text("with Image"),
          Divider(),
          AppSpacing.m,
          PrimaryCTA(
            text: "Show No Action Popover",
            onPressed: () {
              showAppNoActionPopover(context);
            },
          ),
        ],
      ),
    );
  }
}
