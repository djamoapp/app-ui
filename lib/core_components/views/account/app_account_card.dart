import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';

class AppAccountCard extends StatelessWidget {
  const AppAccountCard({
    Key? key,
    required this.icon,
    required this.trailing,
    required this.balance,
    required this.title,
    this.color,
    this.borderRadius,
    this.padding = const EdgeInsets.all(24),
    this.enableCountUp = false,
    this.countUpBegin = 0.0,
    this.counterUpEnd,
    this.balanceTextStyle,
    this.counterDuration = const Duration(seconds: 5),
    this.counterSeparator = ' ',
  }) : super(key: key);

  final Widget icon;

  final Widget trailing;

  final String balance;

  final String title;

  final Color? color;

  final BorderRadius? borderRadius;

  final EdgeInsetsGeometry? padding;

  final bool enableCountUp;

  final double countUpBegin;

  final double? counterUpEnd;

  final Duration counterDuration;

  final String counterSeparator;

  final TextStyle? balanceTextStyle;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: padding != null ? padding : null,
      color: color,
      borderRadius: borderRadius,
      child: Column(
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTypography.label!.bMedium100!.copyWith(
                          color: NeutralColors.disabledBackGroundColor),
                    ),
                    this.enableCountUp
                        ? Countup(
                            begin: countUpBegin,
                            end: counterUpEnd ??
                                double.parse(
                                  balance.replaceAll(".", ""),
                                ),
                            duration: counterDuration,
                            separator: counterSeparator,
                            style: balanceTextStyle ??
                                AppTypography.title!.bMedium200,
                            suffix: " $kDeviseSymbol",
                          )
                        : Text(
                            balance,
                            style: balanceTextStyle ??
                                AppTypography.title!.bMedium200,
                          ),
                  ],
                ),
              ),
              Expanded(
                child: icon,
              )
            ],
          ),
          AppGaps.m,
          trailing,
        ],
      ),
    );
  }
}
