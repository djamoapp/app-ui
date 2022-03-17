import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_example/src/controllers/design_tokens/spacing_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpacingView extends GetView<SpacingController> {
  const SpacingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spacing"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Spacing Tokens",
              style: TextStyle(
                  color: NeutralColors.neutral900,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            AppGaps.m,
            for (int i = 0; i < controller.spacings.length; i++) ...[
              Row(
                children: [
                  _spacingWidget(controller.spacings[i]["size"]),
                  AppGaps.m,
                  Text(controller.spacings[i]["name"]),
                  AppGaps.m,
                  Text(controller.spacings[i]["code"]),
                  AppGaps.m,
                  Text(controller.spacings[i]["size"]
                          .toString()
                          .split(".")
                          .first +
                      "px"),
                ],
              ),
              AppGaps.m,
            ]
          ],
        ),
      ),
    );
  }

  Widget _spacingWidget(double spacing) {
    return Container(
      height: spacing,
      width: spacing,
      decoration: BoxDecoration(
          border: Border.all(
        width: 1,
        color: NeutralColors.neutral900,
      )),
    );
  }
}
