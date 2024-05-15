import 'package:app_ui_m2/core/constants/constants.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppPageHeader extends AppBar {
  AppPageHeader({
    Key? key,
    String? title,
    bool? withDrawer,
  }) : super(
          key: key,
          backgroundColor: InterfaceColors.action.backGroundColor,
          centerTitle: true,
          title: title != null
              ? Text(
                  title,
                  style: AppTypography.title!.bMedium100,
                )
              : Image.asset(
                  "assets/images/djamo-logo-black.png",
                  package: kPackageName,
                  height: 28,
                  width: 93.69,
                ),
        );
}
