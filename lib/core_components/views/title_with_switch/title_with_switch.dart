import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/core_components/controls/switcher/switcher.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';

class AppTitleWithSwitch extends StatelessWidget {
  const AppTitleWithSwitch(
      {Key? key,
      this.selected = false,
      required this.onChanged,
      this.title = "Title",
      this.subTitle,
      this.leading})
      : super(key: key);

  final String title;

  final Widget? leading;

  final String? subTitle;

  final bool selected;

  final void Function(bool value) onChanged;

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
                style: AppTypography.label!.bMedium200!.copyWith(
                  fontSize: 16,
                ),
              ),
              if (subTitle != null) ...[
                const Gap(2),
                Text(
                  subTitle!,
                  style: AppTypography.body!.bSmall!.copyWith(
                    fontSize: 12.5,
                    color: NeutralColors.disabledBackGroundColor,
                  ),
                ),
              ]
            ],
          ),
        ),
        const Gap(18),
        AppSwitcher(
          onChanged: onChanged,
          value: selected,
        )
      ],
    );
  }
}
