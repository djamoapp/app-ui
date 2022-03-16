import 'package:app_ui/core_components/views/container/app_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:app_ui/core_components/views/title_label/title_with_label.dart';
import 'package:app_ui/design_tokens/iconography/app_icons.dart';

import '../../../design_tokens/colors/interface_colors.dart';
import '../../../design_tokens/colors/neutral_colors.dart';
import '../../../design_tokens/typography/typography.dart';

class AppVaultTargetTracker extends StatelessWidget {
  const AppVaultTargetTracker(
      {Key? key,
      required this.balance,
      required this.limitAmount,
      required this.amountFormatter,
      required this.endDate,
      this.dateFormatter})
      : super(key: key);

  final double balance;

  final double limitAmount;

  final NumberFormat amountFormatter;

  final DateTime endDate;

  final DateFormat? dateFormatter;

  @override
  Widget build(BuildContext context) {
    double percentage = (balance * 100) / limitAmount;
    return AppContainer(
      child: Column(
        children: [
          AppTitleWithLabel(
            title: "${percentage.ceil()}% atteint",
            label:
                "${amountFormatter.format(balance)}/${amountFormatter.format(limitAmount)}",
          ),
          const Gap(16),
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
                value: percentage / 100,
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(
                    InterfaceColors.action.defaultColor!),
              ),
            ),
          ),
          const Gap(16),
          AppTitleWithLabel(
            title: "Echéance",
            trailing: Row(
              children: [
                const Icon(
                  AppIcons.calendar,
                  size: 14,
                  color: NeutralColors.disabledTextColor,
                ),
                const Gap(5),
                Text(
                  (dateFormatter ?? DateFormat("dd/MM/y")).format(endDate),
                  style: AppTypography.label!.small!
                      .copyWith(color: NeutralColors.disabledTextColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
