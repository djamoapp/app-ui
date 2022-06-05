import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:app_ui/core_components/views/progress_indicator/progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/core_components/views/title_label/title_with_label.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';
import '../../../design_tokens/colors/neutral_colors.dart';
import '../../../design_tokens/typography/typography.dart';

class AppVaultTargetTracker extends StatelessWidget {
  const AppVaultTargetTracker({
    Key? key,
    required this.title,
    required this.label,
    required this.level,
    required this.endDate,
    required this.endDateTitle,
    this.progressbarColor,
    this.bottom,
  }) : super(key: key);

  final String title;

  final String label;

  final String endDateTitle;

  final String endDate;

  final double level;

  final Color? progressbarColor;

  final Widget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        children: [
          AppTitleWithLabel(
            title: title,
            label: label,
          ),
          const Gap(16),
          AppProgressIndicator(
            height: 8,
            level: level,
            progressColor: progressbarColor,
          ),
          const Gap(16),
          AppTitleWithLabel(
            title: endDateTitle,
            trailing: Row(
              children: [
                const Icon(
                  AppIcons.calendar,
                  size: 14,
                  color: NeutralColors.disabledTextColor,
                ),
                const Gap(5),
                Text(
                  endDate,
                  style: AppTypography.body!.bTiny!.copyWith(
                    color: NeutralColors.disabledTextColor,
                  ),
                ),
              ],
            ),
          ),
          if (bottom != null) bottom!,
        ],
      ),
    );
  }
}
