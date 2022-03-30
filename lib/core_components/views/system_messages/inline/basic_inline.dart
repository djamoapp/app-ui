import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppBasicInline extends StatelessWidget {
  const AppBasicInline(
      {Key? key,
      required this.iconData,
      required this.textColor,
      required this.iconColor,
      required this.text,
      this.iconSize = 18})
      : super(key: key);

  final IconData iconData;
  final Color textColor;
  final Color iconColor;
  final String text;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: iconColor,
          size: iconSize,
        ),
        const Gap(10),
        Text(
          text,
          style: t.AppTypography.body!.small!.copyWith(color: textColor),
        )
      ],
    );
  }
}
