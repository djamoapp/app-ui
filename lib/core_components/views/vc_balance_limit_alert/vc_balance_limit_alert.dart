import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppVCBalanceLimitAlert extends StatelessWidget {
  const AppVCBalanceLimitAlert({
    Key? key,
    this.title,
    this.subTitle,
    this.buttonLabel,
    this.onButtonTap,
    required this.level,
    required this.balance,
    required this.maxAmount,
    required this.cursorPosition,
  }) : super(key: key);

  final String? title;

  final String? subTitle;

  final String? buttonLabel;

  final double level;

  final double cursorPosition;

  final String balance;

  final String maxAmount;

  final void Function()? onButtonTap;

  @override
  Widget build(BuildContext context) {
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
          AppGaps.m,
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
                      value: level,
                      backgroundColor: Colors.transparent,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        level <= 0.5
                            ? InterfaceColors.success.defaultColor!
                            : level > 0.5 && level <= 0.75
                                ? InterfaceColors.alert.defaultColor!
                                : InterfaceColors.error.defaultColor!,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: constraint.maxWidth * cursorPosition,
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
          AppGaps.xs,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                balance,
                style: t.AppTypography.body!.bMedium100!.copyWith(
                  color: level <= 0.5
                      ? InterfaceColors.success.defaultColor!
                      : level > 0.5 && level <= 0.75
                          ? InterfaceColors.alert.defaultColor!
                          : InterfaceColors.error.defaultColor!,
                ),
              ),
              Text(
                maxAmount,
                style: t.AppTypography.body!.bMedium100!
                    .copyWith(color: Colors.black),
              )
            ],
          ),
          AppGaps.xl,
          PrimaryCTA(
            label: buttonLabel ?? "Commander une carte physique",
            onPressed: onButtonTap,
          ),
        ],
      ),
    );
  }
}
