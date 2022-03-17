import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import '../../../design_tokens/colors/interface_colors.dart';

class AppVaultLevel extends StatelessWidget {
  const AppVaultLevel({
    Key? key,
    this.title = "Label",
    required this.balance,
    required this.amount,
    required this.leading,
    required this.level,
    required this.subTitle,
  }) : super(key: key);

  final String title;

  final String balance;

  final String amount;

  final Widget leading;

  final double level;

  final String subTitle;

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
                Text(
                  title,
                  style: AppTypography.label!.bSmall!.copyWith(
                      fontSize: 14,
                      color: NeutralColors.disabledBackGroundColor),
                ),
                AppGaps.xs,
                Text(
                  amount,
                  style: AppTypography.label!.bMedium100!.copyWith(
                    fontSize: 16,
                  ),
                ),
                AppGaps.s,
                Container(
                  height: 4,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: NeutralColors.formBordersColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: LinearProgressIndicator(
                      value: level,
                      backgroundColor: Colors.transparent,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          InterfaceColors.action.defaultColor!),
                    ),
                  ),
                ),
                AppGaps.xs,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      subTitle,
                      style: AppTypography.label!.bSmall!.copyWith(
                          fontSize: 10.5,
                          color: NeutralColors.bordersHoverColor),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
