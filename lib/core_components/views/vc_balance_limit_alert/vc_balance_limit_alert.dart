import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppVCBalanceLimitAlert extends StatelessWidget {
  const AppVCBalanceLimitAlert(
      {Key? key,
      this.title,
      this.subTitle,
      this.buttonLabel,
      this.value = 100000,
      this.maxValue = 2000000,
      this.limit = 200000,
      this.onButtonTap,
      required this.formatter})
      : super(key: key);

  final String? title;

  final String? subTitle;

  final String? buttonLabel;

  final double value;

  final double maxValue;

  final double limit;

  final Function()? onButtonTap;

  final NumberFormat formatter;

  @override
  Widget build(BuildContext context) {
    double percentage = value / maxValue;
    double percentageToLimit = value / limit;
    double percentageLimitToMaxValue = limit / maxValue;

    return AppContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title ?? "Plafond Limité à 200.000 F CFA",
            style: t.AppTypography.title!.bMedium100,
          ),
          Text(
            subTitle ?? "Commandez une carte physique pour augmenter la limite",
            style: t.AppTypography.body!.bMedium100!
                .copyWith(color: NeutralColors.disabledTextColor),
          ),
          AppSpacing.m,
          LayoutBuilder(
            builder: (ctx, constraint) => Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 8,
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
                      value: percentage,
                      backgroundColor: Colors.transparent,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          percentageToLimit <= 0.5
                              ? InterfaceColors.success.defaultColor!
                              : percentageToLimit > 0.5 &&
                                      percentageToLimit <= 0.75
                                  ? InterfaceColors.alert.defaultColor!
                                  : InterfaceColors.error.defaultColor!),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: constraint.maxWidth * percentageLimitToMaxValue,
                    ),
                    height: 16,
                    width: 2,
                    decoration: const BoxDecoration(
                      color: NeutralColors.formBordersColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AppSpacing.xs,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                formatter.format(value),
                style: t.AppTypography.body!.bMedium100!.copyWith(
                  color: percentageToLimit <= 0.5
                      ? InterfaceColors.success.defaultColor
                      : percentageToLimit > 0.5 && percentageToLimit <= 0.75
                          ? InterfaceColors.alert.defaultColor
                          : InterfaceColors.error.defaultColor,
                ),
              ),
              Text(
                formatter.format(maxValue),
                style: t.AppTypography.body!.bMedium100!
                    .copyWith(color: Colors.black),
              )
            ],
          ),
          AppSpacing.xl,
          PrimaryCTA(
            label: "Commander une carte physique",
            onPressed: onButtonTap,
          ),
        ],
      ),
    );
  }
}
