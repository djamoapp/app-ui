import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppBasicBox extends StatelessWidget {
  const AppBasicBox(
      {Key? key,
      required this.backGroundColor,
      required this.iconColor,
      required this.textColor,
      required this.iconData,
      required this.text})
      : super(key: key);

  final IconData iconData;
  final Color backGroundColor;
  final Color textColor;
  final Color iconColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(AppSpacings.s),
      child: Row(
        children: [
          Icon(
            iconData,
            color: iconColor,
            size: 16,
          ),
          const Gap(10),
          Expanded(
            child: Text(
              text,
              style: t.AppTypography.body!.small!.copyWith(color: textColor),
            ),
          )
        ],
      ),
    );
  }
}
