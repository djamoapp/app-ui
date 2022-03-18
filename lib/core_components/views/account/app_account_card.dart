import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppAccountCard extends StatelessWidget {
  const AppAccountCard({
    Key? key,
    required this.leading,
    required this.trailing,
    required this.balance,
    required this.title,
    this.color,
    this.borderRadius,
  }) : super(key: key);

  final Widget leading;

  final Widget trailing;

  final String balance;

  final String title;

  final Color? color;

  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      color: color,
      borderRadius: borderRadius,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                leading,
                AppGaps.m,
                Text(
                  title,
                  style: AppTypography.label!.bMedium100!
                      .copyWith(color: NeutralColors.disabledBackGroundColor),
                ),
                Text(
                  balance,
                  style: AppTypography.title!.bMedium200,
                ),
              ],
            ),
          ),
          Expanded(
            child: trailing,
          )
        ],
      ),
    );
  }
}
