import 'package:app_ui/core/models/interface_color.dart';
import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:app_ui/design_tokens/colors/gradients.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppVaultCreationCTA extends StatelessWidget {
  const AppVaultCreationCTA(
      {Key? key,
      required this.leading,
      this.onTap,
      required this.title,
      required this.subTitle})
      : super(key: key);

  final Widget leading;

  final void Function()? onTap;

  final String title;

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppContainer(
        boxDecoration: BoxDecoration(
          color: InterfaceColors.action.specialColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leading,
            AppGaps.m,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTypography.label!.bSmall!.copyWith(
                      color: InterfaceColors.action.defaultColor,
                    ),
                  ),
                  AppGaps.xs,
                  Text(
                    subTitle,
                    style: AppTypography.body!.small!.copyWith(
                      color: NeutralColors.neutral700,
                    ),
                  ),
                ],
              ),
            ),
            AppGaps.m,
            Container(
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
          ],
        ),
      ),
    );
  }
}
