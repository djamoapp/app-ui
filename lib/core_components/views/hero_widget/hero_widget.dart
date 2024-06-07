import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppHeroWidget extends StatelessWidget {
  const AppHeroWidget(
      {Key? key,
      required this.icon,
      this.title,
      this.subTitle,
      this.titleStyle,
      this.subtitleStyle,
      this.action,
      this.crossAxisAlignment,
      this.mainAxisAlignment,
      this.titleTextAlign,
      this.subtitleTextAlign})
      : super(key: key);

  final Widget icon;

  final String? title;

  final TextStyle? titleStyle;

  final TextAlign? titleTextAlign;

  final String? subTitle;

  final TextStyle? subtitleStyle;

  final TextAlign? subtitleTextAlign;

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
        if (title != null || subTitle != null) AppGapsM2.m,
        if (title != null)
          Text(
            title!,
            style: titleStyle ?? AppTypography.title(context).bMedium100,
            textAlign: titleTextAlign ?? TextAlign.center,
          ),
        if (title != null && subTitle != null) AppGapsM2.s,
        if (subTitle != null)
          Text(
            subTitle!,
            style: subtitleStyle ??
                AppTypography.body(context)
                    .small!
                    .copyWith(color: NeutralColors.disabledTextColor),
            textAlign: subtitleTextAlign ?? TextAlign.center,
          ),
        if (action != null) ...[
          AppGapsM2.m,
          action!,
        ],
      ],
    );
  }
}
