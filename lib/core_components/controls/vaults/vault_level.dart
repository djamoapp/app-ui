import 'package:app_ui_m2/core_components/views/container/app_container.dart';
import 'package:app_ui_m2/core_components/views/progress_indicator/progress_indicator.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

///
/// if you use titleBuilder instead of title parameter,
/// the default typo of title is :
/// AppTypography.label!.bSmall!.copyWith(
///    fontSize: 14,
///    color: NeutralColors.disabledBackGroundColor,
/// )
///
class AppVaultLevel extends StatelessWidget {
  const AppVaultLevel({
    Key? key,
    this.title = "Label",
    required this.amount,
    required this.leading,
    required this.level,
    required this.subTitle,
    this.trailing,
    this.progressbarColor,
    this.titleColor,
    this.titleBuilder,
    this.subTitleBuilder,
  }) : super(key: key);

  final String title;

  final String amount;

  final Widget leading;

  final double level;

  final String subTitle;

  final Widget? trailing;

  final Color? progressbarColor;

  final Color? titleColor;

  final Widget? titleBuilder;

  final Widget Function(BuildContext)? subTitleBuilder;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 16,
        right: 16,
      ),
      child: Row(
        children: [
          leading,
          const Gap(18),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (titleBuilder != null)
                            titleBuilder!
                          else
                            Text(
                              title,
                              style: AppTypography.label!.bSmall!.copyWith(
                                fontSize: 14,
                                color: titleColor ??
                                    NeutralColors.disabledBackGroundColor,
                              ),
                            ),
                          AppGaps.xs,
                          Text(
                            amount,
                            style: AppTypography.label!.bMedium100!.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing ?? Container(),
                  ],
                ),
                AppGaps.s,
                AppProgressIndicator(
                  level: level,
                  progressColor: progressbarColor,
                  height: 4,
                ),
                AppGaps.xs,
                if (subTitleBuilder != null) ...[
                  subTitleBuilder!.call(context),
                ] else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        subTitle,
                        style: AppTypography.label!.bSmall!.copyWith(
                          fontSize: 10.5,
                          color: NeutralColors.bordersHoverColor,
                        ),
                      ),
                    ],
                  )
                ],
              ],
            ),
          )
        ],
      ),
    );
  }
}
