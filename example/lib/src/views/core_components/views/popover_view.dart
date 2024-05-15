import 'package:app_ui_m2/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui_m2/core_components/views/popovers/no_action_popover.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
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
          AppGaps.m,
          Text("with Image"),
          Divider(),
          AppGaps.m,
          PrimaryCTA(
            label: "Show No Action Popover",
            onPressed: () {
              showAppNoActionPopover(context);
            },
          ),
        ],
      ),
    );
  }
}
