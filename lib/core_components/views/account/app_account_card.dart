import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppAccountCard extends StatelessWidget {
  const AppAccountCard(
      {Key? key,
      required this.image,
      required this.trailing,
      required this.balance,
      required this.title,
      required this.formatter})
      : super(key: key);

  final Widget image;

  final Widget trailing;

  final double balance;

  final String title;

  final NumberFormat formatter;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                image,
                AppSpacing.m,
                Text(
                  title,
                  style: AppTypography.label!.bMedium100!
                      .copyWith(color: NeutralColors.disabledBackGroundColor),
                ),
                Text(
                  formatter.format(balance),
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
