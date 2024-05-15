import 'package:app_ui_example/src/controllers/design_tokens/icons_controller.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/iconography/app_svg_icons.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class IconsView extends GetView<IconsController> {
  const IconsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iconography"),
      ),
      body: ListView(
        controller: controller.scrollController,
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Djamo Icons",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGaps.m,
          GridView.count(
            controller: controller.scrollController,
            crossAxisCount: 3,
            shrinkWrap: true,
            children: List.generate(controller.icons.length,
                (index) => Icon(controller.icons[index])),
          ),
          const Text(
            "SVG Icons",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGaps.m,
          Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 30,
            spacing: 30,
            children: [
              SvgPicture.asset(
                AppSvgIcons.pennies,
                width: 30,
              ),
              SvgPicture.asset(
                AppSvgIcons.notificationFilled,
                width: 30,
              ),
              SvgPicture.asset(
                AppSvgIcons.star,
                width: 30,
              ),
              SvgPicture.asset(
                AppSvgIcons.textMessageFilled,
                width: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
