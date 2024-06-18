import 'package:app_ui_m2/core_components/controls/switcher/switcher.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class AppTitleWithSwitch extends StatelessWidget {
  const AppTitleWithSwitch({
    Key? key,
    this.selected = false,
    required this.onChanged,
    this.title = "Title",
    this.subTitle,
    this.leading,
    this.titleStyle,
    this.subTitleStyle,
    this.switcherScale,
    this.activeSwitcherColor,
  }) : super(key: key);

  final String title;

  final Widget? leading;

  final String? subTitle;

  final bool selected;

  final void Function(bool value) onChanged;

  final TextStyle? titleStyle;

  final TextStyle? subTitleStyle;

  final double? switcherScale;

  final Color? activeSwitcherColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (leading != null) ...[
          leading!,
          const Gap(18),
        ],
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: titleStyle ??
                    AppTypography.label(context).bMedium100!.copyWith(
                          fontSize: 16,
                        ),
              ),
              if (subTitle != null) ...[
                const Gap(2),
                Text(
                  subTitle!,
                  style: subTitleStyle ??
                      AppTypography.body(context).bSmall!.copyWith(
                            fontSize: 12.5,
                            color: NeutralColors.disabledBackGroundColor,
                          ),
                ),
              ]
            ],
          ),
        ),
        AppGapsM2.m,
        AppSwitcher(
          onChanged: onChanged,
          value: selected,
          scale: switcherScale != null ? switcherScale : null,
          activeSwitcherColor: activeSwitcherColor,
        )
      ],
    );
  }
}
