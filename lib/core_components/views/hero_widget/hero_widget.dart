import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget(
      {Key? key,
      required this.icon,
      this.title,
      this.subTitle,
      this.titleStyle,
      this.subtitleStyle,
      this.action,
      this.crossAxisAlignment,
      this.mainAxisAlignment})
      : super(key: key);

  final Widget icon;

  final String? title;

  final TextStyle? titleStyle;

  final String? subTitle;

  final TextStyle? subtitleStyle;

  final Widget? action;

  final CrossAxisAlignment? crossAxisAlignment;

  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      children: [
        icon,
        if (title != null || subTitle != null) AppGaps.m,
        if (title != null)
          Text(
            title!,
            style: titleStyle ?? AppTypography.title!.bMedium100,
          ),
        if (subTitle != null)
          Text(
            subTitle!,
            style: subtitleStyle ??
                AppTypography.body!.small!
                    .copyWith(color: NeutralColors.disabledTextColor),
            textAlign: TextAlign.center,
          ),
        if (action != null) ...[
          AppGaps.m,
          action!,
        ],
      ],
    );
  }
}
