import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:app_ui/core_components/views/white_box/app_white_box.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:app_ui/design_tokens/typography/typography.dart';

import '../../../design_tokens/colors/interface_colors.dart';
import '../../views/cached_network_image/app_cached_network_image.dart';

class AppVaultLevel extends StatelessWidget {
  const AppVaultLevel(
      {Key? key,
      this.label = "Label",
      this.balance = 50000,
      this.amount = 240000,
      required this.image,
      this.isLocalImage = false,
      required this.formatter})
      : super(key: key);

  final String label;

  final double balance;

  final double amount;

  final String image;

  final bool isLocalImage;

  final NumberFormat formatter;

  @override
  Widget build(BuildContext context) {
    double percentage = (balance * 100) / amount;

    return AppWhiteBox(
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 16,
        right: 16,
      ),
      child: Row(
        children: [
          if (isLocalImage)
            Image.asset(
              image,
              height: 30,
              width: 30,
            ),
          if (!isLocalImage)
            AppCachedNetworkImage(
              imageUrl: image,
              height: 30,
              width: 30,
            ),
          const Gap(18),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTypography.label!.bSmall!.copyWith(
                      fontSize: 14,
                      color: NeutralColors.disabledBackGroundColor),
                ),
                AppSpacing.xs,
                Text(
                  formatter.format(amount),
                  style: AppTypography.label!.bMedium100!.copyWith(
                    fontSize: 16,
                  ),
                ),
                AppSpacing.s,
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
                      value: percentage / 100,
                      backgroundColor: Colors.transparent,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          InterfaceColors.action.defaultColor!),
                    ),
                  ),
                ),
                AppSpacing.xs,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${percentage.ceil()}% enregistrés (${formatter.format(balance)})",
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
