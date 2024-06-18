import 'package:app_ui_m2/core_components/views/container/app_container.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_spacings.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../design_tokens/colors/neutral_colors.dart';
import '../../../design_tokens/layout_and_spacing/app_gaps.dart';

class AnalyticsGauge extends StatelessWidget {
  const AnalyticsGauge({
    Key? key,
    required this.tag,
    required this.amount,
    required this.progress,
    required this.progressLabel,
    required this.progressColor,
  }) : super(key: key);

  final Widget tag;

  final String amount;

  final double progress;

  final String progressLabel;

  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      borderRadius: BorderRadius.circular(8),
      padding: EdgeInsets.all(AppSpacings.s),
      color: InterfaceColors.action.backGroundColor,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                tag,
                AppGapsM2.xs,
                Text(
                  amount,
                  style: AppTypography.body(context).bSmall,
                ),
              ],
            ),
          ),
          CircularPercentIndicator(
            radius: 20,
            lineWidth: 4,
            percent: progress,
            backgroundColor: NeutralColors.neutral200,
            animation: true,
            reverse: true,
            progressColor: progressColor,
            center: Text(
              progressLabel,
              style: AppTypography.body(context).bSmall!.copyWith(
                    color: progressColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
