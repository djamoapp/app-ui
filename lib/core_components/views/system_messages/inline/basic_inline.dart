import 'package:app_ui_m2/design_tokens/typography/typography.dart' as t;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppBasicInline extends StatelessWidget {
  const AppBasicInline({
    Key? key,
    required this.iconData,
    required this.textColor,
    required this.iconColor,
    required this.text,
    this.iconSize = 18,
    this.mainAxisSize = MainAxisSize.min,
    this.mainAxisAlignment = MainAxisAlignment.center,
  }) : super(key: key);

  final IconData iconData;
  final Color textColor;
  final Color iconColor;
  final String text;
  final double iconSize;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: mainAxisSize,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          iconData,
          color: iconColor,
          size: iconSize,
        ),
        const Gap(10),
        Flexible(
          child: Text(
            text,
            style: t.AppTypography.body!.small!.copyWith(color: textColor),
          ),
        )
      ],
    );
  }
}
